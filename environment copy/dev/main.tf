module "rgmodule" {
  source = "../../module/rg"
  rgvar  = var.rgvar1
}

module "storagemodule" {
  depends_on = [module.rgmodule]
  source     = "../../module/storageacc"
  strgvar    = var.strgvar1
}

module "aksmodule" {
  depends_on = [module.rgmodule]
  source     = "../../module/aks"
  aksvar     = var.aksvar1
}

module "acrmodule" {
  depends_on = [module.rgmodule, module.aksmodule]
  source     = "../../module/acr"
  acrvar     = var.acrvar1
}