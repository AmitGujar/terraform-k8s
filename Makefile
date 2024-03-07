GOCMD=go run
GO_FILE=main.go
GO_DIR=scripts

all: tfcreate

tfcreate:
	cd ${GO_DIR} && ${GOCMD} ${GO_FILE}

.PHONY: tfcreate