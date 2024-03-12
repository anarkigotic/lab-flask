# desplegar la configuracion
gcloud deployment-manager deployments create my-cloud-function-deployment --config cloudfunction.yaml
# Crea un bucket de Cloud Storage:
gsutil mb gs://jerez-2024
# Sube tu código fuente a Cloud Storage:
gsutil cp TU_ARCHIVO_ZIP.zip gs://NOMBRE_DEL_BUCKET
# crear el .zip
zip mi-proyecto.zip index.js
# desplegar
gcloud deployment-manager deployments create my-cloud-function-deployment --config cloudfunction.yaml

# habilitar servicio
gcloud services enable cloudfunctions.googleapis.com --project=test-docker-416523
# eliminar un despliegue
gcloud deployment-manager deployments delete my-cloud-function-deployment
# API de Cloud Build no está habilitada 
gcloud services enable cloudbuild.googleapis.com --project=test-docker-416523


gcloud functions deploy my-cloud-function --trigger-http --runtime=nodejs14 --set-env-vars ENABLE_HTTP_LOGGING=true

