module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = var.instance_name

  instance_type               = var.instance_type
  ami                         = var.ami_id
  key_name                    = var.key_pair_name
  monitoring                  = true
  vpc_security_group_ids      = [module.sg.security_group_id]
  subnet_id                   = module.vpc.public_subnets[0]
  associate_public_ip_address = true
  user_data                   = file("jenkins-script.sh")
  availability_zone           = data.aws_availability_zones.azs.names[0]

  tags = {
    Name        = "ec2-devops-project-mb"
    Terraform   = "true"
    Environment = "dev"
  }
}