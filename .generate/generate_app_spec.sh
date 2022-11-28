#!/bin/bash

helm template --release-name shiny ../base -f ../base/environments/development/values.yaml > ../base/environments/development/app-spec-dev.yaml
helm template --release-name shiny ../base -f ../base/environments/staging/values.yaml > ../base/environments/staging/app-spec-stage.yaml
helm template --release-name shiny ../base -f ../base/environments/production/values.yaml > ../base/environments/production/app-spec-prod.yaml

helm template --release-name shiny ../base-gitops-spec -f ../base/environments/development/values.yaml > ../base/environments/development/gitops-spec-dev.yaml
helm template --release-name shiny ../base-gitops-spec -f ../base/environments/staging/values.yaml > ../base/environments/staging/gitops-spec-stage.yaml
helm template --release-name shiny ../base-gitops-spec -f ../base/environments/production/values.yaml > ../base/environments/production/gitops-spec-prod.yaml
