#!/bin/sh

branch=master

echo "info: fetching upstream content from branch: $branch"
echo

# -L = follow redirects
curl -L -o $branch.zip https://github.com/redhat-documentation/community-contribution-template/archive/$branch.zip

# -o = overwrite
unzip -o $branch.zip community-contribution-template-$branch/*

cp -r community-contribution-template-$branch/* .

rm -rf community-contribution-template-$branch

rm $branch.zip

