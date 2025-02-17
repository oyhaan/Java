public class Car {
    //access specifiers

    private String name;
    private String model;
    public static int value;




    // constructor

    public Car() {
        this("Toyota", "Rav4");
    }

    public Car(String name, String model) {
        this.name = name;
        this.model = model;
        Car.value++;
    }

    //getters and setters

    //getter
    
    public void makeSound() {
        System.out.println("Car");
    }


    public String getName() {
        return this.name;
    }


    public String getModel() {
        return this.model;
    }

    // setter
    public void setName(String name) {
        this.name = name;
    }

    public void setModel(String model) {
        this.model = model;
    }


}
