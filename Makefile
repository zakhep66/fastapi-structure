DC = docker compose
EXEC = docker exec -it
LOGS = docker logs
ENV = --env-file .env
APP_FILE = docker_compose/app.yaml
APP_CONTAINER = main-app

.PHONY: app
app:
	${DC} -f ${APP_FILE} ${ENV} up --build -d

.PHONY: app-logs
app-logs:
	${LOGS} ${APP_CONTAINER} -f

.PHONY: app-down
app-down:
	${DC} -f ${APP_FILE} down

.PHONY: app-bash
app-bash:
	${EXEC} ${APP_CONTAINER} bash