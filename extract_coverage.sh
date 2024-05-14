#!/bin/bash
PROJECT=$1
VERSION=$2
DIRECTORY=$3/$1/$2
OUT_DIRECTORY=$4/$1/$2

ALL_TESTS_PATH="${OUT_DIRECTORY}/all_tests.txt"
ALL_COMPONENTS_PATH="${OUT_DIRECTORY}/all_components.txt"
TRACES_PATH="${OUT_DIRECTORY}/traces"
mkdir -p "${TRACES_PATH}"

echo "Extracting $PROJECT - $VERSION";
discord --webhook-url="$WEBHOOK" --text "$PROJECT,$VERSION,STARTED"
while IFS= read -r test; do
    formatted_test=$(echo "$test" | sed 's/\ /_/g');
    receiving_test=$(echo "$test" | sed 's/\ /::/g');
    echo "Getting coverage for test ${test}";
    defects4j coverage -w "${DIRECTORY}" -t "${receiving_test}" -i ${ALL_COMPONENTS_PATH};
    mkdir -p ${TRACES_PATH};
    cp "${DIRECTORY}/coverage.xml" "${TRACES_PATH}/${formatted_test}.xml"
done < ${ALL_TESTS_PATH};

echo "$PROJECT - $VERSION - Finished" >> coverage_summary.txt

WEBHOOK="https://discord.com/api/webhooks/1196095574106193980/PHoyhJY6t7mV70AUB47SKFsJcq9vTEEuDAZTu3OHQnuW1Uqfc-nqzuEczcrUecrxmntC"
discord --webhook-url="$WEBHOOK" --text "$PROJECT,$VERSION,FINISHED"
