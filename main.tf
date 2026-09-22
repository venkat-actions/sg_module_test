module "sg" {
    count= length(var.sg_names)
  source      = "../aws_sg_module"
  project     = var.project
  environment = var.environment
  vpc_id      = "vpc-0b46d2849e6cad578"
  sg_name     = replace(var.sg_names[count.index], "_", "-")
}