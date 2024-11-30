resource "local_file" "arquivo01" {
  content  = random_pet.pet01.id
  filename = "./output-files/${var.prefix_file}-pet01-${random_pet.pet01.id}"
}

resource "local_file" "arquivo02" {
  content  = random_pet.pet02.id
  filename = "./output-files/${var.prefix_file}-pet02-${random_pet.pet02.id}"
}

resource "random_pet" "pet01" {
  
}

resource "random_pet" "pet02" {
  
}