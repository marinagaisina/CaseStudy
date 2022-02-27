package com.marinagaisina.casestudy.beans;

import com.marinagaisina.casestudy.database.entities.Location;
import com.marinagaisina.casestudy.validation.EmailUnique;
import com.marinagaisina.casestudy.validation.TwoFieldsAreEqual;
import com.marinagaisina.casestudy.validation.ValidatePass;
import lombok.Getter;
import lombok.Setter;
import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.hibernate.validator.constraints.Length;
import org.springframework.validation.FieldError;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import java.util.*;

@Getter
@Setter
@TwoFieldsAreEqual(fieldOneName = "confirmPassword", fieldTwoName = "password", message = "Password and Conform Password must be the same.")
public class RegisterFormBean {
    //this is a hidden
    private Integer id;

    // making sure the email is not null and is not empty as in ""
    @NotEmpty(message = "Email is required.")
    @Pattern(regexp = "^.+@.+$" , message = "Invalid email format")
    @EmailUnique(message = "Email must be unique")
    private String email;

    @Length(min = 1, max = 45,
            message = "First Name must be between 1 and 45 characters in length.")
    private String firstName;

    @Length(min = 1, max = 45, message = "Last Name must be between 1 and 45 characters in length.")
    private String lastName;

    /*// these annotations work on integer values only
    @Min(value=3, message="Age must be at least 3")
    @Max(value=10, message="Age must be at most 10")
    private Integer age;
*/
    @Length(min = 7, max = 100, message = "Invalid password length. Must be between 7 and 100.")
    @ValidatePass(message = "Invalid password format. Password must contain at least one digit, uppercase letter, lowercase letter and special symbol." +
            "<br>Special symbols: * . ! @ # $ % ^ & ( ) { } [ ] : \" ; ' < > , ? / ~ ` _ + - = |")
    private String password;
    private String confirmPassword;

    @Pattern(regexp = "^(\\d{10}|)$" , message = "Invalid cell-phone format, must contain 10 numbers or nothing.")
    private String phone;//can be null

    @NotEmpty(message = "The Username is being generated by \"Generate\" button click and if fields 'email', 'first name' and 'last name' are not empty.")
    private String username;

    //ADD THIS LATER TO THE JSP!!!
    private Location defaultLocation;

    // Class version: this list is populated by the controller with all error messages
    // in the binding result."
    //private List<String> errorMessages = new LinkedList<>();

    // My version: by using a Map<String, FieldError> map, and keeping error object in it, I'll have an access to entire error object
    // and will be able to get anything like error.getDefaultMessage(), error.getRejectedValue()
    private Map<String, FieldError> map = new HashMap<>();

    @Override
    public String toString() {
        return ReflectionToStringBuilder.toString(this, ToStringStyle.MULTI_LINE_STYLE);
    }

}
