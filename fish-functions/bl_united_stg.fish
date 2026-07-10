function bl_united_stg --description "Set Kubernetes context to Bluelabs United staging"
  kubectl config use-context gke_youwin-betr-stage-c7b6_europe-west1_gke-s-youwin-betr-stage-euw1-1 $argv
end
