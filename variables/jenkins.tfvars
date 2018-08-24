name = "jenkins"
image = "chid-centos-1535111245"
packages = [
	"wget",
	"git",
	"unzip",
	"vim",
	"java"
]
tags = [
	"jenkins-firewall"
]
allowed_port = [
	"8080"
]
scripts = [
	"scripts/install_jenkins"
	]

