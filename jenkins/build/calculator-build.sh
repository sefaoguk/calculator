

cd calculator
echo "BUILDING CALCULATOR ..."
docker build -t calculator-test:${BRANCH_NAME}_${BUILD_ID} . || exit 1
echo "BUILDED CALCULATOR ..."
