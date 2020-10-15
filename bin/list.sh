#!/bin/bash

gh auth login --with-token < config/token.txt
cat config/repos.txt | xargs -I {} gh pr list --repo {} --state 'open'
