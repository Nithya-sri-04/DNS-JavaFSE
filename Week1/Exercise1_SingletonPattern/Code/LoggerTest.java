public class LoggerTest {
    public static void main(String[] args){
        Logger logger1 = Logger.getInstance();
        logger1.log("First Message");

        Logger logger2 = Logger.getInstance();
        logger2.log("Second Message");

        if(logger1 == logger2){
            System.out.println("Only one logger object is created");
        } else{
            System.out.println("Different objects created");
        }
    }
}
