package main

import "fmt"

func main() {
	// integer
	var i int = 1
	var j int = 2
	fmt.Println(i + j)

	// float
	var f float32 = 1.1
	var g float32 = 2.2
	fmt.Println(f + g)

	// string
	var s string = "hello"
	var t string = "world"
	fmt.Println(s + t)

	// boolean
	var b bool = true
	var c bool = false
	fmt.Println(b && c)

	// array
	var a [3]int = [3]int{1, 2, 3}
	fmt.Println(a[0] + a[1] + a[2])

	// slice
	var d []int = []int{1, 2, 3}
	fmt.Println(d[0] + d[1] + d[2])

	// map
	var m map[string]int = map[string]int{"one": 1, "two": 2}
	fmt.Println(m["one"] + m["two"])

	// struct
	type Person struct {
		name string
		age  int
	}
	var p Person = Person{name: "Taro", age: 20}
	fmt.Println(p.name, p.age)

	// pointer
	var x int = 1
	var y *int = &x
	fmt.Println(*y)

	// interface
	var e interface{} = 1
	fmt.Println(e)

	// function
	var fC func(int, int) int = func(x int, y int) int {
		return x + y
	}
	fmt.Println(fC(1, 2))

	// channel
	var ch chan int = make(chan int)
	go func() {
		ch <- 1
	}()
	fmt.Println(<-ch)

	// nil
	var n interface{} = nil
	fmt.Println(n)

	// type assertion
	var iA interface{} = 1
	var iB int = iA.(int)
	fmt.Println(iB)

	// type switch
	var iC interface{} = 1
	switch iC.(type) {
	case int:
	}

	// error
	var err error = fmt.Errorf("error")
	fmt.Println(err)

	// type alias
	type MyInt int
	var iD MyInt = 1
	fmt.Println(iD)

	// type definition
	type MyInt2 = int
	var iE MyInt2 = 1
	fmt.Println(iE)

	// type conversion
	var iF int = 1
	var iG int64 = int64(iF)
	fmt.Println(iG)

	// type assertion
	var iH interface{} = 1
	var iI int = iH.(int)
	fmt.Println(iI)

}
