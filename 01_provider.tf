provider "google" {
	credentials = "${file("/vagrant/hybrid-saga-214108-d7002f950ddc.json")}"
	project = "hybrid-saga-214108"
	region = "europe-west2"
}
