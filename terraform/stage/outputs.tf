output "app_external_ip" {
  value = "${module.app.app_external_ip}"
}

output "balancer_external_ip" {
  value = "${module.balancer.balancer_external_ip}"
}
