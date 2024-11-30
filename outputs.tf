output "pet01_name" {
  value = module.pets[*].output_pet01_name #refers to modules output
}

output "pet02_name" {
  value = module.pets[*].output_pet02_name
}