.PHONY: dev install



-include .env



install:
	@npm i



dev:
	@PATH=node_modules/.bin:$(PATH) \
	parse-dashboard --dev \
		--appId ${PARSE_DASHBOARD_APP_ID} \
		--masterKey ${PARSE_DASHBOARD_MASTER_KEY} \
		--serverURL ${PARSE_DASHBOARD_SERVER_URL} \
		--appName ${PARSE_DASHBOARD_APP_NAME}
