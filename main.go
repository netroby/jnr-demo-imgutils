package main

import (
	"C"
)

//export ImgutilGetImageSize
func ImgutilGetImageSize() *C.char {
	return C.CString("hello from golang")
}

func main() {}
