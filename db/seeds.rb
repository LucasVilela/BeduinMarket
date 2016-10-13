User.destroy_all
user1 = User.create! :email => 'jack@ga.co', :password => 'chicken', :password_confirmation => 'chicken'
user2 = User.create! :email => 'badger@ga.co', :password => 'chicken', :password_confirmation => 'chicken'
user3 = User.create! :email => 'admin@ga.co', :password => 'chicken', :password_confirmation => 'chicken'

p "User count: #{User.all.count}"

WishList.destroy_all
w1 = WishList.create
w2 = WishList.create
w3 = WishList.create

user1.wish_list = w1
user2.wish_list = w2
user3.wish_list = w3

Product.delete_all

p1 = Product.create(:title =>'Invisible Bike',
:description =>
%{<p>I wonder which is less comfortable: Jimmy Kuehnle's Invisible Bike or Jimmy Kuehnle's invisible outfit. In other words, would you rather require rectal surgery or pass out from heat exhaustion and develop a full-body rash? Kuehnle designed and built his "Bike? What bike? I don't see any bike" bike out of bullet proof glass, presumably so that it can survive a drive-by even if its rider doesn't. Save its chain and bearings, the entire town-tool-arounder is transparent. Kuehnle both employs the biped as a legitimate means of transportation, and displays it as a sculpture in and around Austin and San Antonio.
Oh, you're more interested in replicating Kuehnle's sweet see-through suit? Then grab yourself a few dozen yards of clear vinyl and stitch away. Cap the look with a "beer hat" made from 60 feet of clear tubing.
My favorite part of the Invisible Bike's entrance into my reality is the shot of Jimmy posing with it in front a pair of dumpsters. Hey, I respect art in all forms, but if you're going to make a funny-looking transparent bicycle and an even funnier-looking transparent getup to wear while riding it, maybe standing in front of a trash receptacle with the two, as if proudly showcasing the gems you just dug out of it, isn't the best photo op.
.</p>},
:image_url => 'http://static.dudeiwantthat.com/img/omg/optical-illusions/invisible-bike-7136.jpg',
:price => 149.99, :availabe => false)

p2 = Product.create(:title => '
The USB Kill 2.0 Computer Killer',
:description => "If you're using a USB Kill stick you're either pen-testing, trashing your old PC for recycling, or being very, very...very evil. Come on now, I know he cooks eggs in the staff room microwave, and eats beef & bean burritos for lunch and then farts decaying anchovies at a paper mill the rest of the afternoon, but does he really deserve to lose all the contents of his personal laptop when he leaves a 3 on Friday to make his kids soccer game and forgets to take it home with him?",
:image_url => 'http://static.dudeiwantthat.com//img/gear/computers/the-usb-kill-20-computer-24175.jpg' ,
:price => 19.99 , :availabe => false)


p3 = Product.create(:title => 'Nixie Tube Watch',
:description => "Gudiy's Nixie Tube Watch has an atmega8a controlling the tubes' readout. They flash the hour and then, 3 seconds later, the minutes when you press the righthand button of the watch. The button also controls display of the seconds and the percentage of battery charge. The watch's battery is a USB-rechargeable lithium-polymer. Battery life varies according to the mode you choose for operating the watch: accelerometer mode holds the charge for 2 to 3 weeks; manual mode will get you through a month plus.
Nixie Tube Watch measurements are 53mm x 49mm x 18mm, and the assembly weighs about 2.2 ounces. Gudiy will make yours with a choice of stainless steel or calfskin band, and includes a wood USB charging dock with the purchase.",
:image_url => 'http://static.dudeiwantthat.com/img/style/watches/nixie-tube-watch-24160.jpg' ,
:price => 699.99,  :availabe => false)

p4 = Product.create(:title => 'Omai',
:description => "Black soft leather boot with a pointy/ rounded toe. Featuring a Red leather heel and Red/ Creme leather detail. Zip placement on the inside leg",
:image_url => 'http://cook-wife-shoes.com/wp-content/uploads/2016/08/OMAI-1.jpg' ,
:price => 699.99, :availabe => false)


p5 = Product.create(:title => 'Climball',
:description => "
Climball turns any climbing wall you've got at the gym or lying around the house into a 2-player competitive or collaborative ballgame. An augmented reality system projects a field and ball onto the wall. In competitive mode players try to knock the light ball past their opponent to the opposite side of the wall. In collaborative mode they work together to keep it in the middle of the wall for as long as possible. Both modes have adjustable levels of difficulty.

The Climball package includes a projector, computer, depth sensor, proprietary computer vision tech, and gaming / training software. The depth sensor and computer vision are able to track climbers and their movements, and respond accordingly with ball movement and scoring. They essentially turn your climbing wall into a huge touchscreen o' fun.

If you're interested in adding the Climball system to your birthday or Halloween party, or Rich Man's Menagerie of Shenanigans, follow the link about and email Augmented Climbing for a price quote.",
:image_url => 'http://static.dudeiwantthat.com//img/entertainment/sporting-goods/climball-24176.jpg' ,
:price => 1699.99, :availabe => false)

p6 = Product.create(:title => 'Nixie Tube Watch',
:description => "Gudiy's Nixie Tube Watch has an atmega8a controlling the tubes' readout. They flash the hour and then, 3 seconds later, the minutes when you press the righthand button of the watch. The button also controls display of the seconds and the percentage of battery charge. The watch's battery is a USB-rechargeable lithium-polymer. Battery life varies according to the mode you choose for operating the watch: accelerometer mode holds the charge for 2 to 3 weeks; manual mode will get you through a month plus.
Nixie Tube Watch measurements are 53mm x 49mm x 18mm, and the assembly weighs about 2.2 ounces. Gudiy will make yours with a choice of stainless steel or calfskin band, and includes a wood USB charging dock with the purchase.",
:image_url => 'http://static.dudeiwantthat.com/img/style/watches/nixie-tube-watch-24160.jpg' ,
:price => 699.99,  :availabe => false)

p7 = Product.create(:title => 'Snake Shoes',
:description => "The most exclusive in town, made by Mr. Artur Phillips a blind artisan that dedicate his life to produce the most exclusive shoes in the planet, exclusive becase Mrs. Phil in not just blind but he dont have arms as well, producing every shoe just using his feets and mouth. Can't get any better !

Black soft leather boot with a pointy/ rounded toe. Featuring a Red leather heel and Red/ Creme leather detail. Zip placement on the inside leg",
:image_url => 'https://ae01.alicdn.com/kf/HTB1qIM3IXXXXXcMaXXXq6xXFXXXC/HOT-2015-font-b-Exclusive-b-font-new-leisure-fashion-stylist-pointed-in-the-men-s.jpg' ,
:price => 699.99, :availabe => false)


p8 = Product.create(:title => 'The TRON Light Cycle',
:description => "Well, The Rock restaurant proves Zanzibar has at least one thing going for it besides its say-a-licious name. Zanzibar, Zanzibar. Have a Zanzibari dinner in Zanzibar. I think I'll rename my girlfriend's cat Zanzibar. It's not like he responds to Shadow, or anything else I say, anyway. To recap: The Rock is a dining establishment built on a rock. It sits in the middle of the Indian Ocean, just off Michanwi Pingwe beach, on the Tanzanian archipelago of Zaaaanzibarrrr!

The Rock used to be a fisherman's post, but a group of restauranteurs converted it to one of the coolest places to grub ever in July 2010. During low tide, you can walk along the beach and ascend the staircase to the restaurant's stunning outdoor lounge with a panoramic ocean view, and simple, 12-table interior dining area. At high tide, they'll tool you out by boat.

Not surprisingly, seafood dominates The Rock's menu, but you'll also find some local Swahili dishes and influences on the list.",
:image_url => 'http://static.dudeiwantthat.com/img/omg/pads/the-rock-restaurant-zanzibar-23957.jpg' ,
:price => 40000.99, :availabe => false)


p9 = Product.create(:title => 'Zombies Prof Jeep',
:description => "Well, The Rock restaurant proves Zanzibar has at least one thing going for it besides its say-a-licious name. Zanzibar, Zanzibar. Have a Zanzibari dinner in Zanzibar. I think I'll rename my girlfriend's cat Zanzibar. It's not like he responds to Shadow, or anything else I say, anyway. To recap: The Rock is a dining establishment built on a rock. It sits in the middle of the Indian Ocean, just off Michanwi Pingwe beach, on the Tanzanian archipelago of Zaaaanzibarrrr!

The Rock used to be a fisherman's post, but a group of restauranteurs converted it to one of the coolest places to grub ever in July 2010. During low tide, you can walk along the beach and ascend the staircase to the restaurant's stunning outdoor lounge with a panoramic ocean view, and simple, 12-table interior dining area. At high tide, they'll tool you out by boat.

Not surprisingly, seafood dominates The Rock's menu, but you'll also find some local Swahili dishes and influences on the list.",
:image_url => 'http://static.dudeiwantthat.com//img/autos/exotic/full-metal-jacket-jeep-10242.jpg' ,
:price => 60000.00, :availabe => false)

p10 = Product.create(:title => 'Excluive Watch',
:description => "Vincero Collective's Marble Series of watches inlay hand-cut Italian marble dials and stainless steel Roman numeral clock faces. They complement the combo with stainless steel bands embedded with additional marble accents. So I can toss out my cheap plastic with digital LEDs, stop digging around for my phone when I need to check how many minutes until the laser tag center opens, and start looking and acting like a grown-up. A classy one. At least from the wrist down.

Vincero's Marble Series features limited edition releases of Black Verde, Silver Nero, and Verde styles. Since each timepiece contains real nuggets of Italian marble, all cut, finished and fit by hand, no two watches are identical. Like snowflakes, or my girlfriend's temperament at any given time this week. In addition to the marble and 316L surgical-grade stainless steel case and band, Vincero Marble watch specs include:

Scratch-resistant, sapphire-coated crystal glass face cover
Citizen Miyota quartz movement
3 ATM water resistance
43mm diameter case
8mm thickness
Expandable band to wrist circumference of 8-1/2",
:image_url => 'http://static.dudeiwantthat.com//img/sponsored/vincero-collective-marble-24017.jpg' ,
:price => 20000.99, :availabe => false)


p "Product Counter :#{Product.all.count}"


WishListItem.destroy_all

item1 = WishListItem.create({:product_id => p1.id})
item2 = WishListItem.create({:product_id => p2.id})

w1.wish_list_items << item1
w1.wish_list_items << item2
