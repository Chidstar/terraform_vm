variable "name" {
	type = "string"
	default = "default"
}

variable "machine_type" {
	type = "string"
	default = "f1-micro"
}

variable "image" {
	type = "string"
	default = "centos-7"
}

variable "zone" {
	type = "string"
	default = "europe-west2-c"
}

variable "network" {
	default = "default"
}

variable "sshUser" {
	default = "terraform"
}

variable "pubkeydir" {
	default = "~/.ssh/id_rsa.pub"
}

variable "prikeydir" {
	default = "~/.ssh/id_rsa"
}

variable "scripts" {
	default = [ 
		"/home/vagrant/terraform_vm/scripts/python_server",
		"home/vagrant/terraform_vm/scripts/git_inst"
	]
}
	
