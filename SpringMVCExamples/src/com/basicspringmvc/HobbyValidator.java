package com.basicspringmvc;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class HobbyValidator implements ConstraintValidator<IsValidHobby, String> {

	private String listOfHobbiesDetails;
	@Override
	public void initialize(IsValidHobby isValidHobby) {
		// TODO Auto-generated method stub
		this.listOfHobbiesDetails = isValidHobby.listOfValidHobbies();

	}

	@Override
	public boolean isValid(String studentHobby, ConstraintValidatorContext ctx) {
		// TODO Auto-generated method stub
		if (studentHobby == null) {
			return false;
		}
		if (studentHobby.matches(this.listOfHobbiesDetails)) {
			return true;
		} else {
			return false;
		}

	}

}
