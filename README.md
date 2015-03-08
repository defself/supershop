# Super simple products catalog

Accessing the app, user will see list of products, additionally he filters them by category.
Clicking on the product will show full info and reviews for that item.
After signing in, user will be able to add his reviews.

There should be a *superuser*, which can create products and categories.

## User permissions
*Guest*
* can see products listing
* open product page

*Signed In*
* guest + add product reviews

*Super User*
* guest + signed in + manage categories, products, reviews (create/edit/remove)

## Models
* Category - name:string
* Product - title:string description:text category:references
* Review - msg:text product:reference user:reference
* User - is_admin:boolean + devise

> * Admin should have additional menu link to manage categories.
> * Add CSS styling using Bootstrap or other framework of your choice.
