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