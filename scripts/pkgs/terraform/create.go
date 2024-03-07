package terraform

import (
	"fmt"
	"os"
	"os/exec"
)

func callBack(cmd *exec.Cmd) {
	cmd.Dir = "../"
	cmd.Stderr = os.Stderr
	cmd.Stdout = os.Stdout
	err := cmd.Run()
	if err != nil {
		fmt.Println(err)
		return
	}
}

func Check() {
	fmt.Println("Checking if terraform installed...")
	cmd := exec.Command("terraform", "version")
	callBack(cmd)
}

func Init() {
	fmt.Println("Terraform init")
	cmd := exec.Command("terraform", "init", "--upgrade")
	callBack(cmd)
}

func Plan() {
	fmt.Println("Generating terraform plan file")
	cmd := exec.Command("terraform", "plan", "-out", "main.tfplan", "-var-file", "awssecret.tfvars")
	callBack(cmd)
}

func Apply() {
	fmt.Println("Applying your configuration")
	cmd := exec.Command("terraform", "apply", "main.tfplan")
	callBack(cmd)
}
