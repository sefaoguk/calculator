
#!/bin/bash

echo "First is, login docker !"
echo $DOCKERHUB_WRİTE_PSW | docker login -u $DOCKERHUB_WRİTE_USR --password-stdin

echo "PUSHING CALCULATOR"
docker tag calculator-test:${BRANCH_NAME}_${BUILD_ID} geoanka/calculator-test:${BRANCH_NAME}_${BUILD_ID}
docker push geoanka/calculator-test:${BRANCH_NAME}_${BUILD_ID}
docker rmi geoanka/calculator-test:${BRANCH_NAME}_${BUILD_ID} 
docker rmi calculator-test:${BRANCH_NAME}_${BUILD_ID}
echo "PUSHED CALCULATOR"

echo "Always logout docker hub"
docker logout