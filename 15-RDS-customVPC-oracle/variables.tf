# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY
# variable "AWS_ACCESS_KEY" {}
# variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "eu-west-1"
}

variable "vpc_id" {
  default = "vpc-08fa685ade1f01fbe"
}

# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# Given these are credentials, security of the values should be considered.
# ---------------------------------------------------------------------------------------------------------------------

variable "username" {
  default     = "root"
  description = "Master username of the DB"
}

variable "password" {
  default     = "EnterYourPassword1!"
  description = "Master password of the DB"
}

variable "database_name" {
  default     = "oracledb"
  description = "Name of the database to be created"
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "name" {
  description = "Name of the database"
  default     = "terratest-oracle-example-nowage"
}

variable "engine_name" {
  description = "Name of the database engine"
  default     = "oracle-se2"
}

variable "family" {
  description = "Family of the database"
  default     = "oracle-se2-12.1"
}

variable "port" {
  description = "Port which the database should run on"
  default     = 1512
}

variable "major_engine_version" {
  description = "MAJOR.MINOR version of the DB engine"
  default     = "12.1"
}

variable "engine_version" {
  default     = "12.1.0.2.v22"
  description = "Version of the database to be launched"
}

variable "allocated_storage" {
  default     = 20
  description = "Disk space to be allocated to the DB instance"
}

variable "license_model" {
  default     = "license-included"
  description = "License model of the DB instance"
}
