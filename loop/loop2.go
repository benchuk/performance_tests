package main

import "fmt"
import "time"

func main() {
	var arr [10000000]int
	start := time.Now()
	for i := 0; i < 10000000; i++ {
		arr[i]= 42
	}
	
	elapsed := time.Since(start)
	fmt.Printf("time %s",elapsed)
	fmt.Println("len:", len(arr))
	//fmt.Printf("done")
}
