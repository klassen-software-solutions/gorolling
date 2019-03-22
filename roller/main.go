//
// roller/main.go
// gorolling
//
// Created by steve on 2019-03-21.
// Copyright © 2019 Klassen Software Solutions. All rights reserved.
//

package main

import (
	"flag"
	"fmt"
	"github.com/klassen-software-solutions/gorolling"
	"log"
)

func main() {
	// Parse the command line.
	isVersion := flag.Bool("version", false, "Display the version number and exit")
	isLicense := flag.Bool("license", false, "Display the license and exit")
	flag.Parse()

	if *isVersion {
		fmt.Println(gorolling.Version)
		return
	}

	if *isLicense {
		fmt.Println(gorolling.License)
		return
	}

	log.Printf("done")
}
