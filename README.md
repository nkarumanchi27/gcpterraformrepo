# GKE Cluster Creation Terraform Repository
This GitHub respository has the terraform project code to create GKE clusters on the Gools Cloud Platform.

# pre-requsites
 - Google cloud account with Necessary APIs like GKE enabled.
 - A service with necessary IAM Roles/Policies enabled and the service accounts keys file to authenticate to GCP from Terraform

While the state of this terraform project is stored in a GCS bucket backend, there is also a git ignore file in place to skip uploading   

# Terraform project key files
 - main.tf : This file has a couple of resources to create both the GCS storeage bucket and GKE cluster.
 - provider.tf: This file has the details of the Google cloud provider and specific version details.
 - backend.tf : This file has the Terraform statefile GCS backend bucket details.

# Steps to run this repository

 - Clone this repository to your local environment
 - Copy your GCP service account cridentals keys json file (Ex: keys.json) onto the root folder of this repository
 - run 'terraform init' to doanload and initialize providers
 - add any resources you want to add to the cluster onto the main.tf file. example below adds a gcs bucket.
 ```
 resource google_storage_bucket "cicd-storagebucket" {
  name = "cicdstoragebucketp"
  location = "US"
}
```
 - run 'terraform apply' to create the above specified resources onto GCP. 
