#!/bin/bash

cat config/token.txt | gh auth login --with-token
cat config/repos.txt | xargs -I {} gh pr list --repo {} --state 'open'
