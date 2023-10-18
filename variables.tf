variable "name" {
  description = "Unique name for the ECR repository."
  type        = string
}

variable "encryption_kms_key_arn" {
  description = "KMS key to use for encrypting the ECR repository. If left empty the default AWS managed key is used."
  type        = string
  default     = null
}

variable "image_tag_mutability" {
  description = "Set to true to enable tag mutability. Defaults to false."
  type        = bool
  default     = false
}

variable "scan_on_push" {
  description = "Scan pushed images for vulnerabilities."
  type        = bool
  default     = true
}

variable "num_keep_images" {
  description = "Keep the X most recent images."
  type        = number
  default     = 100
}
