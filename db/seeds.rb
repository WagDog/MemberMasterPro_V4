# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Add a user
  User.create({email: 'paulwagstaff66@gmail.com', name:'Paul Wagstaff', isAdministrator: true, password:'sheeba', password_confirmation:'sheeba'})

# Add a Card Discount
  CardDiscount.create({name:'Member Discount', description:'Standard Member Discount', discount_type:0, amount:10})

# Add some Revenue Streams
  CardRevenue.create([{name:'Bar'},{name:'Catering'}])

# Add a couple of groups
  Group.create([{name:'Draught Beers', card_revenue_id: 1, surcharge_percent:0}, {name:'Bottled Beers', card_revenue_id: 1, surcharge_percent:0},
                {name:'Misc Food', card_revenue_id: 2, surcharge_percent:0}])

# Add a VAT item
  Vat.create({name:'Standard Rate',value:20})

# Add a Receipt Printer Sort
  RpSortGroup.create({name: 'Starter', sequence: 1})

# Add a modifier
  Modifier.create({name: 'Half Pint', function: 1, mechanism: 1})

# Add a payment medium
  Medium.create({name:'Cash'})

# Add a Site
  Site.create({name: 'Romiley'})

# Add a Location
  Location.create({name: 'Main Area'})

# Add a Cashier
  Cashier.create({name:'Paul'})

# Add some products to the above groups
  Plu.create([{name:'Fosters', price_1:4, group_id:1, vat_id:1, modifier_id:1},{name:'Becks Beer', price_1:2.75, group_id:2, vat_id:1},
              name:'Sandwich', price_1:3.50, group_id:3, rp_sort_group_id:1])

# Add a Card Profile
  CardProfile.create({name:'Member Card', description:'Member Card Profile'})

# Add a Card System Record
  CardSystem.create({use_site_id:false})

# Add a Member Category
  MemberCategory.create([{name:'Full Member'},
                         {name:'Social Member'}])

# Add a Member
  Member.create([{code:'PWAG', title:'Mr', initials:'P', forename:'Paul', surname:'Wagstaff', member_category_id:1,
                 formal_salutation:'Dear Mr Wagstaff', informal_salutation:'Hi Paul', birth_date:'1966-03-02 00:00:00', join_date:'2017-01-01 00:00:00'},
                {code:'PWAG', title:'Mr', initials:'P', forename:'Peter', surname:'Wagstaff', member_category_id:1,
                 formal_salutation:'Dear Mr Wagstaff', informal_salutation:'Hi Peter', birth_date:'1950-04-05 00:00:00', join_date:'2017-01-01 00:00:00'},
                {code:'KJON', title:'Mr', initials:'K', forename:'Kevin', surname:'Jones', member_category_id:2,
                 formal_salutation:'Dear Mr Jones', informal_salutation:'Hi Kevin', birth_date:'1963-09-10 00:00:00', join_date:'2017-01-01 00:00:00'}])

# Create a Address Type. Required are Home and Business
  AddressType.create([{name:'Home'},{name:'Business'}])

# Add an Address
  Address.create([{member_id: 1, address_type_id: 1, address_1:'1 Any Street',address_2:'New Town',address_3:'Bogsville',address_4:'Chesport',post_code:'SS4 4AA'},
                  {member_id: 1, address_type_id: 2, address_1:'1 Company House',address_2:'Worksville',address_3:'Madchester',address_4:'Chesport',post_code:'M11 1AA'},
                  {member_id: 2, address_type_id: 1, address_1:'1 Peters Street',address_2:'New Town City',address_3:'Blogsville',address_4:'Chesport',post_code:'SS4 4AA'},
                  {member_id: 2, address_type_id: 2, address_1:'1 Retired House',address_2:'Restville',address_3:'Chester',address_4:'Chesport',post_code:'M11 1AA'},
                  {member_id: 3, address_type_id: 1, address_1:'1 Kev Street',address_2:'Slumsville',address_3:'Workshy Town',address_4:'Chesport',post_code:'SS4 4AA'},
                  {member_id: 3, address_type_id: 2, address_1:'1 Golf Club House',address_2:'Rumsville',address_3:'Cockfosters',address_4:'Chesport',post_code:'M11 1AA'}])

# Add an Email Address
  EmailAddress.create([{member_id: 1, email:'paulwagstaff66@gmail.com', is_default:true},
                       {member_id: 2, email:'peterwagstaffcardsandtoys.co.uk', is_default:true},
                       {member_id: 3, email:'kevinjones@cardsnadtoys.co.uk', is_default:true}])

# Add a couple of telephone number type. Required are Home, Work and Mobile
  TelephoneType.create([{name:'Home Phone'},{name:'Work Phone'},{name:'Mobile Phone'}])

# Add a telephone number
  TelephoneNumber.create([{member_id: 1, telephone_type_id:1, number:'0161 222 3333'},
                          {member_id: 2, telephone_type_id:1, number:'0161 333 4444'},
                          {member_id: 3, telephone_type_id:2, number:'07754 999999'},])

# Add a couple of member note types. Required are System and User
  MemberNoteType.create([{name:'System'},{name:'User'}])

# Add a couple of member notes
  MemberNote.create([{member_id: 1, member_note_type_id:2, title:'Pauls First Note',note:'Hello, this is the first note for Paul'},{member_id: 1, member_note_type_id:2, title:'Paul Second Note',note:'Hello, this is the second note for Paul'},
                    {member_id: 2, member_note_type_id:2, title:'Peters First Note',note:'Hello, this is the first note for Peter'},{member_id: 2, member_note_type_id:2, title:'Peters Second Note',note:'Hello, this is the second note for Peter'},
                    {member_id: 3, member_note_type_id:2, title:'Kevs First Note',note:'Hello, this is the first note for Kevin'},{member_id: 3, member_note_type_id:2, title:'Kevs Second Note',note:'Hello, this is the second note for Kevin'}])

# Add a Card Holder
  CardHolder.create([{member_id: 1, title:'Mr', initials:'P', forename:'Paul', surname:'Wagstaff', card_number:'9999888881234', card_profile_id:1, category:'Full Member'},
                     {member_id: 2, title:'Mr', initials:'P', forename:'Peter', surname:'Wagstaff', card_number:'9999888882345', card_profile_id:1, category:'Full Member'},
                     {member_id: 3, title:'Mr', initials:'P', forename:'Kevin', surname:'Jones', card_number:'9999888883456', card_profile_id:1, category:'Social Member'},])

# Add a till record
  Till.create({name:'Main Bar', change_data:'', version:'1.0.0'})



