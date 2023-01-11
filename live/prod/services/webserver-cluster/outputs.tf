output "alb_dns_name" {
  value       = module.webserver_cluster.alb_dns_name
  description = "The domain name of the load balancer"
}

output "upper_names" {
  value = [for name in var.names : upper(name) if length(name) < 5]
}

output "bios" {
  value = [for name, role in var.hero_thousand_faces : "${name} is the ${role}"]
}

output "upper_roles" {
  value = { for name, role in var.hero_thousand_faces : upper(name) => upper(role) }
}

output "for_directive" {
  value = "%{for name in var.names}${name}, %{endfor}"
}

output "for_directive_index" {
  value = "%{for i, name in var.names}(${i}) ${name}, %{endfor}"
}
