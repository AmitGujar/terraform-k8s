package main

import (
	"fmt"

	"github.com/AmitGujar/terraform-boilerplate/scripts/pkgs/terraform"
)

func main() {
	terraform.Check()
	UserChoice()
}

func UserChoice() {
	var choice string
	fmt.Print("Do you want to perform apply = ")
	fmt.Scan(&choice)
	if choice == "y" {
		terraform.Init()
		terraform.Plan("secret.tfvars")
		terraform.Apply()
	} else {
		terraform.Destroy("secret.tfvars")
	}
}
