package terraform

import (
	"fmt"
	"os"
	"os/exec"
)

func CallBack(cmd *exec.Cmd) {
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
	CallBack(cmd)
}

func Init() {
	fmt.Println("Terraform init")
	cmd := exec.Command("terraform", "init", "--upgrade")
	CallBack(cmd)
}

func Plan() {
	fmt.Println("Generating terraform plan file")
	cmd := exec.Command("terraform", "plan", "-out", "main.tfplan")
	CallBack(cmd)
}

func Apply() {
	fmt.Println("Applying your configuration")
	cmd := exec.Command("terraform", "apply", "main.tfplan")
	CallBack(cmd)
}
