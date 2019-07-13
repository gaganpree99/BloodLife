# Read Me for Assignment 4 by Mohammed Sohail Ahmed


The feature that I have selected to implement for this Assignment is Given below

## Profile Management

This feature allows the user to update the details of their profile like their email address, phone number etc. This feature will also be responsible for checking the roles of user from the backend database and displaying the update profile page to them.

The Hyperlink takes you directly to the bluenose/hector server where you can preview them.

## GitLab Repository

The code which only includes the implementation of my Assignment 4 can be access through [GitLab](https://git.cs.dal.ca/mahagaokar/Group14_TechGoons/edit/Assignment4_Sohail_Mohammed/).

**Note: For my feature to work I needed to access the login session (implemented by Drhuv Purohit) for which I had to merge his code into mine for it work**

We have decided to also merge all the code from the assignment 4 from all the group members, so that it can be hosted.

The code for it can be access through [GitLab](https://git.cs.dal.ca/mahagaokar/Group14_TechGoons/tree/master).

## Images

**Update profile:**
1. “Free Image on Pixabay - Head, The Dummy, Avatar, Man, Tie,” Head The Dummy Avatar - Free image on Pixabay. [Online]. Available: https://pixabay.com/illustrations/head-the-dummy-avatar-man-tie-659651/. [Accessed: 31-May-2019]. 

**Note: This image is used only for UI purposes and we have no plans of adding and maitaining profile images, hence I have not implemented an image upload to the database functionality**

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

All the webpages are W3 Compliant and have been checked through [https://validator.w3.org](https://validator.w3.org)
