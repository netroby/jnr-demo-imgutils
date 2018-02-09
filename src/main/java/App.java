import jnr.ffi.LibraryLoader;


public class App {
    public static interface Test {
             String  ImgutilGetImageSize();
    }

    public static void main(String[] args) {

        Test IMG_LIB = LibraryLoader.create(Test.class).load("imgutils");
        System.out.println(IMG_LIB.ImgutilGetImageSize());
        // output: 838102050
    }
}

