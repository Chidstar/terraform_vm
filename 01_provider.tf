provider "google" {
	credentials = "${file("~/.gcp/terraform_key.json")}"
	project = "hybrid-saga-214108"
	region = "europe-west2"
}
