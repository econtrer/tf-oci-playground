data "oci_core_images" "test_images" {
  #Required
  compartment_id = oci_identity_compartment.tf-compartment.id

  #Optional
  # display_name = var.image_display_name
  operating_system = var.image_operating_system
  operating_system_version = var.image_operating_system_version
  shape = var.instance_shape
}

data "oci_identity_availability_domain" "ad" {
  compartment_id = var.tenancy_ocid
  ad_number      = 1
}

# resource "oci_core_instance" "free_instance0" {
#   availability_domain = data.oci_identity_availability_domain.ad.name
#   compartment_id      = oci_identity_compartment.tf-compartment.id
#   display_name        = "freeInstance0"
#   shape               = var.instance_shape

#   shape_config {
#     ocpus = var.instance_ocpus
#     memory_in_gbs = var.instance_shape_config_memory_in_gbs
#   }

#   create_vnic_details {
#     subnet_id        = oci_core_subnet.test_subnet.id
#     display_name     = "primaryvnic"
#     assign_public_ip = true
#     hostname_label   = "freeinstance0"
#   }

#   source_details {
#     source_type = "image"
#     source_id   = lookup(data.oci_core_images.test_images.images[0], "id")
#     boot_volume_size_in_gbs = 150
#   }

#   metadata = {
#     ssh_authorized_keys = var.ssh_public_key
#   }
# }

# resource "tls_private_key" "compute_ssh_key" {
#   algorithm = "RSA"
#   rsa_bits  = 2048
# }

# output "generated_private_key_pem" {
#   value     = (var.ssh_public_key != "") ? var.ssh_public_key : tls_private_key.compute_ssh_key.private_key_pem
#   sensitive = true
# }
