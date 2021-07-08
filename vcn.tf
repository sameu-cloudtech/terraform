variable "compartment_ocid" {}
variable "region" {}

provider "oci" {
  region = "${var.region}"
}

resource "oci_core_virtual_network" "vcndemo" {
  cidr_block = "10.0.0.0/16"
  dns_label = "vcndemo"
  compartment_id = "${var.compartment_ocid}"
  display_name = "vcndemo"
}
