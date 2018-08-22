resource "google_compute_instance" "default" {
	name = "${var.name}"
	machine_type = "${var.machine_type}"
	zone = "${var.zone}"
	boot_disk {
		initialize_params {
			image = "${var.image}"
		}
	}
	network_interface {
		network = "${var.network}"
		access_config {
		# Ephemeral IP
		}
	}
	metadata {
		sshKeys = "${var.sshUser}:${file("${var.pubkeydir}")}"
	}
	provisioner "remote-exec" {
		connection = {
			type = "ssh"
			user = "${var.sshUser}"
			private_key = "${file("${var.prikeydir}")}"
		}
		scripts = [
			"${var.scripts}"
		]
	}

}
