# BackEnd Section

## API 

this is class contain all the methods for the Api requests such as get , post , put and update 

### Get method
 - accept two parameters uri (required) and token (using to Authentecation , it is optional) 
 - headersList is list to contain all arguments which we send with the response such as token
 - we use get method from http and in get method we use Uri(abstract class) to use parse method and put uri which we accept in parameter
 - we accept the Response in variable (response) 
 - if the status code is 200 (succeful) get method will return the Decoded response's body (all products) else it will return throw exception




 ### Post method
 - accept three parameters uri (required) , body (dynamic) and token (optional)
 - headers list is list to contain all arguments which we send with the response such as token
 - we use Post method from http and in post method we use Uri (abstract class) to use parse method and put uri and body which we accept in parameter to send it to firebase and create new object with the informations which send to in body parameter
 - we accept the Response in variable (response) 
 - if the status code is 200 (succeful) get method will return the Decoded response's body (all products) else it will return throw exception



 ### Put method 
 - accept three parameters uri (required) , body (dynamic) and token (optional)
 - headers list is list to contain all arguments which we send with the response such as token
 - we use Put method from http and in Put method we use Uri (abstract class) to use parse method and put uri and body which we accept in parameter to send it to firebase and update object with the new informations which send to in body parameter
 - we accept the Response in variable (response) 
 - if the status code is 200 (succeful) get method will return the Decoded response's body (all products) else it will return throw exception



-----------------

## Services


### Add Product 

- it is method is used to add product to ProductsList 
- it accepts the attributes for product 
- we use post method from Api to add product
- we accept the post's return by Map because the return of post is response and response is map 
- we send in uri parameter the uri was made from Api and send the body by map because the api accept the attribute by map 
- send the Map to ProductModel.fromjson 



### Get All Categories

- it is used to get all categories type from api
- we use the get method from Api 
- we accept the list which we get from get method by dataList
- we set the uri which we get from api 



### Get Category 

- it is used to get all product which they have the same category which was sent with the parameters 
- we accept parameter category (required) and send it with uri (this form we get by api)
- we accept the list which get by get method in list (data) contain all product have the category type 
- we create loop to send all product in data to ProductModel.fromJson to handle its attribute and show in the screen 



### Get all Categories

- it is used to get all product 
- we accept the list which get by get method in list (data) contain all products 
- we create loop to send all products in data to ProductModel.fromJson to handle its attribute and show in the screen



### Update Product 

- it is method is used to update product to ProductsList 
- it accepts the attributes for product 
- we use post method from Api to add product
- we accept the post's return by Map because the return of post is response and response is map 
- we send in uri parameter the uri was made from Api and send the body by map because the api accept the attribute by map 
- send the Map to ProductModel.fromjson to to update the product model with new attribute




--------------------

# FrontEnd Section


## Widgets


### Custom Button 

- it is GestureDetector
- it has two attribute  onTap ( void Function() ) and text (String)
- onTap used to set the opertion that the button will do 



### Custom Form 

- it has four attribute onChanged , hintText , textInputType , obscureText
- hintText is using to help the user to fill the correct infos
- textInputType is using to determine what is the type of input must the user to put it in field
- onChanged ( Function(String)? ) , it is used to get the value from field by its parameters
- obscureText is using to forbidden any action in the form when the state of form is loading state



### Custom Card

- it accept a ProductModel and turn it to product card.  it is a GestureDetector when click on it , move us to Edit screen with the current ProductModel
- we use Stack widget , it is using to put the widgets up of each other 
- in the Stack the widget writing first put in last and writing last put first but we can determine the position in Stack by Position widget 
- we use Container widget to use BoxShadow to add shadow to container and the card ( search about BoxShadow attributes ) and to specified width and height 
- Card widget it is built-in templete help to put the attributes in organized form and use evalutation attribute to sepcific the shadow
- we use position widget to locate the image in specific location 


-------------------------




