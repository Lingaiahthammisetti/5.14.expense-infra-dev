variable "project_name" {
    default = "expense"
}
variable "environment" {
  default =  "dev"
}
variable "common_tags" {
  default =  {
     Project = "expense"
     Environment = "dev"
     Terraform = true
    # Component ="backend"
  }
}
variable "zone_name" {
  default = "lingaiah.online"
  }
  variable "zone_id" {
    default = "Z02607591HJSW9R8IJ1PW"
  }