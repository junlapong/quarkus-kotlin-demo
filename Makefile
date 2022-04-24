dev:
	@mvn quarkus:dev

build:
	@mvn clean package -Dquarkus.package.type=uber-jar -DskipTests
	@echo "done !!!"

run:
	@java -jar target/*-runner.jar; exit 0

noproxy:
	@unset HTTP_PROXY; unset HTTPS_PROXY
