## Models

  User (use devise for authentication)
    username
    email
    password

    has many items (user or leaser)
    has many rentals (as renter)
    has many rented_items (as_renter)
    has many item_renters? #decide later if I need this. Easy to implement

  Item
    make
    model
    year
    description


    belongs to user
    has many rentals
    has many renters


    type? #so as to specify instrument type
    has one type (so as to specify instrument, pedal etc.)

  Rental
    price
    start_date
    end_date

    belongs to item
    belongs to renter

  Type
    name
    #use this as a way to specify instrument?
    belongs to item

## possibly implement

Ratings?

Comments?

## Functionality:

users can list items (has many items)
renter(user) can rent an item (more than one at a time if desired)
renter(user) can make comment on an item after rental
renter(user) can rate item

have a calendar that displays rental availability?
Need to implement validations for rental dates/overlap
  (user sql date and between functions)


todos:
