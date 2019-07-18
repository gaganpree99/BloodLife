# Assignment 4 : Ghazayil Alkhalifah (B00559684)
In Assignment 3 I disscussed two features which are, search donors and search orgnization. For Assignment 4 I chose Search orgnization to implement.

# Search Orgnization 
In Search organizations feature allows the blood receivers and blood donors to look up blood collection organizations.

# Link to the website
The website URL : https://group14bloodlife.herokuapp.com/homepage

# Testing the feature 
Please use the above link to go to the website, and use the following credentials to login: 
- Username: varun090295@gmail.com 
- Password: Varun12345


Once logged in, choose orgnization option, the page will load of avavibale orgnizations registed in the website already.
to search for specific one type in the name in the search box provided. 

## GitLab Repository
- The code for Seacrh Orgnization can be accessed through [https://git.cs.dal.ca/mahagaokar/Group14_TechGoons/tree/A4_SearchOrg_Ghazayil](https://git.cs.dal.ca/mahagaokar/Group14_TechGoons/tree/A4_SearchOrg_Ghazayil) 
- The code for the whole project can be accessed through https://git.cs.dal.ca/mahagaokar/Group14_TechGoons

# Assignment 4 Files 
Below is the link to files used to create this feature: 
1. orgnizationContoler.java
2. orgnization.java
3. orgnizationRepository.java
4. orgnizationService.java
5. orgnizationServiceImpl.java
6. orgnization.jsp
7. sidebar.jsp
8. homepage.jsp

# Code References

- Original source code :
`$.ajax({
        url: 'users.php',
        dataType: 'text',
        type: 'post',
        contentType: 'application/x-www-form-urlencoded',
        data: $(this).serialize(),
        success: function( data, textStatus, jQxhr ){
            $('#response pre').html( data );
        },
        error: function( jqXhr, textStatus, errorThrown ){
            console.log( errorThrown );
        }
    });`

- Modified code :
`$.ajax({
            type: 'POST',
            dataType:"json",
            contentType: "application/json",
            url: '/saveOrganization',
            data: JSON.stringify(body),
            success: function (response) {
                if(response.status == 200){
                    $('#addOrganizationDetails').trigger('reset');
                    $("#addOrganizationModal").modal('hide');
                    $.notify({
                        // options
                        message : 'Organization added successfully'
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
                    getAllOrganization ();
                }
            }
        });`

- Original Source Code: 
``interface UserRepository extends CrudRepository<User, Long> {
  long coduntByLastname(String lastname);
}``


- Modified code :
`@Repository
public interface OrganizationRepository extends CrudRepository<Organization, Long> {
    public List<Organization> findAll();
    public  Organization save(Organization organization);
    public void  deleteById(long id);
}`

## W3 Validation

The Search Orginzation has been checked for W3 Compliance through [https://validator.w3.org](https://validator.w3.org)

# References 
Colon, Jorge. JQuery AJAX POST Tutorial. www.airpair.com/js/jquery-ajax-post-tutorial.

Gierke, Oliver, et al. “Spring Data JPA - Reference Documentation.” Spring Data JPA - Reference Documentation, docs.spring.io/spring-data/jpa/docs/current/reference/html/.

Font Awesome, fontawesome.com/icons/hospital?style=solid.