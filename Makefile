build:
	@docker build -t github-cli-wrapper .

run:
	@docker run \
		--name github-cli-wrapper \
		--rm \
		-e GITHUB_TOKEN=$$(cat config/token.txt) \
		-it \
		-v $(PWD)/bin:/src/bin \
		-v $(PWD)/config:/src/config \
		github-cli-wrapper $(cmd)

list:
	@make -s run cmd=bin/list.sh
