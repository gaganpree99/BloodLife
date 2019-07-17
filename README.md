# Assignment 4: Varun Mahagaokar (B00826634)

From the two features chosen in Assignment 3 that is, Record Maintenance and Photo Gallery, I chose to implement gallery Management.

## Gallery Management
The organization can use this feature to post their photos of events or camps for promotion as well as advertisement of the organization.
Photos posted/upload by the organization will be viewed by all the users visiting the website.

## How it works?
User with role "Organization" has to login in the portal, user has to then navigate to Events tab. 
After navigating to Events tab, user can upload the photos by clicking on "Add photo" button.
A modal will be display with 2 fields : title (title of photo) and another to upload the image.
When user will click on "Add" button, image will be uploaded to Amazon S3. And the link received from amazon S3 will be stored in the database.

The photos upload by the organization will be viewed by other users without login to the portal. Users can view photo by navigating to gallery page from the navbar of the homepage.

## GitLab Repository

The code for Gallery Management can be access through [GitLab branch A4_GalleryManagement_Varun](https://git.cs.dal.ca/mahagaokar/Group14_TechGoons/tree/A4_GalleryManagement_Varun).

## Libraries/Toolkits Used
 1. **Bootstrap**
    Bootstrap is an open source toolkit for HTML, CSS, and JS development. I have used this toolkit to add responsiveness to the webpages.

 2. **Jquery**
    Jquery is a lightweight Javascript language. It helps in HTML/DOM, CSS manipulation and HTML event methods. 

 3. **Ajax**
    Ajax is a collection of web development methods for creating asynchronous web applications using many client-side web technologies.

 4. **Spring Boot Framework**
    The Spring Framework is a framework for implementation and reversal of the Java platform control container.
 5. **Amazon S3**
    Amazon S3 is a service offered by Amazon Web Services that provides object storage through a web service interface.

## Code Inspirations

 1. **Uploading Images to Amazon S3** 
 
 >   *Source Code :* https://medium.com/oril/uploading-files-to-aws-s3-bucket-using-spring-boot-483fcb6f8646/ (accessed on 8th July 19)

  Original Code Snippet:
  
```
@PostMapping("/uploadFile")
    public String uploadFile(@RequestPart(value = "file") MultipartFile file) {
        return this.amazonClient.uploadFile(file);
    }
```
```
@Service
public class AmazonClient {

    private AmazonS3 s3client;

    @Value("${amazonProperties.endpointUrl}")
    private String endpointUrl;
    @Value("${amazonProperties.bucketName}")
    private String bucketName;
    @Value("${amazonProperties.accessKey}")
    private String accessKey;
    @Value("${amazonProperties.secretKey}")
    private String secretKey;
    @PostConstruct
        private void initializeAmazon() {
           AWSCredentials credentials = new BasicAWSCredentials(this.accessKey, this.secretKey);
           this.s3client = new AmazonS3Client(credentials);
    }
}
```
 I took a reference for how to upload file to Amazon S3 and wrote the following code:
```
 @PostMapping("/uploadFile")
    public Map<String, Object> uploadFile(@RequestPart(value = "file") MultipartFile file) {
        Map<String,Object> response = new HashMap<>();
        try{
           String link = this.amazonClient.uploadFile(file);
             link=link.replace("com//bloodlife","com");
            link=link.replace("http","https");
           response.put("status",200);
           response.put("link",link);
            return response;
        }catch(Exception ex){
            ex.printStackTrace();
            return response;
        }

    }
```
```
@Service
public class AmazonClient {

    private AmazonS3 s3client;

    @Value("${amazonProperties.endpointUrl}")
    private String endpointUrl;
    @Value("${amazonProperties.bucketName}")
    private String bucketName;
    @Value("${amazonProperties.accessKey}")
    private String accessKey;
    @Value("${amazonProperties.secretKey}")
    private String secretKey;
    @PostConstruct
    private void initializeAmazon() {
        AWSCredentials credentials = new BasicAWSCredentials(this.accessKey, this.secretKey);
        this.s3client = new AmazonS3Client(credentials);
    }
}
```


The list of files that are added/updated, for implementing the Assignment 4.

1. GalleryController.java

2. GalleryRepository.java

3. Gallery.java

4. GalleryService.java

5. GalleryServiceImpl.java

6. galleryManagement.jsp

7. gallery.jsp

## File Structure
As mentioned in Assignment 3, the folder structure used for our project is spring boot folder structure.
    
## W3 Validation
The Event Management has been checked for W3 Compliance through [https://validator.w3.org](https://validator.w3.org)