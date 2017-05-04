# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Add a user
  User.create({email: 'paulwagstaff66@gmail.com', name:'Paul Wagstaff', isAdministrator: true, password_digest:'', remember_token:''})

# Add an Address
  Address.create({address_1:'1 Some Street',address_2:'Blogwood',address_3:'Stockport',address_4:'Cheshire',post_code:'SK6 1AA'})

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
  MemberCategory.create({name:'Full Member'})

# Add an Email Address
  EmailAddress.create({email:'paulwagstaff66@gmail.com', is_default:true})

# Add a couple of telephone number type
  TelephoneType.create([{name:'Home Telephone'},{name:'Mobile'}])

# Add a telephone number
  TelephoneNumber.create({telephone_type_id:1, number:'0161 222 3333'})

# Add a Member
  Member.create({code:'PWAG', title:'Mr', initials:'P', forename:'Paul', surname:'Wagstaff',address_id:1, telephone_number_id:1, email_address_id:1, member_category_id:1,
                 formal_salutation:'Dear Mr Wagstaff', informal_salutation:'Hi Paul', birth_date:'1966-03-02 00:00:00', join_date:'2017-01-01 00:00:00'})

# Add a Card Holder
  CardHolder.create({member_id:1, title:'Mr', initials:'P', forename:'Paul', surname:'Wagstaff', card_number:'9999888881234', card_profile_id:1, category:'Full Member'})

# Add a till record
  Till.create({name:'Main Bar', change_data:'', version:'1.0.0'})



