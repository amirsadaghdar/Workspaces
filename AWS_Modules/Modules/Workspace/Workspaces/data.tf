# Data
data "aws_availability_zones" "available" {}

/*data "aws_directory_service_directory" "directory" {
  directory_id = aws_directory_service_directory.${var.directoryname}.id
}*/

data "aws_workspaces_bundle" "value_windows_10" {
  bundle_id = "wsb-bh8rsxt14"
}