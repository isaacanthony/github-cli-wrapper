build:
	@docker build -t github-cli-wrapper .

run:
	@if ! [ $(cmd) ]; then echo 'Error: Must set cmd variable.' && exit 1; fi
	@docker run \
		--name github-cli-wrapper \
		--rm \
		-e GITHUB_TOKEN=$$(cat config/token.txt) \
		-it \
		-v $(PWD)/bin:/src/bin \
		-v $(PWD)/config:/src/config \
		github-cli-wrapper bin/$(cmd).sh

list:
	@make -s run cmd=list
