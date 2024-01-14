package com.isacojeda.zookeeper;

public class Bat extends Mammal {
	public Bat() {
		super(300.0);
	}
	public Bat(double energyLevel) {
		this.energyLevel = energyLevel;
	}
	
	public void fly() {
		this.energyLevel -= 10;
		System.out.println("Bat is Airborne.");
	}
	
	public void eatHumans() {
		this.energyLevel += 25;
		System.out.println("The Bat feels satisfied from eating the Human");
	}
	
	public void attackTown() {
		this.energyLevel -= 100;
		System.out.println("The Bat rushes into town and WREAKS HAVOC");
	}
		
		
}

