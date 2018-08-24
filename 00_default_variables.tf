variable "projectid" {
	default = ""
}

variable "credentials" {
	default = "~/.gcp/terraform_key.json"
}

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

variable "allowed_port" {
	default = [
	  "9000"
	  ]
}
variable "tags" {
	default = [
	  "defaulttag"
	  ]
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
	  ""
	  ]
}
	
variable "packages" {
	default = [
	  "wget",
	  "unzip"
	]
}

variable "package_manager" {
	default = "yum"
}

variable "install_packages" {
	default = {
	  "yum" = "sudo yum install -y"
	}
}
