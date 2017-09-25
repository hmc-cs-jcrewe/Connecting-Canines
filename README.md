# Connecting-Canines
### Contributors
Blake Larkin(blakeLarkin) <br/>
Chloe Elliot(hmc-cs-celliott) <br/>
Jackson Crewe(hmc-cs-jcrewe) <br/>
Montana Roberts(MontanaRoberts) <br/>
<br/>
### Summary

Canine Connection provides a way for dogs owners and appreciators alike to create and share information and interact with one another through a common interest. Dog owners can post interesting pup pictures and leave a witty description. Appreciators can paw-ruse the feed, chosing to upbork dogs or continue on to the next pupper. <br/>

This application is a social media application specifically geared towards dogs and dog-lovers which allows users to form a profile for their dog then like, and eventuall, follow and instant message other dogs and finally post updates on their own profile for other users to appreciate in their user feed. <br/>
<br/>
### Minimum Viable Product 

Our minimum viable product will allow the user to view a picture of a dog posted by another user into the database, then hit next and have another dog's picture be pulled up. We will build this on top of our existing code for the previous Instagram project found [here](https://github.com/MontanaRoberts/MontanaRoberts-Instagram).
<br/><br/>

### Functionality 

Functionality of this app is broken down between the two user roles, Dog Appreciator and Dog Owner.
<br/>
#### Appreciator
Appreciators can look through uploaded pupper pics in the main feed, and choose to label a dog a "Good Dog", continuing on to the next picture, or a "Great Dog", upborking (liking) the dog before continuing on.
<br/>
#### Owner
Owners have the same functionality as Appreciators, with the addition of adding new posts. The Owner gets to write a description and chose an image for their post, as well as labeling the post with the dogs name. After creating a post, only the original Owner can delete it.
<br/><br/>
### Architecture
We used the gems CanCanCan, Devise, and Paperclip to handle roles, authentification, and image uploading respectively.
<br/>
We have two primary models and controllers, one for users and one for posts. The post controller talks to the appropriate model to handle updating upborks and to chain the posts in order from one to another until the end page is reached. This model contains attributes for the post's image, name, description, the connected owner, and the number of likes the picture has recieved.
<br/>
The user controller talks to the appropriate model to handle roles and allowances for who can and can't create new posts or delete existing posts. This model handles the user's role, as well as the associated email and password.
<br/><br/>
### Development Issues 
Our biggest issue by and large was setting up user roles. Devise did not seem to have a good system for this, so we had to hack together a fix to glue it nicely alongside CanCanCan's roles. In the end we were able to add a set of radio buttons at the registration phase to address this.
</br>
We also initially had confusion with the controller-model-view architecture as it applied to Rails, but we began to sail much more smoothly the more we understood this.
</br>
### References
[Montana's original Instagram Repo](https://github.com/MontanaRoberts/MontanaRoberts-Instagram)
[Paperclip](https://github.com/thoughtbot/paperclip)
[CanCanCan](https://github.com/CanCanCommunity/cancancan)
[Devise](https://github.com/plataformatec/devise) 
