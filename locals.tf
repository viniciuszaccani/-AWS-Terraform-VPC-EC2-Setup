locals {
  private_subnets = sort([for subnet in var.vpc_configuration.subnets : subnet.name if subnet.public == false])
  public_subnets  = sort([for subnet in var.vpc_configuration.subnets : subnet.name if subnet.public == true])
  azs             = sort(slice(data.aws_availability_zones.available.zone_ids, 0, length(local.private_subnets)))
  #criando 3 pares em azs

  subnet_pairs = zipmap(local.private_subnets, local.public_subnets) #conecta as subnetes public e privada
  az_pars = merge(
    zipmap(local.private_subnets, local.azs),
    zipmap(local.public_subnets, local.azs),

  ) #vincula az posi 1 com private pos1 e public pos1

}