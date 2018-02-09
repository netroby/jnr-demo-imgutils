package main

import (
        "C"
        _ "image/jpeg"
        _ "image/png"
)

//export ImgutilGetImageSize
func ImgutilGetImageSize() *C.char {
        return C.CString("hello from golang")
}

func main() {}