function bl_shared_prod --description "Set Kubernetes context to Bluelabs Shared prod"
  kubectl config use-context gke_production-6a177414_europe-west1_production-a $argv
end
