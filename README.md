# Assignment 4: Gaganpreet Singh (B00819217)

From the two features I had selected in Assignment 3, i.e. Report Managemnet and Frequently Asked Questions (FAQ's), I have selected to implement the latter.

## Frequently Asked Question (FAQ's)
Apart from a list of Frequently asked questions, a user will has an option to send the query to the organisation. 
The user gets a unique token ID for his submitted query on the website. Also, a confirmation email for the submitted query is sent to the user.
The organisation can then reply to the user over email.

## GitLab Repository

The code for FAQ webpage can be access through [GitLab branch A4_Singh_Gaganpreet](https://git.cs.dal.ca/mahagaokar/Group14_TechGoons/tree/A4_Singh_Gaganpreet).

Further, since we have merged the code base of all the team members, the website can be checked at [Gitlab master branch](https://git.cs.dal.ca/mahagaokar/Group14_TechGoons/tree/master)
 
## Libraries/Toolkits Used
 1. **Bootstrap**
    Bootstrap is an open source toolkit for HTML, CSS, and JS development. I have used this toolkit to add responsiveness to the webpages.

 2. **Jquery**
    Jquery is a lightweight Javascript language. It helps in HTML/DOM, CSS manipulation and HTML event methods. 

 3. **Ajax**
    Ajax is a collection of web development methods for creating asynchronous web applications using many client-side web technologies.

 4. **Spring Boot Framework**
    The Spring Framework is a framework for implementation and reversal of the Java platform control container.

## Code Inspirations

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

The FAQ webpage has beem checked for W3 Compliance through [https://validator.w3.org](https://validator.w3.org)
