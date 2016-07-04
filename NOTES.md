## Models

  User (use devise for authentication)
    username
    email
    password

    has many items
    has many rentals

  Item
    name  
    make
    model
    year

    belongs to user
    has many rentals


    type? #so as to specify instrument type
    has one type
  Rental
    price
    duration

    belongs to item
    belongs to user

  Type
    name
    #use this as a way to specify instrument?
    belongs to item

Functionality ideas:

users can list items (has many items)
user can rent an item (more than one at a time if desired)
user can make comment on an item after rental
user can rate item

have a calendar that displays rental availability?

 
