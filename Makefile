build:
	@docker build -t github-cli-wrapper .

list:
	@docker run \
		--name github-cli-wrapper \
		--rm \
		-it \
		-v $(PWD)/bin:/src/bin \
		-v $(PWD)/config:/src/config \
		github-cli-wrapper bin/list.sh
