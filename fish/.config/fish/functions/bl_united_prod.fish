function bl_united_prod --description "Set Kubernetes context to Bluelabs United prod"
  kubectl config use-context gke_united-betr-prod-96eb_europe-west1_gke-s-united-betr-prod-euw1-1 $argv
end
