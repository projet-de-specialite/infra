module "projet_de_specialite_vpc" {
  source   = "./modules/vpc"
  vpc_name = "projet-de-specialite-vpc"
}

module "projet_de_specialite_subnet_public" {
  source              = "./modules/subnet"
  subnet_name         = "subnet-public"
  subnet_ip_range     = "10.1.0.0/16"
  subnet_network_name = module.projet_de_specialite_vpc.vpc_name
  depends_on = [
    module.projet_de_specialite_vpc
  ]
}

module "projet_de_specialite_subnet_private" {
  source              = "./modules/subnet"
  subnet_name         = "subnet-private"
  subnet_ip_range     = "10.2.0.0/16"
  subnet_network_name = module.projet_de_specialite_vpc.vpc_name
  depends_on = [
    module.projet_de_specialite_vpc
  ]
}

module "projet_de_specialite_instance_public_app" {
  source                      = "./modules/compute"
  instance_name               = "projet-de-specialite-instance-public-app"
  instance_type               = "e2-medium"
  instance_os                 = "debian-cloud/debian-11"
  instance_ssh_key            = "gaetanlhf:${file("gaetanlhf-aible-gcp.pub")}"
  network_name                = module.projet_de_specialite_vpc.vpc_name
  subnet_name                 = module.projet_de_specialite_subnet_public.subnet_name
  instance_private_ip         = "10.1.0.2"
  instance_enable_external_ip = true
  instance_tags               = ["projet-de-specialite-compute", "projet-de-specialite-compute-public", "projet-de-specialite-compute-public-app"]
  depends_on = [
    module.projet_de_specialite_vpc,
    module.projet_de_specialite_subnet_public
  ]
}
