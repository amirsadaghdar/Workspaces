# Outputs Workspace AD Connector ID

output "adconnector_contractor1_id" {
  value = module.adconnector_contractor1.workspace_directory_id
}

output "adconnector_employee_id" {
  value = module.adconnector_employee.workspace_directory_id
}

output "adconnector_cryptocurrency_id" {
  value = module.adconnector_cryptocurrency.workspace_directory_id
}