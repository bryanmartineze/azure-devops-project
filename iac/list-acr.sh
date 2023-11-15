#!/bin/bash
acrName=azuredevopsacrjocgia2hywuxy.azurecr.io
repoName=dadjokes

az acr manifest list-metadata \
  --registry $acrName \
  --name $repoName \
  --query '[:].[digest, imageSize, tags[:]]' \
  -o table