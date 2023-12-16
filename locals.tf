locals {
  name_prefix = "${var.env}-${var.component}-elasticache"
  tags = merge(var.tags, {tf-module-name = "app"},{env=var.env})
}