module "networking" {
  source            = "./modules/networking"
  vpc_cidr_block    = var.vpc_cidr_block
  subnet_cidr_block = var.subnet_cidr_block
  availability_zone = var.availability_zone
  env_prefix        = var.env_prefix
}

module "compute" {
  source              = "./modules/compute"
  vpc_id              = module.networking.my-vpc.id
  subnet_id           = module.networking.my-subnet.id
  availability_zone   = var.availability_zone
  env_prefix          = var.env_prefix
  my_ip               = var.my_ip
  instance_type       = var.instance_type
  public_key_location = var.public_key_location
  image_name          = var.image_name
}
