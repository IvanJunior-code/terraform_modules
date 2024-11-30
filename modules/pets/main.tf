resource "local_file" "file01" {
  content  = random_pet.pet01.id
  filename = "./output-files/${var.prefix_file}-pet-${random_pet.pet01.id}"
}

resource "local_file" "file02" {
  content  = random_pet.pet02.id
  filename = "./output-files/${var.prefix_file}-pet-${random_pet.pet02.id}"
}

resource "random_pet" "pet01" {
  
}

resource "random_pet" "pet02" {
  
}