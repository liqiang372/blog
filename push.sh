#!/bin/bash
function timestamp {
  date +"%m/%d/2017 %H:%M:%S"
}
DEPLOY_FOLDER='./.deploy-folder'
ct=$(timestamp)
cp -r ./build/* $DEPLOY_FOLDER
cd $DEPLOY_FOLDER
git add .
git commit -m "$ct"
git push origin master