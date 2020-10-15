# github-cli-wrapper
GitHub CLI Wrapper

## Setup
* `config/repos.txt`: List of all relevant `owner/repo`s, one per line.
* `config/token.txt`: GitHub access token. The required scopes for the token are "repo" and "read:org".

## Usage
* `make build`: Builds Docker image.
* `make list`: Lists open PRs in `config/repos.txt`.
