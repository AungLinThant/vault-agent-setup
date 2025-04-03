pid_file = "./pidfile"

vault {
   address = "http://0.0.0.0:8200"
   tls_skip_verify = true
}

auto_auth {
   method {
      type = "token_file"
      config = {
         token_file_path = "/Users/mac/Desktop/hellocloud-native-box/lab-environment/vault-agent-demo/vault-agent-checkout/checkout-team-vault-token"
      }
   }
   sink "file" {
      config = {
            path = "/Users/mac/Desktop/hellocloud-native-box/lab-environment/vault-agent-demo/vault-agent-checkout/vault-token-via-agent"
      }
   }
}

template {
   source      = "/Users/mac/Desktop/hellocloud-native-box/lab-environment/vault-agent-demo/vault-agent-checkout/checkout-team-json.tmpl"
   destination = "/Users/mac/Desktop/hellocloud-native-box/lab-environment/vault-agent-demo/vault-agent-checkout/checkout-team-secrets.json"
}

template_config {
  static_secret_render_interval = "10s"
}