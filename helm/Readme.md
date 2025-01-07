# CoMPAS Helm deployment

## Deploy to specific stage

export STAGE_NAME=local
helmfile apply --namespace ${STAGE_NAME}--validate -f compas.yaml
