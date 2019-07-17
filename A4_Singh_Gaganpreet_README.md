# Assignment 4: Gaganpreet Singh (B00819217)

From the two features I had selected in Assignment 3, i.e. Report Managemnet and Frequently Asked Questions (FAQ's), I have selected to implement the latter.

## Frequently Asked Question (FAQ's)
Apart from a list of Frequently asked questions, a user will has an option to send the query to the organisation. 
The user gets a unique token ID for his submitted query on the website. Also, a confirmation email for the submitted query is sent to the user.
The organisation can then reply to the user over email.

## How it works?
In case a user has a query which is not present on the FAQ page, he/she has an option to submit this query to BloodLife. 
To do so, the user needs to enter his email address and the query in the form provided on FAQ page.
When the user submits the query, the same is updated into the database of BloodLife and a unique token ID is generated for the submitted query.
This token ID is shown to the user after he presses Submit button. The same ID is also sent to the provided email address.
The blood bank organisation can then communicate with the user through email and thus resolve the query.

NOTE: The email send by bloodlife might end up in your spam folder as it is being sent by a script.

## Feature Testing
In order to test the feature please visit: https://group14bloodlife.herokuapp.com/FAQ

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

 1. **Sending Email using SMTP using Springboot** 
 
    *Source Code :* https://www.mkyong.com/spring-boot/spring-boot-how-to-send-email-via-smtp/ (accessed on 25th June'19)
    
    *Original Code Snippet:*
```
void sendEmail() {

    SimpleMailMessage msg = new SimpleMailMessage();
    msg.setTo("to_1@gmail.com", "to_2@gmail.com", "to_3@yahoo.com");

    msg.setSubject("Testing from Spring Boot");
    msg.setText("Hello World \n Spring Boot Email");
    
    javaMailSender.send(msg);

    } 
```
 I took an idea on how to implement the email fucntionality from this tutorial and wrote the following code:
```
@Service
public class SendMail {
	
    @Autowired
    private JavaMailSender javaMailSender;
	 	
    public void sendMail(String to, String subject, String messageText)  {
        try {
                FileReader fr = new FileReader("src/main/resources/application.properties");
				Properties property = new Properties();
				property.load(fr);
				Properties properties = System.getProperties();
				properties.setProperty("mail.smtp.starttls.required", property.getProperty("spring.mail.properties.mail.smtp.starttls.required"));
				properties.setProperty("mail.smtp.starttls.enabled", property.getProperty("spring.mail.properties.mail.smtp.starttls.enable"));
				properties.setProperty("mail.smtp.host", property.getProperty("spring.mail.host"));
				properties.setProperty("mail.smtp.port", property.getProperty("spring.mail.port"));
				properties.put("mail.smtp.auth",property.getProperty("spring.mail.properties.mail.smtp.starttls.enable"));

				Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(property.getProperty("spring.mail.username"),
								property.getProperty("spring.mail.password"));
					}
				});
				MimeMessage message = new MimeMessage(session);
				message.setFrom(new InternetAddress(property.getProperty("spring.mail.username")));
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
				message.setSubject(subject);
				message.setContent(messageText, "text/html");
				javaMailSender.send(message);
			} catch (Exception e) {
		    e.printStackTrace();
        }
    }
}
```

    
 
 2. **Regex Patterns**
 
    *Source Code :* [https://regexone.com/](https://regexone.com/)(accessed on 31st May'19)

    Learnt Regex patterns to implement form validations.
    
 3. **Navbar and Footer**
        
    *Source Code :* [https://getbootstrap.com/docs/4.0/components/navbar/](https://getbootstrap.com/docs/4.0/components/navbar/)

    In order to make a responsive webpage, I took the idea of navbar and footer from bootstrap's documentation page.

## File Structure
As discussed in Assignment 3, the folder structure being used for our project has been borrowed from Spring boot.
    
## W3 Validation

The FAQ webpage has been checked for W3 Compliance through [https://validator.w3.org](https://validator.w3.org)
