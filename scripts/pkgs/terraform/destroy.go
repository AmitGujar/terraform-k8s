package terraform

import (
	"fmt"
	"os/exec"
)

func DestroyResources() {
	fmt.Println("Destroying terraform configuration")
	// cmd := exec.Command("echo", "starting destruction")
	cmd := exec.Command("terraform", "destroy", "--auto-approve")
	CallBack(cmd)
}
