

public class Hello {
   
    public static void main(String[] args) {
        // variables number, strings, char and booleans

        // Numbers (int, double, long, )

        // int -> -2147483648 to 2147483647 -> 4 bytes
        // long -> 8 bytes
        // double -> 8 bytes

        int even = 2;
        double odd = 3.5;
        long prime = 10000L;

        // String
        String name = "Owen";
        String name2 = "Name";

        // char -> one character -> 1 byte
        char grade = 'A';


        // Operations
        // Numbers

        int sum = (int)(even + odd);



        // System.out.println(sum);
        // System.out.println(even == odd);
        // System.out.println(name.equals(name2));
        // System.out.println(name == name2);


        // for loops
        for (int i = 0; i < 10; i++) {
            even++;
            System.err.println("even");
        }


        // enhanced for loop ???



        // Class

        Car nissan = new Car("Nissan", "Patrol");
        Car nissan2 = new Car("Nissan", "Patrol");
        Car nissan3 = new Car("Nissan", "Patrol");

        
        nissan.setModel("Patrol 2");
        
        // System.out.println(nissan.getName());
        // System.out.println(nissan.getModel());
        // System.out.println(Car.value);
        
        // Control flow statement
        // if/if else statement
        if(even % 2 == 0) {
            System.out.println("It is even");
        } else {
            System.out.println("It is odd");
        }


        if(even % 2 == 0) {
            System.out.println("It is even");
        } else if(even % 3 == 0) {
            System.out.println("It is divisible by 3");
        } else {
            System.out.println("It is odd");
        }

        int day = 1;


        // switch statements
        switch (day) {
            case 1:
                System.out.println("Monday");
                break;
            case 2:
                System.out.println("Tuesday");
                break;
            case 3:
                System.out.println("Wednesday");
                break;
            case 4:
                System.out.println("Thursday");
                break;
            default:
                throw new AssertionError();
        }

    }


    // points to cover

    // -Access modifiers
    // -Enhanced for loop
    // -Abstraction 
}