variable "Eth0PrivateIpAddress" {
	default = "10.0.10.10"
	type = string
}

variable "Eth0SecurityGroupName" {
	type = string
}

variable "Eth0SubnetName" {
	type = string
}

variable "ImageName" {
	default = "ixnetwork-app-9-30"
	type = string
}

variable "InstanceId" {
	default = "app"
	type = string
}

variable "InstanceProfile" {
	default = "bx2-4x16"
	type = string
	validation {
		condition = can(regex("bx2-8x32", var.InstanceProfile)) || can(regex("bx2-4x16", var.InstanceProfile))
		error_message = "InstanceProfile must be one of (bx2-8x32 | bx2-4x16) sizes."
	}
}

variable "SshKeyName" {
	type = string
}

variable "Tag" {
	default = "ixnetwork-web"
	type = string
}

variable "UserEmailTag" {
	type = string
	description = "Email address tag of user creating the stack"
	validation {
		condition = length(var.UserEmailTag) >= 14
		error_message = "UserEmailTag minimum length must be >= 14."
	}
}

variable "UserLoginTag" {
	type = string
	description = "Login ID tag of user creating the stack"
	validation {
		condition = length(var.UserLoginTag) >= 4
		error_message = "UserLoginTag minimum length must be >= 4."
	}
}

variable "UserProjectTag" {
	default = "example"
	type = string
}

variable "Version" {
	default = "9-30"
	type = string
}

variable "VpcName" {
	type = string
}

variable "Zone" {
	default = "us-south-1"
	type = string
}