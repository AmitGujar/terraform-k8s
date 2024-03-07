package main

import (
	"github.com/AmitGujar/terraform-template/scripts/pkgs/terraform"
)

func main() {
	terraform.Check()
	terraform.Init()
	terraform.Plan()
	terraform.Apply()
}
