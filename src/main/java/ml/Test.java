package ml;

/**
 * Created by mingfei.net@gmail.com
 * 2017-01-07 14:46
 */
public class Test implements Runnable {
    public static void main(String[] args) {
//        new Thread(new Test()).start();

        new Thread(new Runnable() {
            @Override
            public void run() {
                System.out.println("hello...");
            }
        }).start();
    }

    @Override
    public void run() {
        System.out.println("hi...");
    }
}
