package com.isacojeda.zookeeper;

public class Gorilla extends Mammal {
	public Gorilla() {
		super();
	}
	public Gorilla(double energyLevel) {
		this.energyLevel = energyLevel;
	}
	
	
	public void throwSomething() {
		this.energyLevel -= 5;
		System.out.println("-5 Energy");
		System.out.println("Gorilla has thrown something!");
	}
	
	public void eatBananas() {
		this.energyLevel += 10;
		System.out.println("The Gorilla feels satisfied from eating the Banana");
	}
	
	public void climb() {
		this.energyLevel -= 10;
		System.out.println("The Gorilla has climbed a Tree!");
	}

}
