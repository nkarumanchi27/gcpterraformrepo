# GKE Cluster Creation Terraform Repository
This GitHub respository has the terraform project code to create GKE clusters on the Gools Cloud Platform. 

While the state of this terraform project is stored in a GCS bucket backend, there is also a git ignore file in place to skip uploading   

# Terraform project key files
main.tf : This file has a couple of resources to create both the GCS storeage bucket and GKE cluster.
provider.tf: This file has the details of the Google cloud provider and specific version details.
backend.tf : This file has the Terraform statefile GCS backend bucket details.

