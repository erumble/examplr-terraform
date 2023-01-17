
output "service_to_target_group_arn_map"{
  value = zipmap(module.rules[*].service, module.rules[*].target_group_arn)
}

output "listener_arn"{
  value = concat(aws_alb_listener.http, aws_alb_listener.https)[0]
}