package com.caresoft.clinicapp;

import java.util.ArrayList;
import java.util.Date;

public class AdminUser extends User implements HIPAACompliantUser, HIPAACompliantAdmin {
	private Integer employeeID;
    private String role;
    private ArrayList<String> securityIncidents;
    
    // TO DO: Implement a constructor that takes an ID and a role

    public AdminUser(Integer id, String role) {
    	super();
    	this.employeeID = id;
    	this.role = role;
    }
    
    
    

    // TO DO: Implement HIPAACompliantUser!
    @Override
    public boolean assignPin(int pin) {
    	if(pin > 5) {
    		this.employeeID = pin;
    		return true;
    	}else {
    		return false;
    	}
    	
    }
    @Override
    public boolean accessAuthorized(Integer confirmedAuthID) {
    	if(this.id == confirmedAuthID) {
    		return true;
    	}else {
    		authIncident();
    		return false;
    	}
    }
    // TO DO: Implement HIPAACompliantAdmin!
    @Override
    public ArrayList<String>reportSecurityIncidents(){
    	return(securityIncidents);
    	
    }
   
    
    public void newIncident(String notes) {
        String report = String.format(
            "Datetime Submitted: %s \n,  Reported By ID: %s\n Notes: %s \n", 
            new Date(), this.id, notes
        );
        securityIncidents.add(report);
    }
    
    public void authIncident() {
        String report = String.format(
            "Datetime Submitted: %s \n,  ID: %s\n Notes: %s \n", 
            new Date(), this.id, "AUTHORIZATION ATTEMPT FAILED FOR THIS USER"
        );
        securityIncidents.add(report);
    }

    // TO DO: Setters & Getters

	public String getRole() {
		return role;
	}
	
	public void setRole(String role) {
		this.role = role;
	}
	
	
	public Integer getEmployeeID() {
		return employeeID;
	}
	
	public void setEmployeeID(Integer ID) {
		this.employeeID = ID;
	}
	
	public ArrayList<String> getSecurityIncidents() {
		return securityIncidents;
	}
	
    public void setIncident(String incident){
    	securityIncidents.add(incident);
    }
//	employee id role security incidents
	
	
	
}
