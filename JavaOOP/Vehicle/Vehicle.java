class Vehicle{
    private int numberOfWheels;
    private String color;

    public Vehicle(String color){
        this.color = color;
    }

    public Vehicle(String color , int wheelNum){
        this.color = color;
        this.numberOfWheels = wheelNum;
    }

    public int getNumberOfWheels(){
        return numberOfWheels;
    }

    public void setNumberOfWheels(int number){
        this.numberOfWheels = number;
    }

    public void setColor(String carColor){
        this.color = carColor;
    }

    public String getColor(){
        return color;
    }


}
