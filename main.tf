variable "tenancy_ocid" {
}

variable "user_ocid" {
  default = ""
}

# variable "fingerprint" {
# }

variable "private_key_path" {
  default = ""
}

variable "ssh_public_key" {
  default = ""
}

variable "compartment_ocid" {
}

variable "region" {
}

variable "compartment_name" {
  default = "hytale"
}

variable "instance_shape" {
  default = "VM.Standard.A1.Flex" # Always free instance shape
}

variable "instance_ocpus" {
  default = 4 # Max OCPUs for always free instance
}

variable "instance_shape_config_memory_in_gbs" {
  default = 24 # Max memory for always free instance
}

variable "ssh_public_key" {
}

# Instance image details
variable "image_operating_system" {
  default = "Oracle Linux"
}

variable "image_operating_system_version" {
  default = "9"
}
