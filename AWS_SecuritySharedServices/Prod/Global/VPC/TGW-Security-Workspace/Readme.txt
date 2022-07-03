There is a bug in terraform that generates 3 changes, even though there are no changes.


An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # aws_ec2_transit_gateway_vpc_attachment.tg_vpc_att1 will be updated in-place
  ~ resource "aws_ec2_transit_gateway_vpc_attachment" "tg_vpc_att1" {
        id                                              = "tgw-attach-041b3cf7645df612b"
        tags                                            = {
            "Application" = "Security Shared Services"
            "CostCenter"  = "3517"
            "ManagedBy"   = "Terraform"
            "Name"        = "Security-vpc-attach1"
            "Owner"       = "Network"
        }
      ~ transit_gateway_default_route_table_association = true -> false
      ~ transit_gateway_default_route_table_propagation = true -> false
        # (7 unchanged attributes hidden)
    }

  # aws_ec2_transit_gateway_vpc_attachment.tg_vpc_att2 will be updated in-place
  ~ resource "aws_ec2_transit_gateway_vpc_attachment" "tg_vpc_att2" {
        id                                              = "tgw-attach-0f3ffef0bffe528a5"
        tags                                            = {
            "Application" = "Security Shared Services"
            "CostCenter"  = "3517"
            "ManagedBy"   = "Terraform"
            "Name"        = "Security-vpc-attach2"
            "Owner"       = "Network"
        }
      ~ transit_gateway_default_route_table_association = true -> false
      ~ transit_gateway_default_route_table_propagation = true -> false
        # (7 unchanged attributes hidden)
    }

  # aws_ec2_transit_gateway_vpc_attachment.tg_vpc_att3 will be updated in-place
  ~ resource "aws_ec2_transit_gateway_vpc_attachment" "tg_vpc_att3" {
        id                                              = "tgw-attach-098e62bf0213e5725"
        tags                                            = {
            "Application" = "Security Shared Services"
            "CostCenter"  = "3517"
            "ManagedBy"   = "Terraform"
            "Name"        = "Security-vpc-attach3"
            "Owner"       = "Network"
        }
      ~ transit_gateway_default_route_table_association = true -> false
      ~ transit_gateway_default_route_table_propagation = true -> false
        # (7 unchanged attributes hidden)
    }

Plan: 0 to add, 3 to change, 0 to destroy.