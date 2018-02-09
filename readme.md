# Java call golang 

This is repository to show you how to call golang from java.

By using Java native Runtime (jnr-ffi)


## Run

Make sure docker installed first.

Then you will run 

```
.\run.bat
```


## Tech detail

The java can load .so file from linux/unix lib path, so you can put your so file into /lib/libimgutils.so

The java code 

```

        Test IMG_LIB = LibraryLoader.create(Test.class).load("imgutils");
```

Will load libimgutils.so into your java defined interface `Test`


```
    public static interface Test {
             String  ImgutilGetImageSize();
    }

```


the golang code very simple

```
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

func main() {}  //This line must be provided, or it will occure problems
```

The `*C.char` will match java `String` data type

For more detail you may want to look 

https://github.com/jnr/jnr-ffi



The `build.gradle` file contains jnr-ffi

```
dependencies {
    // This dependency is found on compile classpath of this component and consumers.
    compile 'com.google.guava:guava:23.0'
// https://mvnrepository.com/artifact/com.github.jnr/jnr-ffi
compile group: 'com.github.jnr', name: 'jnr-ffi', version: '2.1.7'

    // Use JUnit test framework
    testCompile 'junit:junit:4.12'
}
```


