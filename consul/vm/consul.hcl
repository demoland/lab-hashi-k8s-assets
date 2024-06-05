datacenter = "thefed"
data_dir   = "/data/consul"
log_level  = "INFO"
node_name  = "dfed-mini"
server     = true

# Add bind address for the consul server
bind_addr = "{{ GetPrivateInterfaces | include \"network\" \"192.168.86.0/24\" | attr \"address\" }}"


connect {
  enabled = true
}

ui_config {
  enabled = true
}

acl {
  enabled        = true
  default_policy = "deny"
}
