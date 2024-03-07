package main

import (
	"fmt"

	"github.com/AmitGujar/terraform-k8s/scripts/pkgs/terraform"
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
		terraform.Plan()
		terraform.Apply()
	} else {
		terraform.DestroyResources()
	}
}
