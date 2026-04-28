# terraform-project
output of tf plan and tf apply  
TERMINAL SE DIRECT PASTE HAI NOT CHAT GPT 



      + metadata_options (known after apply)

      + network_interfaces {
          + security_groups = (known after apply)
        }

      + tag_specifications {
          + resource_type = "instance"
          + tags          = {
              + "Name" = "sakshamwebserver"
            }
        }
    }

  # module.ec2.aws_security_group.ec2sgroup will be created
  + resource "aws_security_group" "ec2sgroup" {
      + arn                    = (known after apply)
      + description            = "Managed by Terraform"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
                # (1 unchanged attribute hidden)
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = []
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = (known after apply)
              + self             = false
              + to_port          = 80
                # (1 unchanged attribute hidden)
            },
        ]
      + name                   = "ec2-sg"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "sakshamec2sg"
        }
      + tags_all               = {
          + "Name" = "sakshamec2sg"
        }
      + vpc_id                 = (known after apply)
    }

  # module.vpc.aws_eip.natelasticip will be created
  + resource "aws_eip" "natelasticip" {
      + allocation_id        = (known after apply)
      + arn                  = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = "vpc"
      + id                   = (known after apply)
      + instance             = (known after apply)
      + ipam_pool_id         = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + ptr_record           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags                 = {
          + "Name" = "sakshamnat-eip"
        }
      + tags_all             = {
          + "Name" = "sakshamnat-eip"
        }
      + vpc                  = (known after apply)
    }

  # module.vpc.aws_internet_gateway.igw will be created
  + resource "aws_internet_gateway" "igw" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name" = "saksham-igw"
        }
      + tags_all = {
          + "Name" = "saksham-igw"
        }
      + vpc_id   = (known after apply)
    }

  # module.vpc.aws_nat_gateway.nat will be created
  + resource "aws_nat_gateway" "nat" {
      + allocation_id                      = (known after apply)
      + association_id                     = (known after apply)
      + connectivity_type                  = "public"
      + id                                 = (known after apply)
      + network_interface_id               = (known after apply)
      + private_ip                         = (known after apply)
      + public_ip                          = (known after apply)
      + secondary_private_ip_address_count = (known after apply)
      + secondary_private_ip_addresses     = (known after apply)
      + subnet_id                          = (known after apply)
      + tags                               = {
          + "Name" = "sakshamnategateway"
        }
      + tags_all                           = {
          + "Name" = "sakshamnategateway"
        }
    }

  # module.vpc.aws_route_table.private will be created
  + resource "aws_route_table" "private" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + cidr_block                 = "0.0.0.0/0"
              + nat_gateway_id             = (known after apply)
                # (11 unchanged attributes hidden)
            },
        ]
      + tags             = {
          + "Name" = "saksham-private-rt"
        }
      + tags_all         = {
          + "Name" = "saksham-private-rt"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table.public will be created
  + resource "aws_route_table" "public" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + cidr_block                 = "0.0.0.0/0"
              + gateway_id                 = (known after apply)
                # (11 unchanged attributes hidden)
            },
        ]
      + tags             = {
          + "Name" = "saksham-public-rt"
        }
      + tags_all         = {
          + "Name" = "saksham-public-rt"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[0] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[1] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[0] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[1] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_subnet.private[0] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "ap-south-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.3.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "sakshamprivatesubnet"
        }
      + tags_all                                       = {
          + "Name" = "sakshamprivatesubnet"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[1] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "ap-south-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.4.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "sakshamprivatesubnet"
        }
      + tags_all                                       = {
          + "Name" = "sakshamprivatesubnet"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[0] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "ap-south-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "sakshampublicsubnet"
        }
      + tags_all                                       = {
          + "Name" = "sakshampublicsubnet"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[1] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "ap-south-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "sakshampublicsubnet"
        }
      + tags_all                                       = {
          + "Name" = "sakshampublicsubnet"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_vpc.mainvpc will be created
  + resource "aws_vpc" "mainvpc" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = (known after apply)
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "saksham-vpc"
        }
      + tags_all                             = {
          + "Name" = "saksham-vpc"
        }
    }

Plan: 21 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + albdnsname       = (known after apply)
  + privatesubnetids = [
      + (known after apply),
      + (known after apply),
    ]
  + publicsubnetids  = [
      + (known after apply),
      + (known after apply),
    ]
  + vpcid            = (known after apply)

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
saksham@saksham:~/terraformLearnings/DevopsAssignment/terraform-project$ tf apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.alb.aws_lb.main will be created
  + resource "aws_lb" "main" {
      + arn                                                          = (known after apply)
      + arn_suffix                                                   = (known after apply)
      + client_keep_alive                                            = 3600
      + desync_mitigation_mode                                       = "defensive"
      + dns_name                                                     = (known after apply)
      + drop_invalid_header_fields                                   = false
      + enable_deletion_protection                                   = false
      + enable_http2                                                 = true
      + enable_tls_version_and_cipher_suite_headers                  = false
      + enable_waf_fail_open                                         = false
      + enable_xff_client_port                                       = false
      + enable_zonal_shift                                           = false
      + enforce_security_group_inbound_rules_on_private_link_traffic = (known after apply)
      + id                                                           = (known after apply)
      + idle_timeout                                                 = 60
      + internal                                                     = (known after apply)
      + ip_address_type                                              = (known after apply)
      + load_balancer_type                                           = "application"
      + name                                                         = "sakshammainalb"
      + name_prefix                                                  = (known after apply)
      + preserve_host_header                                         = false
      + security_groups                                              = (known after apply)
      + subnets                                                      = (known after apply)
      + tags                                                         = {
          + "Name" = "sakshamalbmain"
        }
      + tags_all                                                     = {
          + "Name" = "sakshamalbmain"
        }
      + vpc_id                                                       = (known after apply)
      + xff_header_processing_mode                                   = "append"
      + zone_id                                                      = (known after apply)

      + subnet_mapping (known after apply)
    }

  # module.alb.aws_lb_listener.http will be created
  + resource "aws_lb_listener" "http" {
      + arn                                                                   = (known after apply)
      + id                                                                    = (known after apply)
      + load_balancer_arn                                                     = (known after apply)
      + port                                                                  = 80
      + protocol                                                              = "HTTP"
      + routing_http_request_x_amzn_mtls_clientcert_header_name               = (known after apply)
      + routing_http_request_x_amzn_mtls_clientcert_issuer_header_name        = (known after apply)
      + routing_http_request_x_amzn_mtls_clientcert_leaf_header_name          = (known after apply)
      + routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name = (known after apply)
      + routing_http_request_x_amzn_mtls_clientcert_subject_header_name       = (known after apply)
      + routing_http_request_x_amzn_mtls_clientcert_validity_header_name      = (known after apply)
      + routing_http_request_x_amzn_tls_cipher_suite_header_name              = (known after apply)
      + routing_http_request_x_amzn_tls_version_header_name                   = (known after apply)
      + routing_http_response_access_control_allow_credentials_header_value   = (known after apply)
      + routing_http_response_access_control_allow_headers_header_value       = (known after apply)
      + routing_http_response_access_control_allow_methods_header_value       = (known after apply)
      + routing_http_response_access_control_allow_origin_header_value        = (known after apply)
      + routing_http_response_access_control_expose_headers_header_value      = (known after apply)
      + routing_http_response_access_control_max_age_header_value             = (known after apply)
      + routing_http_response_content_security_policy_header_value            = (known after apply)
      + routing_http_response_server_enabled                                  = (known after apply)
      + routing_http_response_strict_transport_security_header_value          = (known after apply)
      + routing_http_response_x_content_type_options_header_value             = (known after apply)
      + routing_http_response_x_frame_options_header_value                    = (known after apply)
      + ssl_policy                                                            = (known after apply)
      + tags_all                                                              = (known after apply)
      + tcp_idle_timeout_seconds                                              = (known after apply)

      + default_action {
          + order            = (known after apply)
          + target_group_arn = (known after apply)
          + type             = "forward"
        }

      + mutual_authentication (known after apply)
    }

  # module.alb.aws_lb_target_group.ec2tgroup will be created
  + resource "aws_lb_target_group" "ec2tgroup" {
      + arn                                = (known after apply)
      + arn_suffix                         = (known after apply)
      + connection_termination             = (known after apply)
      + deregistration_delay               = "300"
      + id                                 = (known after apply)
      + ip_address_type                    = (known after apply)
      + lambda_multi_value_headers_enabled = false
      + load_balancer_arns                 = (known after apply)
      + load_balancing_algorithm_type      = (known after apply)
      + load_balancing_anomaly_mitigation  = (known after apply)
      + load_balancing_cross_zone_enabled  = (known after apply)
      + name                               = "sakshamec2tgrou"
      + name_prefix                        = (known after apply)
      + port                               = 80
      + preserve_client_ip                 = (known after apply)
      + protocol                           = "HTTP"
      + protocol_version                   = (known after apply)
      + proxy_protocol_v2                  = false
      + slow_start                         = 0
      + tags                               = {
          + "Name" = "sakshamec2tg"
        }
      + tags_all                           = {
          + "Name" = "sakshamec2tg"
        }
      + target_type                        = "instance"
      + vpc_id                             = (known after apply)

      + health_check {
          + enabled             = true
          + healthy_threshold   = 2
          + interval            = 30
          + matcher             = (known after apply)
          + path                = "/"
          + port                = "traffic-port"
          + protocol            = "HTTP"
          + timeout             = 5
          + unhealthy_threshold = 2
        }

      + stickiness (known after apply)

      + target_failover (known after apply)

      + target_group_health (known after apply)

      + target_health_state (known after apply)
    }

  # module.alb.aws_security_group.albgroup1 will be created
  + resource "aws_security_group" "albgroup1" {
      + arn                    = (known after apply)
      + description            = "Managed by Terraform"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
                # (1 unchanged attribute hidden)
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
                # (1 unchanged attribute hidden)
            },
        ]
      + name                   = "albgroup"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "sakshamalbsgroup"
        }
      + tags_all               = {
          + "Name" = "sakshamalbsgroup"
        }
      + vpc_id                 = (known after apply)
    }

  # module.ec2.aws_autoscaling_group.webtestec2 will be created
  + resource "aws_autoscaling_group" "webtestec2" {
      + arn                              = (known after apply)
      + availability_zones               = (known after apply)
      + default_cooldown                 = (known after apply)
      + desired_capacity                 = 2
      + force_delete                     = false
      + force_delete_warm_pool           = false
      + health_check_grace_period        = 300
      + health_check_type                = (known after apply)
      + id                               = (known after apply)
      + ignore_failed_scaling_activities = false
      + load_balancers                   = (known after apply)
      + max_size                         = 2
      + metrics_granularity              = "1Minute"
      + min_size                         = 2
      + name                             = "sakshamasg"
      + name_prefix                      = (known after apply)
      + predicted_capacity               = (known after apply)
      + protect_from_scale_in            = false
      + service_linked_role_arn          = (known after apply)
      + target_group_arns                = (known after apply)
      + vpc_zone_identifier              = (known after apply)
      + wait_for_capacity_timeout        = "10m"
      + warm_pool_size                   = (known after apply)

      + availability_zone_distribution (known after apply)

      + capacity_reservation_specification (known after apply)

      + launch_template {
          + id      = (known after apply)
          + name    = (known after apply)
          + version = "$Latest"
        }

      + mixed_instances_policy (known after apply)

      + tag {
          + key                 = "Name"
          + propagate_at_launch = true
          + value               = "sakshamasginstance"
        }

      + traffic_source (known after apply)
    }

  # module.ec2.aws_launch_template.webtestec2 will be created
  + resource "aws_launch_template" "webtestec2" {
      + arn             = (known after apply)
      + default_version = (known after apply)
      + id              = (known after apply)
      + image_id        = "ami-0e12ffc2dd465f6e4"
      + instance_type   = "t2.micro"
      + latest_version  = (known after apply)
      + name            = (known after apply)
      + name_prefix     = (known after apply)
      + tags_all        = (known after apply)
      + user_data       = "IyEvYmluL2Jhc2gKeXVtIHVwZGF0ZSAteQp5dW0gaW5zdGFsbCAteSBodHRwZApzeXN0ZW1jdGwgc3RhcnQgaHR0cGQKc3lzdGVtY3RsIGVuYWJsZSBodHRwZAogICAgCmVjaG8gIjxoMT4gaGVsbG8gd29ybGQ8L2gyPiIgPiAvdmFyL3d3dy9odG1sL2luZGV4Lmh0bWwK"

      + metadata_options (known after apply)

      + network_interfaces {
          + security_groups = (known after apply)
        }

      + tag_specifications {
          + resource_type = "instance"
          + tags          = {
              + "Name" = "sakshamwebserver"
            }
        }
    }

  # module.ec2.aws_security_group.ec2sgroup will be created
  + resource "aws_security_group" "ec2sgroup" {
      + arn                    = (known after apply)
      + description            = "Managed by Terraform"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
                # (1 unchanged attribute hidden)
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = []
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = (known after apply)
              + self             = false
              + to_port          = 80
                # (1 unchanged attribute hidden)
            },
        ]
      + name                   = "ec2-sg"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "sakshamec2sg"
        }
      + tags_all               = {
          + "Name" = "sakshamec2sg"
        }
      + vpc_id                 = (known after apply)
    }

  # module.vpc.aws_eip.natelasticip will be created
  + resource "aws_eip" "natelasticip" {
      + allocation_id        = (known after apply)
      + arn                  = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = "vpc"
      + id                   = (known after apply)
      + instance             = (known after apply)
      + ipam_pool_id         = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + ptr_record           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags                 = {
          + "Name" = "sakshamnat-eip"
        }
      + tags_all             = {
          + "Name" = "sakshamnat-eip"
        }
      + vpc                  = (known after apply)
    }

  # module.vpc.aws_internet_gateway.igw will be created
  + resource "aws_internet_gateway" "igw" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name" = "saksham-igw"
        }
      + tags_all = {
          + "Name" = "saksham-igw"
        }
      + vpc_id   = (known after apply)
    }

  # module.vpc.aws_nat_gateway.nat will be created
  + resource "aws_nat_gateway" "nat" {
      + allocation_id                      = (known after apply)
      + association_id                     = (known after apply)
      + connectivity_type                  = "public"
      + id                                 = (known after apply)
      + network_interface_id               = (known after apply)
      + private_ip                         = (known after apply)
      + public_ip                          = (known after apply)
      + secondary_private_ip_address_count = (known after apply)
      + secondary_private_ip_addresses     = (known after apply)
      + subnet_id                          = (known after apply)
      + tags                               = {
          + "Name" = "sakshamnategateway"
        }
      + tags_all                           = {
          + "Name" = "sakshamnategateway"
        }
    }

  # module.vpc.aws_route_table.private will be created
  + resource "aws_route_table" "private" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + cidr_block                 = "0.0.0.0/0"
              + nat_gateway_id             = (known after apply)
                # (11 unchanged attributes hidden)
            },
        ]
      + tags             = {
          + "Name" = "saksham-private-rt"
        }
      + tags_all         = {
          + "Name" = "saksham-private-rt"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table.public will be created
  + resource "aws_route_table" "public" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + cidr_block                 = "0.0.0.0/0"
              + gateway_id                 = (known after apply)
                # (11 unchanged attributes hidden)
            },
        ]
      + tags             = {
          + "Name" = "saksham-public-rt"
        }
      + tags_all         = {
          + "Name" = "saksham-public-rt"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[0] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[1] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[0] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[1] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_subnet.private[0] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "ap-south-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.3.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "sakshamprivatesubnet"
        }
      + tags_all                                       = {
          + "Name" = "sakshamprivatesubnet"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[1] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "ap-south-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.4.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "sakshamprivatesubnet"
        }
      + tags_all                                       = {
          + "Name" = "sakshamprivatesubnet"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[0] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "ap-south-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "sakshampublicsubnet"
        }
      + tags_all                                       = {
          + "Name" = "sakshampublicsubnet"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[1] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "ap-south-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "sakshampublicsubnet"
        }
      + tags_all                                       = {
          + "Name" = "sakshampublicsubnet"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_vpc.mainvpc will be created
  + resource "aws_vpc" "mainvpc" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = (known after apply)
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "saksham-vpc"
        }
      + tags_all                             = {
          + "Name" = "saksham-vpc"
        }
    }

Plan: 21 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + albdnsname       = (known after apply)
  + privatesubnetids = [
      + (known after apply),
      + (known after apply),
    ]
  + publicsubnetids  = [
      + (known after apply),
      + (known after apply),
    ]
  + vpcid            = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

module.vpc.aws_eip.natelasticip: Creating...
module.vpc.aws_vpc.mainvpc: Creating...
module.vpc.aws_eip.natelasticip: Creation complete after 5s [id=eipalloc-0fb762c4e08c3805a]
module.vpc.aws_vpc.mainvpc: Creation complete after 5s [id=vpc-0a645acc744659a7c]
module.vpc.aws_internet_gateway.igw: Creating...
module.vpc.aws_subnet.public[1]: Creating...
module.vpc.aws_subnet.private[1]: Creating...
module.vpc.aws_subnet.public[0]: Creating...
module.vpc.aws_subnet.private[0]: Creating...
module.alb.aws_security_group.albgroup1: Creating...
module.alb.aws_lb_target_group.ec2tgroup: Creating...
module.vpc.aws_internet_gateway.igw: Creation complete after 1s [id=igw-0db1b39ee3d6754bf]
module.vpc.aws_route_table.public: Creating...
module.vpc.aws_subnet.private[0]: Creation complete after 1s [id=subnet-0c17b6095aeee2d78]
module.alb.aws_lb_target_group.ec2tgroup: Creation complete after 1s [id=arn:aws:elasticloadbalancing:ap-south-1:395310663713:targetgroup/sakshamec2tgrou/257064371bdde674]
module.vpc.aws_route_table.public: Creation complete after 1s [id=rtb-0b16ac54211c21afc]
module.alb.aws_security_group.albgroup1: Creation complete after 3s [id=sg-0f74236f09285c02a]
module.ec2.aws_security_group.ec2sgroup: Creating...
module.vpc.aws_subnet.private[1]: Creation complete after 4s [id=subnet-0a147f4a7fc3a9d14]
module.ec2.aws_security_group.ec2sgroup: Creation complete after 3s [id=sg-00a39f19a01089dd4]
module.ec2.aws_launch_template.webtestec2: Creating...
module.vpc.aws_subnet.public[1]: Still creating... [00m10s elapsed]
module.vpc.aws_subnet.public[0]: Still creating... [00m10s elapsed]
module.vpc.aws_subnet.public[1]: Creation complete after 11s [id=subnet-0d1733517baf50dc0]
module.vpc.aws_subnet.public[0]: Creation complete after 11s [id=subnet-099efac33ee4e5887]
module.vpc.aws_route_table_association.public[1]: Creating...
module.vpc.aws_route_table_association.public[0]: Creating...
module.vpc.aws_nat_gateway.nat: Creating...
module.alb.aws_lb.main: Creating...
module.vpc.aws_route_table_association.public[0]: Creation complete after 1s [id=rtbassoc-05ea97d70d79fa8e5]
module.ec2.aws_launch_template.webtestec2: Creation complete after 6s [id=lt-04ce289605eb96f61]
module.ec2.aws_autoscaling_group.webtestec2: Creating...
module.vpc.aws_route_table_association.public[1]: Creation complete after 1s [id=rtbassoc-09a60684d61d6f63b]
module.vpc.aws_nat_gateway.nat: Still creating... [00m10s elapsed]
module.alb.aws_lb.main: Still creating... [00m10s elapsed]
module.ec2.aws_autoscaling_group.webtestec2: Still creating... [00m10s elapsed]
module.ec2.aws_autoscaling_group.webtestec2: Creation complete after 16s [id=sakshamasg]
module.vpc.aws_nat_gateway.nat: Still creating... [00m20s elapsed]
module.alb.aws_lb.main: Still creating... [00m20s elapsed]
module.vpc.aws_nat_gateway.nat: Still creating... [00m30s elapsed]
module.alb.aws_lb.main: Still creating... [00m30s elapsed]
module.vpc.aws_nat_gateway.nat: Still creating... [00m40s elapsed]
module.alb.aws_lb.main: Still creating... [00m40s elapsed]
module.vpc.aws_nat_gateway.nat: Still creating... [00m50s elapsed]
module.alb.aws_lb.main: Still creating... [00m50s elapsed]
module.vpc.aws_nat_gateway.nat: Still creating... [01m00s elapsed]
module.alb.aws_lb.main: Still creating... [01m00s elapsed]
module.vpc.aws_nat_gateway.nat: Still creating... [01m10s elapsed]
module.alb.aws_lb.main: Still creating... [01m10s elapsed]
module.vpc.aws_nat_gateway.nat: Still creating... [01m20s elapsed]
module.alb.aws_lb.main: Still creating... [01m20s elapsed]
module.vpc.aws_nat_gateway.nat: Still creating... [01m30s elapsed]
module.alb.aws_lb.main: Still creating... [01m30s elapsed]
module.vpc.aws_nat_gateway.nat: Still creating... [01m40s elapsed]
module.alb.aws_lb.main: Still creating... [01m40s elapsed]
module.vpc.aws_nat_gateway.nat: Still creating... [01m50s elapsed]
module.alb.aws_lb.main: Still creating... [01m50s elapsed]
module.vpc.aws_nat_gateway.nat: Still creating... [02m00s elapsed]
module.alb.aws_lb.main: Still creating... [02m00s elapsed]
module.vpc.aws_nat_gateway.nat: Creation complete after 2m5s [id=nat-03346760c1493cd1c]
module.vpc.aws_route_table.private: Creating...
module.vpc.aws_route_table.private: Creation complete after 1s [id=rtb-05f01d3daafdc1a0c]
module.vpc.aws_route_table_association.private[0]: Creating...
module.vpc.aws_route_table_association.private[1]: Creating...
module.vpc.aws_route_table_association.private[1]: Creation complete after 0s [id=rtbassoc-0d1f8772a461b425c]
module.vpc.aws_route_table_association.private[0]: Creation complete after 0s [id=rtbassoc-0663173831a9ebe51]
module.alb.aws_lb.main: Still creating... [02m10s elapsed]
module.alb.aws_lb.main: Still creating... [02m20s elapsed]
module.alb.aws_lb.main: Still creating... [02m30s elapsed]
module.alb.aws_lb.main: Creation complete after 2m32s [id=arn:aws:elasticloadbalancing:ap-south-1:395310663713:loadbalancer/app/sakshammainalb/0889dd4584a9c063]
module.alb.aws_lb_listener.http: Creating...
module.alb.aws_lb_listener.http: Creation complete after 0s [id=arn:aws:elasticloadbalancing:ap-south-1:395310663713:listener/app/sakshammainalb/0889dd4584a9c063/bf66772e8257bf79]

Apply complete! Resources: 21 added, 0 changed, 0 destroyed.

Outputs:

albdnsname = "sakshammainalb-855147583.ap-south-1.elb.amazonaws.com"
privatesubnetids = [
  "subnet-0c17b6095aeee2d78",
  "subnet-0a147f4a7fc3a9d14",
]
publicsubnetids = [
  "subnet-099efac33ee4e5887",
  "subnet-0d1733517baf50dc0",
]
vpcid = "vpc-0a645acc744659a7c"