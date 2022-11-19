terraform {
 backend "gcs" {
   bucket  = "2106ecd1e4da8715-bucket-tfstate"
   prefix  = "terraform/state"
 }
}

