#!/bin/bash
PROJECT=$1
VERSION=$2
OUTPUT=$3
INPUT="Input"
DEFECT_DIR_PATH=$4
DEFECT_PATH="${DEFECT_DIR_PATH}/defects4j"
JAVA18_PATH=$5

# checkout and get repo folder
mkdir  "${OUTPUT}/${PROJECT}/${VERSION}"
mkdir  "${INPUT}/${PROJECT}/${VERSION}"
mkdir "ground_truth/${PROJECT}/${VERSION}"

echo 1
$DEFECT_PATH checkout -p "${PROJECT}" -v "${VERSION}b" -w "${INPUT}/${PROJECT}/${VERSION}"
echo 2



# extract tests
./extract_tests.sh $PROJECT $VERSION $INPUT $OUTPUT $DEFECT_PATH

echo 3

# extract all components
DIRECTORY=$3/$1/$2
OUTPUT_PATH="${DIRECTORY}/all_components.txt"
INPUT_PATH="${DIRECTORY}/repo/src"

"/opt/hostedtoolcache/Java_Adopt_jdk/17.0.11-9/x64/bin/java" -jar extractClass.jar -i $INPUT_PATH -o $OUTPUT_PATH

echo 4

# extracting ground truth
cp $DEFECT_DIR_PATH/../projects/$PROJECT/patches/$VERSION.src.patch ground_truth/$PROJECT/$VERSION/patch.txt
python ./ground_truth.py $PROJECT $VERSION $DEFECT_PATH
cp ground_truth/$PROJECT/$VERSION/ground_truth.txt $DIRECTORY/ground_truth.txt
echo 5

# extracting traces
./extract_coverage.sh $PROJECT $VERSION $INPUT $OUTPUT $DEFECT_PATH
echo 6
rm -rf "${INPUT}/${PROJECT}/${VERSION}"
