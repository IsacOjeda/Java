package com.isacojeda.zookeeper;

public class Mammal {
	protected double energyLevel;
	
	
	public Mammal() {
		this(100.0);
	}
	
	public Mammal(double energyLevel) {
		this.energyLevel = energyLevel;
	}
	
	public void displayEnergy() {
		System.out.println("Energy Level : "+this.energyLevel);
	}
}
