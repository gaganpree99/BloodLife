# Read Me for Assignment 4 by Mohammed Sohail Ahmed (B00821054)

Initially I have selected 2 features (Profile Management, sms/email notification) in my Assignment3, from these two features I have decided to implement "Profile Management" for this Assignment.

## Profile Management

This feature allows the user to update the details of their profile, like their email address, phone number etc. This feature will also be responsible for checking the roles of the user from the back-end database and displaying the update-profile page to them.

The Hyperlink takes you directly to the bluenose/hector server where you can preview them.

## GitLab Repository

The code which only includes the implementation of my Assignment 4 can be access through [GitLab](https://git.cs.dal.ca/mahagaokar/Group14_TechGoons/edit/Assignment4_Sohail_Mohammed/).

## Testing Instructions

To test this feature you need to login using the following credentials:

**Username** : sohail@gmail.com

**Password** : sohail123

When you login using the above credentials, you will be redirected to the update-profile screen, where you can update the details of the user. As the role of this user is that of a "donor", he/she can't view the dashboard features of an organisation, hence he is directed straight to the update-profile page.

**Note: All the validations made on this page is done through back-end.**

credentials of an Organisation:

**Username**: varun090295@gmail.com

**Password**: varun12345

When you login using the above credentials you will be taken to the dashboard screen where you can perform the tasks of an organisations. These tasks are hidden from the donors (which you can see using the above credentials).

## Related Code

Below are the list of files that I have made changes to, for implementing the Assignment 4.

1. UserController.java

2. UserRepository.java

3. Users.java

4. UserServiceImpl.java

5. UserService.java

6. updateProfile.jsp

7. dashboard.jsp (I have modified this file so that it redirects the user based on their role i.e, a donor cannot see the dashboard features of an organisation)

8. sidebar.jsp


## Images

**Update profile:**
1. “Free Image on Pixabay - Head, The Dummy, Avatar, Man, Tie,” Head The Dummy Avatar - Free image on Pixabay. [Online]. Available: https://pixabay.com/illustrations/head-the-dummy-avatar-man-tie-659651/. [Accessed: 31-May-2019].

**Note: This image is used only for UI purposes and we have no plans of adding and maitaining profile images, hence I have not implemented an image upload functionality**

## Technologies Used
 1. **Ajax**
   Ajax allows exchanging data between the web server and the front end. Using ajax part of webpages can be updated without reloading the whole page

 2. **Jquery**
    Jquery is a lightweight Javascript language. It helps in HTML/DOM, CSS manipulation and HTML event methods.

 3. **JAVA**
    I have used Java Programming language to connect with the MySQL Database.

## Code References

 1. **Make a request**

    *Source Code :* https://crunchify.com/how-to-use-ajax-jquery-in-spring-web-mvc-jsp-example/


	*Original Code Snippet:*

		` @RequestMapping(value = "/ajaxtest", method = RequestMethod.GET)
          public @ResponseBody
          String getTime() {
             Random rand = new Random();
             float r = rand.nextFloat() * 100;
             String result = "<br>Next Random # is <b>" + r + "</b>. Generated on <b>" + new Date().toString() + "</b>";
             System.out.println("Debug Message from CrunchifySpringAjaxJQuery Controller.." + new Date().toString());
             return result;
            }`

	*Modified Code:*
	
	I initially referred to the above code to know the actual syntax of making a request, then I have modified my code which takes some input from the user and also I am returning the data back to the front-end using HashMap:

	    `@RequestMapping(value = "/getUserById" , method=RequestMethod.GET)
	     @ResponseBody
	     public Map<String,Object> getUserById(@RequestParam(name = "id") Long id) {
		    Map<String,Object> response = new HashMap<String, Object>();
		    try {
			    response.put("data",userService.findById(id));
			    response.put("status", 200);
	    	}catch(Exception ex) {
			    ex.printStackTrace();
			    response.put("error", ex.getLocalizedMessage());
			    response.put("status", 500);
		    }
		    return response;
	    }`

 2. **Phone number validation**

    *Source Code :* https://stackoverflow.com/a/42105140

    *Original Code Snippet:*

		` String pattern = "\\d{10}|(?:\\d{3}-){2}\\d{4}|\\(\\d{3}\\)\\d{3}-?\\d{4}";`

	*Modified Code:*

	The above regex was used to detect phone number that had numbers, spaces, braces etc. But In my case I am only allowing numbers as phone number. Hence I modified the above regex to fit my needs.

	    `String regex = "\\d{10}";`




## W3 Validation
The update profile page has been validated for w3c compilance using [https://validator.w3.org](https://validator.w3.org)


## References

[1]M. Tutorials, "How to use AJAX and jQuery in Spring Web MVC (.jsp) Application • Crunchify", Crunchify, 2019. [Online]. Available: https://crunchify.com/how-to-use-ajax-jquery-in-spring-web-mvc-jsp-example/. [Accessed: 15- Jul- 2019].

[2]J. numbers, P. Parker, a. MISHRA, A. Gupta and E. Frisch, "Java Regular Expressions to Validate phone numbers", Stack Overflow, 2019. [Online]. Available: https://stackoverflow.com/a/42105140. [Accessed: 15- Jul- 2019].

[3]front-end implemntation from the project proposal. [Accessed: 15- Jul- 2019].

[4]"AJAX Introduction", W3schools.com, 2019. [Online]. Available: https://www.w3schools.com/xml/ajax_intro.asp. [Accessed: 15- Jul- 2019].

[5]"Validate the first name and last name with Java Regular Expressions", Tutorialspoint.com, 2019. [Online]. Available: https://www.tutorialspoint.com/validate-the-first-name-and-last-name-with-java-regular-expressions. [Accessed: 15- Jul- 2019].