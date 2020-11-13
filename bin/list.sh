#!/bin/bash
cat config/repos.txt | xargs -I {} gh pr list --repo {} --state 'open'
