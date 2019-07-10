package com.bloodlife.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Users {

	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Long id;
	
    private String firstName;
    
    private String lastName;
    
    
    private String email;
    
    private Long phone_number;
    
    private int age;
    
    private String blood_group;
    
    private String Refer_friend;
    
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
    
	public Long getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(Long phone_number) {
		this.phone_number = phone_number;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getBlood_group() {
		return blood_group;
	}
	public void setBlood_group(String blood_group) {
		this.blood_group = blood_group;
	}
	public String getRefer_friend() {
		return Refer_friend;
	}
	public void setRefer_friend(String refer_friend) {
		Refer_friend = refer_friend;
	}
	
    
}
