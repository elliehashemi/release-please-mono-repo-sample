package main

import (
	"fmt"

	"github.com/your-org/release-please-monorepo-sample/utils/gcputils"
)

func main() {
	gcputils.GetGCPInfo()
	fmt.Println("Service 2 is running- branch 23!!")
}
