.PHONY = jenkins pyserver

VAR_DIR = "variables"

init:
	@terraform init

pyserver:
	@terraform apply -auto-approve -var-file=${VAR_DIR}/pyserver.tfvars

jenkins:
	@terraform apply -auto-approve -var-file=${VAR_DIR}/jenkins.tfvars
