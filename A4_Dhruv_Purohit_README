# Assignment 4 CSCI 5709
## Dhruv Purohit
## B00821734

The assignment 3 consisted of two features out of twelve distinct features.
Those two features were: Authentication and Referral System, out of which Authentication feature has been chosen to be implemented for Assignment 4

## Authentication

The authentication consists of Registration and Login features. The user can register as per the role. Moreover, the user will be able to login using their registered name and email id. Their accounts and personal details are safe as the registration requires a password.

## Installations Requirements

There are no specific pre-installations required to run this project.

## Libraries and Toolkits

1. **Bootstrap**
    Bootstrap is an open source CSS framework used to create a responsive web page. This toolkit's componants are used in this assingment to enhance the responsive web page of the registration feature.

 2. **Jquery**
    Jquery is a free open-source library for event handling in Javascript. In this assignemnt, this library is used for AJAX calls. 

 3. **Ajax**
    Ajax helps to load the data from the server without page refresh. AJAX is used in this assignment for asynchronous calls to the server. 

 4. **Spring Boot Framework**
    The Spring boot Framework is used to create a stand-alone, spring based applications. In this assignment, Spring boot is used for backend.

## GIT repository link

https://git.cs.dal.ca/mahagaokar/Group14_TechGoons/tree/A4_Registration_Dhruv

## Code References

1. **JQuery Ajax posting**

*Source:* [https://stackoverflow.com/questions/6323338/jquery-ajax-posting-json-to-webservice](https://stackoverflow.com/questions/6323338/jquery-ajax-posting-json-to-webservice)(accessed on 16th July'19)

*Original Code Snippet:*

```
 $.ajax({
        type: "POST",
        url: "/webservices/PodcastService.asmx/CreateMarkers",
        data: markers,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function(data){alert(data);},
        failure: function(errMsg) {
            alert(errMsg);
        }
  });

```
The implementation of AJAX calls was given a glance from this tutorial and wrote the following code:
```

 $.ajax({
				type: "POST",
				url: "/userRegistration",
				data: JSON.stringify(body),
				dataType:"json",
				contentType: "application/json",
				success: function (response) {
					if(response.status==200){
						$("#signUpModal").modal('hide');
						$.notify({
							// options
							message : 'Registered successfully'
						}, {
							// settings
							type : 'success',
							allow_dismiss : true,
							placement : {
								from : "top",
								align : "center"
							},
							timer : 200
						});	
								
					}
				},
				error: function (error){
					console.log("error");
				}

 })
```
 2. **Spring Boot reference document**

 *Source:* [https://docs.spring.io/spring-data/jpa/docs/current/reference/html/](https://docs.spring.io/spring-data/jpa/docs/current/reference/html/)(accessed on 16th July'19)

The spring boot reference document was refered to understand spring boot and how to implement the backend using the same.

3. **Bootstrap Modal**

 *Source:* [https://getbootstrap.com/docs/4.0/components/modal/](https://getbootstrap.com/docs/4.0/components/modal/)(accessed on 16th July'19)

Implementation of Bootstrap Modal was using this tutorial for better design of the web page.


## File Structure

The folder structure has been borrowed from Spring Boot.

## W3 Validation

The Registration webpage comes under W3 Compliance through [https://validator.w3.org](https://validator.w3.org)

## References

[1]J. webservice et al., "Jquery Ajax Posting json to webservice", Stack Overflow, 2019. [Online]. Available: https://stackoverflow.com/questions/6323338/jquery-ajax-posting-json-to-webservice. [Accessed: 16- Jul- 2019].

[2]J. Oliver Gierke, "Spring Data JPA - Reference Documentation", Docs.spring.io, 2019. [Online]. Available: https://docs.spring.io/spring-data/jpa/docs/current/reference/html/. [Accessed: 16- Jul- 2019].

[3]a. Mark Otto, "Modal", Getbootstrap.com, 2019. [Online]. Available: https://getbootstrap.com/docs/4.0/components/modal/. [Accessed: 16- Jul- 2019].
