#!/bin/bash

# remove old packages
# rm -rf old_packages

helm dependency update charts/package
helm package nouveau charts/package
helm repo index . --url https://github.com/wklover14/helm-charts-datascience

git add .
git commit -m "maj"
git push