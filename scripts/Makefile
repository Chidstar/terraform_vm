.PHONY = jenkins

install_jenkins:
	@docker run -d --name jenkins -p 8080:8080 jenkins:alpine

remove_jenkins: 
	@docker stop jenkins
	@docker rm jenkins

	

