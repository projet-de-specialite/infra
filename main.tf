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
  compute_name               = "projet-de-specialite-compute-public-app"
  compute_type               = "e2-medium"
  compute_os                 = "debian-cloud/debian-11"
  compute_ssh_key            = "gaetanlhf:${file("gaetanlhf-aible-gcp.pub")}"
  vpc_name                = module.projet_de_specialite_vpc.vpc_name
  subnet_name                 = module.projet_de_specialite_subnet_public.subnet_name
  compute_private_ip         = "10.1.0.2"
  compute_enable_external_ip = true
  compute_tags               = ["projet-de-specialite-compute", "projet-de-specialite-compute-public", "projet-de-specialite-compute-public-app"]
  depends_on = [
    module.projet_de_specialite_vpc,
    module.projet_de_specialite_subnet_public
  ]
}
