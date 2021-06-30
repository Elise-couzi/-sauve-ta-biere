# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

OrderBeer.destroy_all
Order.destroy_all
BarBeer.destroy_all
Beer.destroy_all
Schedule.destroy_all
Bar.destroy_all
User.destroy_all

puts "nettoyage en cours"

lapetitecouzi = User.create!(first_name: 'Elise', last_name: 'Couzi', email: 'elise@email.com', password: 'azerty', manager: false, image:"https://scontent-cdt1-1.xx.fbcdn.net/v/t1.6435-9/110113418_10220182629455105_6889760313039827473_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=ztE8VWQCGnMAX-BEAjv&tn=ZgVPPj69p7qLwUCr&_nc_ht=scontent-cdt1-1.xx&oh=9198a442f7f7ff0f239615aa7765ba39&oe=60E14AEE")
vivi = User.create!(first_name: 'Victor', last_name: 'Vano', email: 'victor@email.com', password: 'azerty', manager: false, image:"https://images.unsplash.com/photo-1595399874399-10f2444c4eb2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=950&q=80")
flav = User.create!(first_name: 'Flavie', last_name: 'Leroy', email: 'flavie@email.com', password: 'azerty', manager: false, image:"https://scontent-cdt1-1.xx.fbcdn.net/v/t1.6435-9/93225795_2798209733608893_9171054795409063936_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=DxVBJNaxe2wAX8-T0i6&_nc_ht=scontent-cdt1-1.xx&oh=4f7934d572d6dd13686f7e036feab234&oe=60E1FE07")
vaness = User.create!(first_name: 'Vanessa', last_name: 'Tsang', email: 'vanessa@email.com', password: 'azerty', manager: false, image:"https://scontent-cdt1-1.xx.fbcdn.net/v/t1.18169-9/12345652_10204965663893527_6009967808957748996_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=174925&_nc_ohc=14O2HXBIzBQAX_ZOdP8&_nc_ht=scontent-cdt1-1.xx&oh=2643a2eed9fb49247a32324531486eea&oe=60E170CD")
user5 = User.create!(first_name: 'Alexis', last_name: 'Martin', email: 'alexism@email.com', password: 'azerty', manager: true, image:"https://images.unsplash.com/photo-1542178243-bc20204b769f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fHBvcnRyYWl0fGVufDB8MnwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
user6 = User.create!(first_name: 'Adrien', last_name: 'Ladonne', email: 'adrien@email.com', password: 'azerty', manager: true, image:"https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cG9ydHJhaXR8ZW58MHwyfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60")
user7 = User.create!(first_name: 'Maxence', last_name: 'Lacasquette', email: 'maxence@email.com', password: 'azerty', manager: true)
user8 = User.create!(first_name: 'Alan', last_name: 'Mangaman', email: 'alan@email.com', password: 'azerty', manager: true)
user9 = User.create!(first_name: 'Christina', last_name: 'Brasenlair', email: 'christina@email.com', password: 'azerty', manager: true)
user10 = User.create!(first_name: 'Youssef', last_name: 'initroptar', email: 'youssef@email.com', password: 'azerty', manager: true)
user11 = User.create!(first_name: 'Thomas', last_name: 'Chienchien', email: 'thomas@email.com', password: 'azerty', manager: true)
user12 = User.create!(first_name: 'Christian', last_name: 'Tatacheese', email: 'christian@email.com', password: 'azerty', manager: true)
user13 = User.create!(first_name: 'Gaudou', last_name: 'Master', email: 'gaudou@email.com', password: 'azerty', manager: true)
user14 = User.create!(first_name: 'Marie', last_name: 'Oupate', email: 'marie@email.com', password: 'azerty', manager: true)
user15 = User.create!(first_name: 'Joséphine', last_name: 'Cartewifi', email: 'joséphine@email.com', password: 'azerty', manager: true)
user16 = User.create!(first_name: 'Robin', last_name: 'Desboites', email: 'robin@email.com', password: 'azerty', manager: true)
user17 = User.create!(first_name: 'Remy', last_name: 'Ducoup', email: 'remy@email.com', password: 'azerty', manager: true)
user18 = User.create!(first_name: 'Simon', last_name: 'Tululu', email: 'simon@email.com', password: 'azerty', manager: true)
user19 = User.create!(first_name: 'Francois-Xavier', last_name: 'Yencli', email: 'fx@email.com', password: 'azerty', manager: true)
user20 = User.create!(first_name: 'Benjam', last_name: 'Préjent', email: 'benjam@email.com', password: 'azerty', manager: true)
user21 = User.create!(first_name: 'Louis', last_name: 'Sanstete', email: 'louiss@email.com', password: 'azerty', manager: true)
user22 = User.create!(first_name: 'Xavier', last_name: 'Ge', email: 'xavierge@email.com', password: 'azerty', manager: true)
user23 = User.create!(first_name: 'Alexis', last_name: 'Ocisse', email: 'alexisO@email.com', password: 'azerty', manager: true)
user24 = User.create!(first_name: 'Cedric', last_name: 'Ard', email: 'cedricard@email.com', password: 'azerty', manager: true)
user25 = User.create!(first_name: 'Didier', last_name: 'Tonton', email: 'didiert@email.com', password: 'azerty', manager: true)
user26 = User.create!(first_name: 'Jean-Mich', last_name: 'MichMich', email: 'jeanmich@email.com', password: 'azerty', manager: true)
user27 = User.create!(first_name: 'JP', last_name: 'Pet', email: 'jpp@email.com', password: 'azerty', manager: true)
user28 = User.create!(first_name: 'Raoul', last_name: 'Mapaoule', email: 'raoul@email.com', password: 'azerty', manager: true)
user29 = User.create!(first_name: 'Dimitri', last_name: 'Selectif', email: 'dimitri@email.com', password: 'azerty', manager: true)
user30 = User.create!(first_name: 'Camille', last_name: 'Yon', email: 'camille@email.com', password: 'azerty', manager: true)
user31 = User.create!(first_name: 'Claire', last_name: 'Dautoroute', email: 'claired@email.com', password: 'azerty', manager: true)
user32 = User.create!(first_name: 'Catherine', last_name: 'Delievre', email: 'catherine@email.com', password: 'azerty', manager: true)
user33 = User.create!(first_name: 'Stéphanie', last_name: 'Aubabie', email: 'stéphaniea@email.com', password: 'azerty', manager: true)
user34 = User.create!(first_name: 'Cindy', last_name: 'Moiuntruc', email: 'cindym@email.com', password: 'azerty', manager: true)
user35 = User.create!(first_name: 'Virginie', last_name: 'Ponne', email: 'virginiep@email.com', password: 'azerty', manager: true)
user36 = User.create!(first_name: 'Julie', last_name: 'Masseur', email: 'juliema@email.com', password: 'azerty', manager: true)
user37 = User.create!(first_name: 'Francoise', last_name: 'Tatie', email: 'francoiset@email.com', password: 'azerty', manager: true)
user38 = User.create!(first_name: 'Eugénie', last_name: 'Delalampe', email: 'eugénie@email.com', password: 'azerty', manager: true)
user39 = User.create!(first_name: 'Marion', last_name: 'Yonyon', email: 'marion@email.com', password: 'azerty', manager: true)
user40 = User.create!(first_name: 'Paula', last_name: 'Douzan', email: 'paula@email.com', password: 'azerty', manager: true, image: "https://images.unsplash.com/photo-1479936343636-73cdc5aae0c3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cG9ydHJhaXR8ZW58MHwyfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
user41 = User.create!(first_name: 'Laetitia', last_name: 'Chandeleer', email: 'laetitia@email.com', password: 'azerty', manager: true)
user42 = User.create!(first_name: 'Kevin', last_name: 'Teidje', email: 'kevin@email.com', password: 'azerty', manager: true)
user43 = User.create!(first_name: 'Naomie', last_name: 'Campbell', email: 'naomiec@email.com', password: 'azerty', manager: true)
user44 = User.create!(first_name: 'Burak', last_name: 'Yilmaz', email: 'buraky@email.com', password: 'azerty', manager: true)
user45 = User.create!(first_name: 'Zinedine', last_name: 'Zidane', email: 'zz@email.com', password: 'azerty', manager: true)
user46 = User.create!(first_name: 'Raymond', last_name: 'Domenech', email: 'raymondd@email.com', password: 'azerty', manager: true)
user47 = User.create!(first_name: 'Philippe', last_name: 'Risoli', email: 'philipper@email.com', password: 'azerty', manager: true)
user48 = User.create!(first_name: 'James', last_name: 'Miaouss', email: 'jamesm@email.com', password: 'azerty', manager: true)
user49 = User.create!(first_name: 'Mowgli', last_name: 'Delajungle', email: 'mowgli@email.com', password: 'azerty', manager: true)
user50 = User.create!(first_name: 'Asterix', last_name: 'Delagourde', email: 'astérix@email.com', password: 'azerty', manager: true)

puts "#{User.count} utilisateurs ajoutés"


bar1 = Bar.create!(name: 'Magnum Café ', address: '55 rue Masséna, 59800 Lille', user: user6, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar2 = Bar.create!(name: 'Lîlot Bar', address: '253 rue Nationale, 59800 Lille', user: user7, logo:"https://scontent-cdt1-1.xx.fbcdn.net/v/t1.18169-9/10616681_699524640130952_4757108606902871396_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=pGcXAc6PUA4AX84Nth7&_nc_ht=scontent-cdt1-1.xx&oh=e8274cc35e3310b83011b9d8a1576364&oe=60DF9B77", photo:"https://images.unsplash.com/photo-1575444758702-4a6b9222336e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80")
bar3 = Bar.create!(name: 'La Nouvelle aventure ', address: '356 rue Léon Gambetta, 59000 Lille', user: user8, logo:"https://scontent-cdg2-1.xx.fbcdn.net/v/t1.6435-9/53732621_2108587169196670_2648479119083307008_n.jpg?_nc_cat=107&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=CILDArJx0H4AX9T-VSK&_nc_ht=scontent-cdg2-1.xx&oh=b3b80ad82a750dca0d95fe52fb2fdb50&oe=60DF93D1", photo:"https://images.unsplash.com/photo-1470337458703-46ad1756a187?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1049&q=80")
bar4 = Bar.create!(name: 'Délirium café  ', address: '50 rue Masséna, 59800 Lille',  user: user9, logo:"https://scontent-cdt1-1.xx.fbcdn.net/v/t1.6435-9/69461867_110680373644659_4785272610663432192_n.png?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=kbPLQfTriAUAX8WO6nP&_nc_ht=scontent-cdt1-1.xx&oh=e639e65c1f2b766a56fe208496656a5a&oe=60E0776E", photo:"https://images.unsplash.com/photo-1572116469696-31de0f17cc34?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YmFyfGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60")
bar5 = Bar.create!(name: 'Le barbier qui fume ', address: '51 Rue d Esch-sur-Alzette, 59800 Lille, France', user: user10, logo:"https://scontent-cdg2-1.xx.fbcdn.net/v/t1.18169-9/21559086_1498430313544319_5118826561669818126_n.png?_nc_cat=107&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=pGSj79lLyWMAX8H5ZrV&_nc_ht=scontent-cdg2-1.xx&oh=cb23d6cbfb661f5653f320ffe43c4b2a&oe=60E0F8B5", photo: "https://images.unsplash.com/photo-1516997121675-4c2d1684aa3e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YmFyfGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60")
bar6 = Bar.create!(name: 'Le Lyautey ', address: '12 Rue de Wazemmes, 59000 Lille, France', user: user11, logo:"https://scontent-cdg2-1.xx.fbcdn.net/v/t31.18172-8/13913981_1744532535827147_9139454396423506205_o.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=TU5hJMX7MFwAX_VGRSm&_nc_ht=scontent-cdg2-1.xx&oh=9385f1ca6573b2f9cd47a20ad6f3b484&oe=60E08C1F", photo:"https://images.unsplash.com/photo-1508253730651-e5ace80a7025?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YmFyfGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60")
bar7 = Bar.create!(name: 'Kee Mao Bar ', address: '244 Rue Léon Gambetta, 59800 Lille, France', user: user12, logo:"https://scontent-cdg2-1.xx.fbcdn.net/v/t1.6435-9/42383541_530133434092076_7420059567280619520_n.jpg?_nc_cat=100&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=yQsO5dYcw3gAX_gc27p&_nc_ht=scontent-cdg2-1.xx&oh=b446ff1e5af59ace7b8bbdbe36c1b0ef&oe=60DF915E", photo:"https://images.unsplash.com/photo-1462539405390-d0bdb635c7d1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGJhcnxlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60")
bar8 = Bar.create!(name: 'Le Bistrot du Nouveau Siècle ', address: '11 Place Pierre Mendès France, 59800 Lille, France', user: user13, logo:"https://scontent-cdt1-1.xx.fbcdn.net/v/t31.18172-8/10497166_262097390663640_6043886544177000963_o.jpg?_nc_cat=105&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=XwLtk118cSkAX_vYoJR&_nc_ht=scontent-cdt1-1.xx&oh=6e9fa75d0936cd4a6e3036b2b63c92d9&oe=60DFF69C", photo:"https://images.unsplash.com/photo-1591243315780-978fd00ff9db?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzF8fGJhcnxlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60")
bar9 = Bar.create!(name: 'La Cloche ', address: '13 Place du Théâtre', user: user14, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar10 = Bar.create!(name: 'Lestaminet ', address: '7 Rue Auber, 59800 Lille, France', user: user15, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar11 = Bar.create!(name: 'La Trav Ieseg ', address: '2 Rue Solférino, 59000 Lille, France', user: user16, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar12 = Bar.create!(name: 'Le Lobby ', address: '10 Rue Royale, 59800 Lille', user: user17, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar13 = Bar.create!(name: 'Brasserie André  ', address: '71 rue de Béthune', user: user18, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar14 = Bar.create!(name: 'Les 3 Brasseurs ', address: 'Place de la Gare, 59800 Lille, France', user: user19, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar15 = Bar.create!(name: 'Au Paon d Or ', address: '2 place de Béthune, Lille, France', user: user20, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar16 = Bar.create!(name: 'La Ducassse ', address: '95 rue Solférino , Lille, France', user: user21, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar17 = Bar.create!(name: 'Lille Opéra Brasserie ', address: '32 rue Lepelletier , Lille, France', user: user22, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar18 = Bar.create!(name: 'La Capsule Lille ', address: '25 Rue des trois Mollettes, 59800 Lille', user: user23, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar19 = Bar.create!(name: 'Urban Bar ', address: '22 Rue du Court Debout, 59800 Lille, France', user: user24, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar20 = Bar.create!(name: 'LEmbuscade ', address: '311 Rue de Lannoy, 59650 Villeneuve-d Ascq', user: user25, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar21 = Bar.create!(name: 'Bar restaurant l Espérance ', address: '3 Place de la République, 59650 Villeneuve-d Ascq', user: user26, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar22 = Bar.create!(name: 'Le Café de Paris ', address: '45 Avenue de Friedland, 75008 Paris', user: user27, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar23 = Bar.create!(name: 'Brasserie Cézanne ', address: '45 Avenue Kléber, 75116 Paris', user: user28, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar24 = Bar.create!(name: 'Aux Émotions ', address: '1 Rue Dante, 75005 Paris',  user: user29, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar25 = Bar.create!(name: 'The Great Canadian PUB', address: '25 Quai des Grands Augustins, 75006 Paris', user: user30, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar26 = Bar.create!(name: 'La Mousse Touch', address: '19 Boulevard Jean-Baptiste Lebas, 59000 Lille', user: user31, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar27 = Bar.create!(name: 'La Craft Touch ', address: '9 Place Nouvelle Aventure, 59000 Lille', user: user32, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar28 = Bar.create!(name: 'Bar des Familles', address: '21 Rue de Lappe, 75011 Paris', user: user33, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar29 = Bar.create!(name: 'La Pépite', address: '12 Place Sébastopol, 59000 Lille', user: user34, logo:"https://scontent-cdt1-1.xx.fbcdn.net/v/t1.6435-9/181213866_2870709716503609_6965852845601469707_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=A46tRVaZCbkAX81jg1o&_nc_oc=AQnsJcWo5sLow5-rmVHSXiLK_PMT3IyrNf6-OXCrT7Z3exlD_EMQaLDOSjdKifFfsiMCPpbKsiu24dF-j8o9yiUq&_nc_ht=scontent-cdt1-1.xx&oh=08cbc622aebbb05b471eb09deecc540b&oe=60E04B18", photo:"https://images.unsplash.com/photo-1538333581680-29dd4752ddf2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTB8fGJhcnxlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60")
bar30 = Bar.create!(name: 'La Capsule ', address: '25 Rue des trois Mollettes, 59800 Lille', user: user35, photo:"https://images.unsplash.com/photo-1573159625584-56169888c23d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTJ8fGJhcnxlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60")
bar31 = Bar.create!(name: 'Le Gastama ', address: '109 Rue Saint-André, 59000 Lille', user: user36, logo:"https://scontent-cdg2-1.xx.fbcdn.net/v/t1.6435-9/198940098_339097684318770_5541555406186948090_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=X198qLj-rdEAX9kFmFm&_nc_ht=scontent-cdg2-1.xx&oh=e7600095bd916df70fa9db2ee75aa6fa&oe=60DFBF56", photo:"https://images.unsplash.com/photo-1538334591575-c5f86eb5793c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjZ8fGJhcnxlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60")
bar32 = Bar.create!(name: 'Le Barnetts ', address: '30 Rue Saint-Sébastien, 59800 Lille', user: user37, logo:"https://scontent-cdt1-1.xx.fbcdn.net/v/t1.6435-9/167807947_127813819352261_8896292740945164386_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=n-wvgnOopTAAX8ApWUF&_nc_ht=scontent-cdt1-1.xx&oh=3073fd50e90a5ba19947fd4d03d37570&oe=60DF90FE", photo:"https://images.unsplash.com/photo-1513309914637-65c20a5962e1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
bar33 = Bar.create!(name: 'Le Taste n brews ', address: '348 Rue de Menin, 59700 Marcq-en-Barœul', user: user38, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar34 = Bar.create!(name: 'Le Cirque', address: '139 Rue des Postes, 59000 Lille', user: user39, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar35 = Bar.create!(name: 'La Biche et le renard', address: '14 Rue de Gand, 59800 Lille', user: user40, logo:"https://scontent-cdt1-1.xx.fbcdn.net/v/t1.6435-9/192005061_170394645091756_5311211995197803572_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=aS5ZHSBBO-sAX9ZnMMz&_nc_ht=scontent-cdt1-1.xx&oh=989525c7d24537802436aa1ae03ffc46&oe=60E03637", photo:"https://images.unsplash.com/photo-1555658636-6e4a36218be7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTg4fHxiYXJ8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60")
bar36 = Bar.create!(name: 'Nul Bar Ailleurs', address: '18 Rue de Cotte, 75012 Paris, France', user: user41, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar37 = Bar.create!(name: 'La liberté ', address: '1 Rue de la Gaité, 75014 Paris, France', user: user42, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar38 = Bar.create!(name: 'LEntrePotes', address: '9 Rue Royale, 59800 Lille', user: user43, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar39 = Bar.create!(name: 'À bout de souffle ', address: ' 17 Rue Campagne Première, 75014 Paris', user: user44, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar40 = Bar.create!(name: 'L Archi Bar ', address: '13bis Rue Campagne Première, 75014 Paris, France', user: user45, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar41 = Bar.create!(name: 'Le Falstaff ', address: '42 Rue du Montparnasse, 75014 Paris, France', user: user46, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar42 = Bar.create!(name: 'Le Falguière', address: '129 Rue de Vaugirard, 75015 Paris, France', user: user50, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar43 = Bar.create!(name: 'L Atelier de Vaugirard', address: '150 Rue de Vaugirard, 75015 Paris', user: user47, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar44 = Bar.create!(name: 'L Italy Cafe ', address: '187 Rue de Vaugirard', user: user48, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
bar45 = Bar.create!(name: 'Le Smoke ', address: '29 Rue Delambre, 75014 Paris',  user: user49, photo:"https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")


puts "#{Bar.count} bars ajoutés"

beer1 = Beer.create!(name: 'Cuvée des Troll', alcohol_degree: 7, category: 'blonde', description:"La Cuvée des Trolls est née en 2000 dans les cuves de la micro-brasserie “Le Brasse-Temps“ créée par la brasserie Dubuisson à Louvain-La-Neuve. C’est une bière blonde non filtrée et donc naturellement trouble.")
beer2 = Beer.create!(name: 'Anosteke', alcohol_degree: 5, category: 'blonde', description:"Brassée en suivant les tendances brassicoles du moment cette bière s’apparente au style de bière IPA. C’est un style de bière où le houblon joue un rôle prédominant car il est utilisé en plus grandes quantités qu’à l’habitude. Cela va donner des bières à l’amertume plus prononcée, mais qui dégage en contrepartie des saveurs plus fleuries et fruitées. Cette Anosteké Blonde libère dans le verre un corps au blond pale légèrement doré. Elle se pare d’une belle mousse blanche et épaisse à la longue persistance dans le verre. De celui-ci s’échappent des arômes fleuris et fruités des plus agréables et qui évoquent notamment les agrumes. On découvre ensuite des saveurs elles aussi très fruitées et très fleuries, accompagnées cette fois d’une puissante amertume. Celle-ci s’installe et perdure d’ailleurs extrêmement longtemps en bouche. Une belle bière qui se démarque admirablement de ses consœurs françaises par son caractère bien houblonné. Pour information, Anosteké est la traduction phonétique de « tot anoste keer », expression flamande signifiant « à la prochaine ». Et on ne pouvait rêver meilleur nom pour cette bière dont chaque fin de bouteille sonne comme un appel à la prochaine ! ")
beer3 = Beer.create!(name: 'Chouffe', alcohol_degree: 8, category: 'blonde', description:"La Chouffe est une Bière blonde non filtrée, refermentée aussi bien en bouteille qu’en fût. Elle est agréablement fruitée, épicée à la coriandre et légèrement houblonnée. L’abus d’alcool est dangereux pour la santé, consommez avec modération.")
beer4 = Beer.create!(name: 'Duvel', alcohol_degree: 8.5, category: 'blonde', description:"Duvel fait toujours office de référence parmi les bières blondes de spécialité. Ce sont les sortes de houblon les plus nobles utilisées lors de la fabrication qui confèrent à la Duvel ce bouquet épicé qui monte au nez accompagné de sa note d’agrume tirant légèrement sur le pamplemousse. Cela se retrouve également dans son goût parfaitement équilibré avec une légère touche épicée. Grâce à sa teneur élevée en CO2, la bière dévoile une rondeur divine en bouche. Une Duvel se déguste aussi bien comme désaltérant que comme apéritif.")
beer5 = Beer.create!(name: 'Delirium', alcohol_degree: 8.5, category: 'blonde', description:"Un fameux goût d'alcool s'élève dans la bouche et réchaufe ainsi la langue et le palet. Le goût est également caractérisé par sa rondeur. L'arrière-goût est fort, long et sec-amer.")
beer6 = Beer.create!(name: 'Kwak', alcohol_degree: 8.4, category: 'blonde', description:"La légende veut que le nom de la bière provienne du bruit que l'on entend quand on boit son verre cul-sec, et que l'air remonte dans celui-ci, laissant entendre le fameux « kwak »2. Il s'agit en fait du nom de l'inventeur de la bière, en 1791, le brasseur Pauwel Kwak.")
beer7 = Beer.create!(name: 'Barbar', alcohol_degree: 8, category: 'blonde', description:"D’un blond profond, la Barbãr dégage au travers de sa mousse onctueuse un nez puissant marqué de miel sans être ostentatoire, accompagné d’un florilège de notes florales, d’épices et d’agrumes.")
beer8 = Beer.create!(name: 'Jupiler', alcohol_degree: 5.2, category: 'blonde', description:"La Jupiler est une bière blonde de fermentation basse et de type Pils brassée depuis 1966 en Belgique. En près de 50 ans, elle a su s'imposer comme la référence en termes de pils belge. Ainsi, elle est devenue la bière la plus vendue en Belgique !C'est une bière à la robe jaune claire qui dans le nez comme en bouche propose un bel équilibre entre de légère saveurs maltées et houblonnées. La Jupiler est très désaltérante se déguste à une température conseillée de 3°C. Elle sera parfaite pour rafraichir les lourdes journées d'été ou pour accompagner les premiers ensoleillements printaniers.Cette bière belge se déguste idéalement dans son verre Jupiler.")
beer9 = Beer.create!(name: 'Queue de Charrue', alcohol_degree: 6.6, category: 'blonde', description: "Créé en 2009 au vue du succès grandissant de la Queue de Charrue Triple, la version blonde des bières de la Brasserie Vanuxeem est peut être la petite dernière, il n'empêche qu'elle a déjà pas mal de bouteille ! La Queue de Charrue Blonde est une bière belge de fermentation haute qui présente dans le verre une robe de couleur blond clair à la transparence limpide mais troublée par la présence de levure dans la bouteille. Le tout est couvert d'une couche de mousse assez abondante mais peu persistante. Elle présente moins d'amertume que la Triple mais reste très moelleuse en bouche et présente un léger arôme fruité ainsi qu'un goût doux et généreux.Le nom 'Queue de Charrue' correspond à la traduction du nom flamand du village de Ploegsteert, situé à la frontière franco-belge, où est localisée la brasserie Vanuxeem !)")
beer10 = Beer.create!(name: 'Anosteke IPA', alcohol_degree: 6, category: 'IPA', description:"Issue de la Brasserie du Pays Flamand, l'Anosteke IPA est une bière de type India Pale Ale, brassée dans le nord de la France à partir de 3 houblons américains, qui lui confère son caractère houblonné si particulier. A l'oeil, elle présente robe dorée aux reflets orange surmontée par une tête crémeuse blanc cassé.")
beer11 = Beer.create!(name: 'Saison Dupond Bio', alcohol_degree: 5.5, category: 'blonde', description:"La Saison Dupont Biologique de la Brasserie Dupont est une bière blonde douce et légère made in Belgium. Elle possède une robe dorée qui tire vers l'ambrée surmontée d'une belle mousse couleur blanc cassé. Au nez, elle dégage des arômes fruités d'agrumes comme le pamplemousse et le citron dans un ensemble épicé. En bouche, elle est rafraîchissante et équilibrée avec une belle amertume persistante pour des saveurs maltées, fruitées et houblonnées. Son corps moyen, sa texture huileuse et sa carbonatation légère en font une bière très agréable à consommer en terrasse ou à l'apéritif.")
beer12 = Beer.create!(name: 'Cuvée des Jonquilles', alcohol_degree: 7, category: 'blonde', description:"Surement la plus connue des bières de la brasserie Au Baron, cette Cuvée des Jonquilles commence à se faire un nom en France mais aussi à l'étranger. Rappelons ainsi que cette bière a notamment gagné la Médaille d'Or au Brussel Beer Challenge en 2012 ! ")
beer14 = Beer.create!(name: 'Rince Cochon', alcohol_degree: 8.5, category: 'rouge', description:"Née dans les années 90, la Rince Cochon a été remise au goût du jour il y a quelques années et occupe depuis le devant de la scène dans la catégorie bière de spécialité. Véritable bière de spécialité, c’est une bière blonde qui titre 8.5 degrés, dorée, douce et ronde, légèrement épicée avec un léger retour en amertume. L’abus d’alcool est dangereux pour la santé, consommez avec modération.")
beer15 = Beer.create!(name: 'Kasteel', alcohol_degree: 5, category: 'rouge', description:"La Kasteel (bière du château) est une bière brassée par la brasserie Van Honsebrouck. Le château visible sur l’étiquette de la bouteille est celui d’Ingelmunster. Ce magnifique édifice a été racheté en 1986 par la famille Van Honsebrouck. Il est ouvert au public et le parc et les caves du château peuvent être visités. Petite sœur fruitée de la gamme Kasteel, la Kasteel Rouge est un mélange de la traditionnelle Kasteel Brune avec une bière aux cerises du Nord ayant mûri pendant une période d’au moins six mois. Cette bière se présente sous une robe de couleur rouge à l’éclat rubis. ")
beer16 = Beer.create!(name: 'Liefmans', alcohol_degree: 5, category: 'rouge', description:"Une bière richement fruitée, rafraîchissante et conviviale brassée par Liefmans. L’abus d’alcool est dangereux pour la santé, consommez avec modération.")
beer17 = Beer.create!(name: 'Belzébuth', alcohol_degree: 2.8, category: 'fruitée', description:"La Cuvée des Trolls est née en 2000 dans les cuves de la micro-brasserie “Le Brasse-Temps“ créée par la brasserie Dubuisson à Louvain-La-Neuve. C’est une bière blonde non filtrée et donc naturellement trouble.")
beer18 = Beer.create!(name: 'Pietra', alcohol_degree: 6.5, category: 'rouge', description:"ROSSA, pour sa belle couleur pourpre, celle des fruits rouges qui lui confèrent ses arômes, et reflète son caractère généreux et audacieux.Alliant la qualité « Brasserie Pietra » à la fraîcheur des fruits rouges, PIETRA ROSSA est finement aromatisée à la cerise et à la framboise, avec une touche de mûre. Sa robe est d’un rouge intense soulignée d’un léger trouble naturel et couronnée d’une mousse profonde et dense. Son nez superbe de cerise fraîche ne déçoit pas en bouche : un arôme festif de notes de griottes, une pointe de framboise et de mûre fraîchement cueillies. Cette bière gourmande, qui titre 6,5% d’alcool, offre un subtil équilibre sucré/amer légèrement nuancé par une acidité rafraîchissante et désaltérante. Par son fruité, sa douceur, et sa fraîcheur, Pietra Rossa est une belle noctambule, qui se déguste en soirée, mais aussi à l’apéritif ou pendant les repas.")
beer19 = Beer.create!(name: 'Hoegaarden', alcohol_degree: 5, category: 'blanche', description:"La Hoegaarden est une bière belge blanche qui compte parmi les plus connues hors du royaume de Belgique.! Elle est brassée avec de la coriandre et des zestes de citron pour plus de recherche de goût et de fraîcheur. La Hoegaarden présente une intrigante robe d’un blond troublé qui s’explique par le fait que cette bière n’est pas filtrée avant l’embouteillage et contient donc encore des levures en suspend")
beer20 = Beer.create!(name: 'Lupulus', alcohol_degree: 8.5, category: 'IPA', description:"La Lupulus est une bière blonde de 8,5 % d’alcool, refermentée en bouteilles champenoises et en fûts. La volonté de ne pas filtrer ni de pasteuriser cette bière assure la préservation de toutes ses qualités aromatiques et de goût. L’utilisation de houblons en quantités importantes tant en chaudière qu’en pleine fermentation donne à cet or liquide une fraîcheur ainsi qu’un bouquet incomparable. Conservez-la, comme il se doit, à côté de vos grands crus préférés et servez-la à une température entre 8 et 12°. Vous verrez, vous serez émerveillés!")
beer21 = Beer.create!(name: 'Paix Dieu', alcohol_degree: 10, category: 'blonde', description:"C’est une bière, à haute fermentation et refermentation en bouteille, titrant à 10% vol alc. C’est une blonde forte, de couleur blond doré, une triple onctueuse et pleine de caractère dans la plus pure tradition des bières belges d’abbaye. L’abus d’alcool est dangereux pour la santé, consommez avec modération.")

puts "#{Beer.count} bières ajoutées"

bar_beers1 = BarBeer.create!(quantity: 10, selling_price: 3 , beer: beer1, bar:bar35)
bar_beers2 = BarBeer.create!(quantity: 9, selling_price: 4 , beer: beer2, bar:bar35)
bar_beers3 = BarBeer.create!(quantity: 12, selling_price: 3 , beer: beer11, bar:bar31)
bar_beers4 = BarBeer.create!(quantity: 15, selling_price: 5 , beer: beer8, bar:bar31)
bar_beers5 = BarBeer.create!(quantity: 5, selling_price: 3.5 , beer: beer7, bar:bar32)
bar_beers6 = BarBeer.create!(quantity: 6, selling_price: 3 , beer: beer6, bar:bar32)
bar_beers7 = BarBeer.create!(quantity: 7, selling_price: 5 , beer: beer5, bar:bar29)
bar_beers8 = BarBeer.create!(quantity: 8, selling_price: 5 , beer: beer4, bar:bar29)
bar_beers9 = BarBeer.create!(quantity: 11, selling_price: 4 , beer: beer3, bar:bar2)
bar_beers10 = BarBeer.create!(quantity: 10, selling_price: 3 , beer: beer12, bar:bar2)
bar_beers11 = BarBeer.create!(quantity: 4, selling_price: 4 , beer: beer12, bar:bar3)
bar_beers12 = BarBeer.create!(quantity: 8, selling_price: 4 , beer: beer14, bar:bar4)
bar_beers13 = BarBeer.create!(quantity: 9, selling_price: 4 , beer: beer15, bar:bar4)
bar_beers14 = BarBeer.create!(quantity: 6, selling_price: 4 , beer: beer16, bar:bar5)
bar_beers15 = BarBeer.create!(quantity: 7, selling_price: 3 , beer: beer17, bar:bar5)
bar_beers16 = BarBeer.create!(quantity: 5, selling_price: 4 , beer: beer5, bar:bar6)
bar_beers17 = BarBeer.create!(quantity: 8, selling_price: 3 , beer: beer6, bar:bar6)
bar_beers18 = BarBeer.create!(quantity: 9, selling_price: 4 , beer: beer19, bar:bar7)
bar_beers19 = BarBeer.create!(quantity: 7, selling_price: 3 , beer: beer20, bar:bar7)
bar_beers20 = BarBeer.create!(quantity: 5, selling_price: 3 , beer: beer21, bar:bar8)

puts "#{BarBeer.count} offres de bières ajoutées"


order1 = Order.create!(state:"pending", paid_at:Date.new(2021, 8, 02), user: lapetitecouzi, amount_total_cents: 0)
order2 = Order.create!(state:"pending", paid_at:Date.new(2021, 02, 6), user: vivi, amount_total_cents: 0)
order3 = Order.create!(state:"pending", paid_at:Date.new(2021, 02, 6), user: flav, amount_total_cents: 0)
order4 = Order.create!(state:"pending", paid_at:Date.new(2021, 02, 6), user: vaness,amount_total_cents: 0)


puts "#{Order.count} commandes ajoutées"

order_beer1 = OrderBeer.create!(quantity:1, buying_price:3, bar_beer: bar_beers1, order: order1, amount_cents: 400)
order_beer2 = OrderBeer.create!(quantity:2, buying_price:3, bar_beer: bar_beers2, order: order1, amount_cents: 550)
order_beer3 = OrderBeer.create!(quantity:1, buying_price:3, bar_beer: bar_beers1, order: order2, amount_cents: 350)
order_beer3 = OrderBeer.create!(quantity:3, buying_price:3, bar_beer: bar_beers2, order: order2, amount_cents: 600)
order_beer5 = OrderBeer.create!(quantity:1, buying_price:3, bar_beer: bar_beers3, order: order3, amount_cents: 750)
order_beer6 = OrderBeer.create!(quantity:1, buying_price:3, bar_beer: bar_beers3, order: order3, amount_cents: 800)
order_beer7 = OrderBeer.create!(quantity:1, buying_price:3, bar_beer: bar_beers3, order: order4, amount_cents: 800)


puts "#{OrderBeer.count} détails de commandes ajoutées"


schedule1 = Schedule.create!(day:"Lundi", start_time: "17", end_time: "19", bar:bar35)

puts "#{Schedule.count} plages horraires ajoutées"
puts "Relax, prend de la CBD tes seeds sont à jour"
