#!/bin/bash

helm template --release-name shiny ../base -f ../environments/development/values.yaml > ../environments/development/app-spec-dev.yaml
helm template --release-name shiny ../base -f ../environments/staging/values.yaml > ../environments/staging/app-spec-stage.yaml
helm template --release-name shiny ../base -f ../environments/production/values.yaml > ../environments/production/app-spec-prod.yaml

helm template --release-name shiny ../base-gitops-spec -f ../environments/development/values.yaml > ../environments/development/gitops-spec-dev.yaml
helm template --release-name shiny ../base-gitops-spec -f ../environments/staging/values.yaml > ../environments/staging/gitops-spec-stage.yaml
helm template --release-name shiny ../base-gitops-spec -f ../environments/production/values.yaml > ../environments/production/gitops-spec-prod.yaml
