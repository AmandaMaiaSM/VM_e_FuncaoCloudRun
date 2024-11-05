//criar os provsifder 


resource "google_storage_bucket" "bucket-animalssit" { 
 name = "bucket-animalssit" 
 location = "northamerica-northeast1" 
}
resource "google_storage_bucket_object" "function_source" { 
  name = "function-source.zip" 
  bucket = google_storage_bucket.bucket-animalssit.name 
  source = "${path.module}/function-source.zip"
}

resource "google_compute_instance" "exercicio-10"{
  name         = var.namevm 
  machine_type = var.tipoMaquina  
  zone         = var.zona 
  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"
    access_config {} 
  }

  # Script que chama a função Cloud Run quando a VM inicia
  metadata_startup_script = <<-EOF
    #!/bin/bash
    curl -X GET "https://northamerica-northeast1-noble-anvil-439219-a9.cloudfunctions.net/animalsss" -o /tmp/animal_response.html
  EOF

  #metadata_startup_script = "echo hi >  "https://northamerica-northeast1-noble-anvil-439219-a9.cloudfunctions.net/animalsss" -o /tmp/animal_response.html/test.txt"
}

