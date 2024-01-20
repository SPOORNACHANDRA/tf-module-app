locals {
  name_prefix      = "${var.env}-${var.component}"
  tags             = merge(var.tags, { tf-module-name = "app" }, { env = var.env },{monitor = "yes"})
  parameters       = concat(var.parameters,[var.component])
  policy_resources = [for i in local.parameters:"arn:aws:ssm:us-east-1:345292693539:parameter/${i}.${var.env}.*"]
}