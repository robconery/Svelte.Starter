DEPLOY="azd deploy"
SETUP="azd provision"
TEARDOWN="azd down"

AS_DEPLOY="./Deployment/azure/zip.sh"
APP_SERVICE="./Deployment/Azure/app_service.sh"

zip:
	source $(AS_DEPLOY)

app_service:
	source $(APP_SERVICE)

.phony: zip app_service

deploy:
	source $(DEPLOY)

setup:
	source $(SETUP)

teardown:
	source $(TEARDOWN)