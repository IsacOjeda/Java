class VehicleTest {
    public static void main(String[] args) {
        // Vehicle bike = new Vehicle();
        // Vehicle car = new Vehicle();
        // bike.setNumberOfWheels(2);
        // bike.setColor("red");
        // int bikeWheels = bike.getNumberOfWheels();
        // String bikeColor = bike.getColor();
        // car.setNumberOfWheels(4);
        // car.setColor("green");
        // int carWheels = car.getNumberOfWheels();
        // String carColor = car.getColor();
        // System.out.println("Bike object - Wheels: " + bikeWheels + ", Color: " + bikeColor);
        // System.out.println("Car object - Wheels: " + carWheels + ", Color: " + carColor);

        Vehicle rx7 = new Vehicle("Black" , 4);
        String carColor = rx7.getColor();
        int carWheels = rx7.getNumberOfWheels();

        System.out.println("Car color: " + carColor + " Wheels: " + carWheels );
    }
}

