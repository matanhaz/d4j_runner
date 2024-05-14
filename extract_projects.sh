PROJECT=$1
VERSION=$2
OUTPUT=$3

# checkout and get repo folder
mkdir  "${OUTPUT}/${PROJECT}"
mkdir  "${OUTPUT}/${PROJECT}/${VERSION}"
echo 1
defects4j checkout -p "${PROJECT}" -v "${VERSION}b" -w "${OUTPUT}/${PROJECT}/${VERSION}"
echo 2


# extract all components
DIRECTORY=$3/$1/$2
OUTPUT_PATH="${DIRECTORY}/all_components.txt"
INPUT_PATH="${DIRECTORY}/repo/src"

java -jar extractClass.jar -i $INPUT_PATH -o $OUTPUT_PATH
echo 3

# extract tests
./extract_tests.sh $PROJECT $VERSION $OUTPUT $OUTPUT
echo 4

# extracting ground truth
python ./ground_truth.py $PROJECT $VERSION
cp ground_truth/$PROJECT/$VERSION/ground_truth.txt projects/$PROJECT/$VERSION
echo 5

# extracting traces
./extract_coverage.sh $PROJECT $VERSION $OUTPUT $OUTPUT
echo 6
