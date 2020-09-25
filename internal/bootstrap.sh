#!/bin/bash

read -p 'describe project name by kebab-case: ' project
echo "replacing project name to $project ..."
git grep -l 'rails-api-template' -- ':!internal' \
  | xargs sed -i '' -e "s/rails-api-template/$project/g"
git grep -l 'rails_api_template' -- ':!internal' \
  | xargs sed -i '' -e "s/rails_api_template/$(echo $project | tr '-' '_')/g"
