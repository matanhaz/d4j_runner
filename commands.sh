#!/bin/bash
PROJECT=$1
IFS="-" read -ra parts <<< "$PROJECT"
PROJECT_FOLDER="${parts[0]}"
DEFECT_PATH=$2
JAVA18_PATH=$3
BUG_ID=$4
OUTPUT="./Projects"

mkdir "${OUTPUT}/${PROJECT_FOLDER}"
mkdir "Input"
mkdir "Input/${PROJECT_FOLDER}"
mkdir "repos"
mkdir "ground_truth"
mkdir "ground_truth/${PROJECT_FOLDER}"
if [ "$PROJECT" = "Chart" ]; then
	./extract_projects.sh Chart 1 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 2 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 3 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 4 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 5 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 6 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 7 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 8 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 9 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 10 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 11 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 12 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 13 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 14 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 15 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 16 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 17 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 18 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 19 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 20 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 21 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 22 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 23 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 24 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 25 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Chart 26 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi
if [ "$PROJECT" = "Codec" ]; then
	git clone https://github.com/apache/commons-codec.git repos/Codec
	./extract_projects.sh Codec 1 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Codec 2 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Codec 3 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Codec 4 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Codec 5 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Codec 6 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Codec 7 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Codec 8 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Codec 9 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Codec 10 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Codec 11 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Codec 12 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Codec 13 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Codec 14 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Codec 15 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Codec 16 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Codec 17 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Codec 18 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi
if [ "$PROJECT" = "Collections-1" ]; then
	git clone https://github.com/apache/commons-collections.git repos/Collections
	./extract_projects.sh Collections 25 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Collections 26 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi
if [ "$PROJECT" = "Collections-2" ]; then
	git clone https://github.com/apache/commons-collections.git repos/Collections
	./extract_projects.sh Collections 27 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Collections 28 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi
if [ "$PROJECT" = "Compress-1" ]; then
	git clone https://github.com/apache/commons-compress.git repos/Compress
	./extract_projects.sh Compress 1 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 2 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 3 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 4 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 5 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 6 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 7 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 8 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 9 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 10 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 11 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 12 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
 	wait
fi
 if [ "$PROJECT" = "Compress-2" ]; then
 	git clone https://github.com/apache/commons-compress.git repos/Compress
	./extract_projects.sh Compress 13 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 14 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 15 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 16 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 17 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 18 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 19 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 20 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 21 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 22 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 23 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 24 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi
if [ "$PROJECT" = "Compress-3" ]; then
	git clone https://github.com/apache/commons-compress.git repos/Compress
	./extract_projects.sh Compress 25 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 26 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 27 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 28 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 29 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 30 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 31 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 32 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 33 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 34 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 35 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
 	wait
fi
if [ "$PROJECT" = "Compress-4" ]; then
	git clone https://github.com/apache/commons-compress.git repos/Compress
	./extract_projects.sh Compress 36 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 37 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 38 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 39 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 40 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 41 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi
if [ "$PROJECT" = "Compress-5" ]; then
	git clone https://github.com/apache/commons-compress.git repos/Compress
	./extract_projects.sh Compress 42 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 43 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 44 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 45 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 46 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Compress 47 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi
if [ "$PROJECT" = "Csv" ]; then
	git clone https://github.com/apache/commons-csv.git repos/Csv
	./extract_projects.sh Csv 1 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Csv 2 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Csv 3 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Csv 4 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Csv 5 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Csv 6 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Csv 7 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Csv 8 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Csv 9 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Csv 10 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Csv 11 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Csv 12 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Csv 13 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Csv 14 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Csv 15 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Csv 16 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi
if [ "$PROJECT" = "Gson" ]; then

	./extract_projects.sh Gson 1 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Gson 2 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Gson 3 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Gson 4 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Gson 5 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Gson 6 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Gson 7 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Gson 8 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Gson 9 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Gson 10 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Gson 11 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Gson 12 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Gson 13 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Gson 14 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Gson 15 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Gson 16 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Gson 17 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Gson 18 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi
if [ "$PROJECT" = "JacksonCore" ]; then
	./extract_projects.sh JacksonCore 1 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 2 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 3 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 4 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 5 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 6 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 7 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 8 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 9 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 10 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 11 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 12 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 13 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 14 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 15 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 16 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 17 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 18 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 19 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 20 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 21 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 22 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 23 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 24 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 25 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonCore 26 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi
if [ "$PROJECT" = "JacksonXml" ]; then
	./extract_projects.sh JacksonXml 1 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonXml 2 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonXml 3 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonXml 4 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonXml 5 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JacksonXml 6 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi
if [ "$PROJECT" = "Jsoup" ]; then
	./extract_projects.sh Jsoup 1 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 2 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 3 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 4 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 5 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 6 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 7 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 8 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 9 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 10 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 11 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 12 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 13 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 14 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 15 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 16 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 17 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 18 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 19 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 20 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 21 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 22 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 23 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 24 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 25 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 26 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 27 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 28 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 29 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 30 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 31 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 32 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 33 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 34 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 35 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 36 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 37 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 38 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 39 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 40 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 41 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 42 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 43 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 44 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 45 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 46 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 47 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 48 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 49 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 50 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 51 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 52 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 53 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 54 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 55 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 56 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 57 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 58 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 59 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 60 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 61 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 62 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 63 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 64 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 65 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 66 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 67 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 68 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 69 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 70 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 71 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 72 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 73 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 74 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 75 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 76 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 77 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 78 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 79 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 80 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 81 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 82 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 83 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 84 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 85 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 86 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 87 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 88 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 89 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 90 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 91 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 92 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Jsoup 93 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi
if [ "$PROJECT" = "JxPath" ]; then
	git clone https://github.com/apache/commons-jxpath.git repos/JxPath
	./extract_projects.sh JxPath 1 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JxPath 2 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JxPath 3 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JxPath 4 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JxPath 5 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JxPath 6 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JxPath 7 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JxPath 8 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JxPath 9 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JxPath 10 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JxPath 11 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JxPath 12 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JxPath 13 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JxPath 14 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JxPath 15 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JxPath 16 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JxPath 17 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JxPath 18 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JxPath 19 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JxPath 20 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JxPath 21 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh JxPath 22 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi
if [ "$PROJECT" = "Lang-1" ]; then
	git clone https://github.com/apache/commons-lang.git repos/Lang
	./extract_projects.sh Lang 1 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 3 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 4 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 5 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 6 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 7 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 8 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 9 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 10 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 11 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 12 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi
 if [ "$PROJECT" = "Lang-2" ]; then
	 git clone https://github.com/apache/commons-lang.git repos/Lang
	./extract_projects.sh Lang 13 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 14 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 15 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 16 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 17 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 18 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 19 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 20 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 21 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 22 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 23 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 24 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 25 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi
if [ "$PROJECT" = "Lang-3" ]; then
	git clone https://github.com/apache/commons-lang.git repos/Lang
	./extract_projects.sh Lang 26 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 27 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 28 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 29 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 30 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 31 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 32 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 33 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 34 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 35 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 36 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 37 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
  	wait
fi
 if [ "$PROJECT" = "Lang-4" ]; then
 	git clone https://github.com/apache/commons-lang.git repos/Lang
	./extract_projects.sh Lang 38 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 39 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 40 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 41 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 42 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 43 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 44 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 45 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 46 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 47 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 48 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 49 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
 	wait
fi
if [ "$PROJECT" = "Lang-5" ]; then
	git clone https://github.com/apache/commons-lang.git repos/Lang
	./extract_projects.sh Lang 50 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 51 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 52 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 53 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 54 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 55 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 56 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 57 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 58 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
 	wait
fi
if [ "$PROJECT" = "Lang-6" ]; then
	git clone https://github.com/apache/commons-lang.git repos/Lang
	./extract_projects.sh Lang 59 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 60 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 61 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 62 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 63 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 64 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Lang 65 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi
if [ "$PROJECT" = "Mockito" ]; then
	./extract_projects.sh Mockito 1 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 2 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 3 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 4 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 5 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 6 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 7 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 8 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 9 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 10 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 11 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 12 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 13 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 14 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 15 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 16 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 17 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 18 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 19 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 20 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 21 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 22 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 23 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 24 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 25 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 26 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 27 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 28 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 29 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 30 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 31 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 32 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 33 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 34 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 35 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 36 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 37 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Mockito 38 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi
if [ "$PROJECT" = "Time" ]; then
	./extract_projects.sh Time 1 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 2 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 3 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 4 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 5 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 6 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 7 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 8 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 9 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 10 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 11 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 12 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 13 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 14 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 15 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 16 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 17 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 18 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 19 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 20 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 22 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 23 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 24 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 25 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 26 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Time 27 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi
if [ "$PROJECT" = "Cli-1" ]; then
	git clone https://github.com/apache/commons-cli.git repos/Cli
	./extract_projects.sh Cli 1 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 2 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 3 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 4 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 5 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 7 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 8 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 9 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 10 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
  	wait
fi
if [ "$PROJECT" = "Cli-2" ]; then
	git clone https://github.com/apache/commons-cli.git repos/Cli
	./extract_projects.sh Cli 11 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 12 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 13 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 14 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 15 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 16 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 17 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 18 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 19 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 20 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
 	wait
fi
if [ "$PROJECT" = "Cli-3" ]; then
	git clone https://github.com/apache/commons-cli.git repos/Cli
	./extract_projects.sh Cli 21 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 22 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 23 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 24 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 25 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 26 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 27 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 28 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 29 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 30 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
 	wait
fi
if [ "$PROJECT" = "Cli-4" ]; then
	git clone https://github.com/apache/commons-cli.git repos/Cli
	./extract_projects.sh Cli 31 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 32 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 33 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 34 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 35 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 36 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 37 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 38 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 39 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Cli 40 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi

if [ "$PROJECT" = "Math" ]; then
	git clone https://github.com/apache/commons-math.git repos/Math
	./extract_projects.sh Math $BUG_ID $OUTPUT $DEFECT_PATH $JAVA18_PATH
fi

if [ "$PROJECT" = "Math-1" ]; then
	git clone https://github.com/apache/commons-math.git repos/Math
	./extract_projects.sh Math 1 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 2 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 3 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 4 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 5 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 6 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
 	wait
fi
if [ "$PROJECT" = "Math-2" ]; then
	git clone https://github.com/apache/commons-math.git repos/Math
	./extract_projects.sh Math 7 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 8 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 9 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 10 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 11 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 12 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
 	wait
fi
if [ "$PROJECT" = "Math-3" ]; then
	git clone https://github.com/apache/commons-math.git repos/Math
	./extract_projects.sh Math 13 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 14 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 15 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 16 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 17 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 18 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 19 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 20 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 21 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 22 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 23 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 24 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 25 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi
if [ "$PROJECT" = "Math-5" ]; then
	git clone https://github.com/apache/commons-math.git repos/Math
	./extract_projects.sh Math 26 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 27 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 28 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 29 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 30 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 31 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 32 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 33 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 34 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 35 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 36 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 37 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 38 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 39 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
 	wait
fi
if [ "$PROJECT" = "Math-7" ]; then
	git clone https://github.com/apache/commons-math.git repos/Math
	./extract_projects.sh Math 40 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 41 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 42 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 43 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 44 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 45 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 46 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 47 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 48 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 49 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 50 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 51 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 52 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi
if [ "$PROJECT" = "Math-9" ]; then
	git clone https://github.com/apache/commons-math.git repos/Math
	./extract_projects.sh Math 53 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 54 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 55 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 56 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 57 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 58 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 59 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 60 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 61 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 62 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 63 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 64 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
 	wait
fi
if [ "$PROJECT" = "Math-11" ]; then
	git clone https://github.com/apache/commons-math.git repos/Math
	./extract_projects.sh Math 65 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 66 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 67 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 68 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 69 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 70 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 71 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 72 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 73 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 74 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 75 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 76 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi
if [ "$PROJECT" = "Math-13" ]; then
	git clone https://github.com/apache/commons-math.git repos/Math
	./extract_projects.sh Math 77 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 78 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 79 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 80 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 81 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 82 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 83 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 84 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 85 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 86 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 87 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 88 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 89 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 90 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 91 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 92 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
 	wait
fi
if [ "$PROJECT" = "Math-15" ]; then
	git clone https://github.com/apache/commons-math.git repos/Math
	./extract_projects.sh Math 93 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 94 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 95 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 96 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 97 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 98 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 99 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 100 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 101 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 102 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 103 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 104 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 105 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	./extract_projects.sh Math 106 $OUTPUT $DEFECT_PATH $JAVA18_PATH &
	wait
fi


