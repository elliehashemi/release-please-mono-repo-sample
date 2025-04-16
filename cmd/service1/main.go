package main

import (
	"fmt"

	"github.com/your-org/release-please-monorepo-sample/utils/awsutils"
)

func main() {
	awsutils.GetAwsInfo()
	fmt.Println("Feature 1 for service 1- branch23")
}
