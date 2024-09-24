variable "common_tags" {
    type = map
    default = {
        Terraform = "true"
        Environment = "Dev"
        Project = "expense"
    }
}
variable "environment" {
   default =  "dev"
}

variable  "project_name" {
  type        = string
  default = "expense"
}
variable "public_subnet_cidrs" {
  default = ["10.0.1.0/24","10.0.2.0/24"    ]
}
variable "private_subnet_cidrs" {
  default = ["10.0.11.0/24","10.0.12.0/24"    ]
}
variable "database_subnet_cidrs" {
  default = ["10.0.21.0/24","10.0.22.0/24"    ]
}
variable "is_peering_required" {
   default = false
}