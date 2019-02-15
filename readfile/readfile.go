package main

import (
    "fmt"
    "io/ioutil"
	"time"
)

func check(e error) {
    if e != nil {
        panic(e)
    }
}

func main() {
	start := time.Now()
	dat, err := ioutil.ReadFile("file.txt")
	elapsed := time.Since(start)
	check(err)
	//fmt.Printf(err)
	fmt.Printf("time %s",elapsed)
    fmt.Print(len(string(dat)))
	//fmt.Printf("done")
}
