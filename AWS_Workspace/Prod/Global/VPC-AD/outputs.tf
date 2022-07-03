# Outputs Employee VPC

output "vpc_employee_vpc_id" {
  value = module.vpc_employee.aws_vpc_id
}

output "vpc_employee_subnet1_id" {
  value = module.vpc_employee.aws_subnet1_id
}

output "vpc_employee_subnet2_id" {
  value = module.vpc_employee.aws_subnet2_id
}

output "vpc_employee_subnet3_id" {
  value = module.vpc_employee.aws_subnet3_id
}

output "vpc_employee_subnet4_id" {
  value = module.vpc_employee.aws_subnet4_id
}

# Outputs Contractor VPC

output "vpc_contractor1_vpc_id" {
  value = module.vpc_contractor1.aws_vpc_id
}

output "vpc_contractor1_subnet1_id" {
  value = module.vpc_contractor1.aws_subnet1_id
}

output "vpc_contractor1_subnet2_id" {
  value = module.vpc_contractor1.aws_subnet2_id
}

output "vpc_contractor1_subnet3_id" {
  value = module.vpc_contractor1.aws_subnet3_id
}

output "vpc_contractor1_subnet4_id" {
  value = module.vpc_contractor1.aws_subnet4_id
}