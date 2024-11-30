module "pets" {
  source = "./modules/pets"
  prefix_file = "prefix0${count.index}"
  count = 4
}
