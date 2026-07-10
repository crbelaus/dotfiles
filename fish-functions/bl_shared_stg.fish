function bl_shared_stg --description "Set Kubernetes context to Bluelabs Shared staging"
  kubectl config use-context gke_staging-3035f414_europe-west1_staging-b $argv
end
