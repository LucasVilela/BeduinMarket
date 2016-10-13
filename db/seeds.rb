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

p1 = Product.create(:title =>'Nixie Tube Watch',
:description =>"Nixie analog watch faces and Nixie boring, flat digital displays. Readouts from cold cathode neon gas indicators are how I want to wear my time now. I've seen Nixie tubes turned into desktop clocks before (here, for example) but this is the first I've seen some clever timelord turn them into a wristwatch. Nixie Horizonte is a shop based in Italy, and its owner, Igor Gudiy, hand makes each of these spectacles of a forgotten era from milled pieces of 7075 aluminum and brass, and a pair of real IN-16 Nixie tubes.

Gudiy's Nixie Tube Watch has an atmega8a controlling the tubes' readout. They flash the hour and then, 3 seconds later, the minutes when you press the righthand button of the watch. The button also controls display of the seconds and the percentage of battery charge. The watch's battery is a USB-rechargeable lithium-polymer. Battery life varies according to the mode you choose for operating the watch: accelerometer mode holds the charge for 2 to 3 weeks; manual mode will get you through a month plus.

Nixie Tube Watch measurements are 53mm x 49mm x 18mm, and the assembly weighs about 2.2 ounces. Gudiy will make yours with a choice of stainless steel or calfskin band, and includes a wood USB charging dock with the purchase.",
:price => 149.99, :availabe => false )


p1.image << "nixie-tube-watch-24162_rqngkw.jpg"
p1.image << "nixie-tube-watch-24161_mkjeqo.jpg"
p1.image << "nixie-tube-watch-24160_ehsmad.jpg"
p1.save


p2 = Product.create(:title => '
Climball',
:description => "While I don't care much for combined physical and mental challenges--or really either one on its own--I'm a total sucker for things that glow in the dark. And video games. And American Ninja Warrior. All of which, along with a couple shots of pinball and air hockey, Augmented Climbing incorporates into its new game Climball.

Climball turns any climbing wall you've got at the gym or lying around the house into a 2-player competitive or collaborative ballgame. An augmented reality system projects a ""field"" and ball onto the wall. In competitive mode players try to knock the light ball past their opponent to the opposite side of the wall. In collaborative mode they work together to keep it in the middle of the wall for as long as possible. Both modes have adjustable levels of difficulty.

The Climball package includes a projector, computer, depth sensor, proprietary computer vision tech, and gaming / training software. The depth sensor and computer vision are able to track climbers and their movements, and respond accordingly with ball movement and scoring. They essentially turn your climbing wall into a huge touchscreen o' fun.

If you're interested in adding the Climball system to your birthday or Halloween party, or Rich Man's Menagerie of Shenanigans, follow the link about and email Augmented Climbing for a price quote.",
:price => 19.99 , :availabe => false)

p2.image << "climball-24176_ez3qoo.jpg"
p2.image << "climball-24177_flodxy.jpg"
p2.image << "climball-24178_xcxybx.jpg"
p2.image << "climball-24179_ra8qcj.jpg"
p2.save

p3 = Product.create(:title => 'The USB Kill 2.0 Computer Killer',
:description => "While I don't care much for combined physical and mental challenges--or really either one on its own--I'm a total sucker for things that glow in the dark. And video games. And American Ninja Warrior. All of which, along with a couple shots of pinball and air hockey, Augmented Climbing incorporates into its new game Climball.

Climball turns any climbing wall you've got at the gym or lying around the house into a 2-player competitive or collaborative ballgame. An augmented reality system projects a ""field"" and ball onto the wall. In competitive mode players try to knock the light ball past their opponent to the opposite side of the wall. In collaborative mode they work together to keep it in the middle of the wall for as long as possible. Both modes have adjustable levels of difficulty.

The Climball package includes a projector, computer, depth sensor, proprietary computer vision tech, and gaming / training software. The depth sensor and computer vision are able to track climbers and their movements, and respond accordingly with ball movement and scoring. They essentially turn your climbing wall into a huge touchscreen o' fun.

If you're interested in adding the Climball system to your birthday or Halloween party, or Rich Man's Menagerie of Shenanigans, follow the link about and email Augmented Climbing for a price quote.",
:price => 49.95, :availabe => false)

p3.image << "the-usb-kill-20-computer-24175_ubui1q.jpg"
p3.image << "the-usb-kill-20-computer-24174_cktrkn.jpg"
p3.image << "the-usb-kill-20-computer-24173_ibsush.jpg"
p3.save

p4 = Product.create(:title => 'Bird of Prey Bicycle',
:description => "I didn't think the foam helmets and seizure-inducing neon spandex could look any more ridiculous rolling down the road, yelling at cars to get out of their lane, and then cutting into traffic at will when it suits them, but the Bird of Prey Bicycle proves ridiculous can go at least one level higher. Why fly down the road like an eagle in a bubble of self-entitlement seated upright when you can do it in the actual position the great winged beast assumes?

The Bird of Prey is a semi-prone bicycle that allows cyclists to pedal as they would swim (or, the company points out, as Superman flies) except with their heads positioned forward at the road ahead instead of up their...uh, downward. In this swimmer's position the rider supposedly has a 6-strong set of advantages over upright and recumbent bikes. These include:

Aerodynamics. Bird of Prey positioning reduces wind resistance. At 22MPH or more, the company says you're using 80% of your effort just to fight the wind while seated (or, more likely if you are or have seen a cyclist, bent forward and balled up on your handlebars) and this drag increases in proportion to your speed.
Swimmer's Positioning. Freestylin' on land gives you access to more muscle power. Bird of Prey riders are saddle-supported at the hips, and can push and pull on the bike's pedals with fully extended legs, almost as if they were running horizontally.
Low Center of Gravity. In addition to cutting better through wind, Bird of Prey's laid-out style helps it cut better around corners and ""through difficult situations with other bike riders Riders have more control with smaller movements.
Gearing. With a 60-tooth rear chain ring connected to a 36/11 cassette, Bird of Prey says it out gears all upright bicycles. It has both high speed and low mountain bike gears.
Safety. You'd think if you crash on the Bird of Prey you'd have high-speed headbutting a car or the ground to look forward to, but they say the bike's low positioning close to the center of the front wheel ensures you will not go over the handlebars in a panic stop. You'll just...stop. And slo-mo tip over sideways, hopefully adding to the vast archive of great YouTube videos.
Comfort. This is hard sell for me. Having that little scoopy saddle holding up, and probably digging into my entire gut does not look comfortable. That Bird of Prey call it a ""catcher mitt"" doesn't help. They go on to explain the supports are soft and covered in leather, and include elbow supports at the front aero bars as well. Feet clip in to standard pedals. Then: 'You have to ride the bike to understand how comfortable it really is.Well, BoP dudes, if you want to send me a sample of your $4,200 Superman bike I'll be more than happy to tell you if it stretches my backbone and removes the spinal compression that makes riding an upright bike so uncomfortable for others. I'll race my friend Cornelius on his",
:price => 4200, :availabe => false)

p4.image << "bird-of-prey-bicycle-24151_wx5rnw.jpg"
p4.image << "bird-of-prey-bicycle-24150_eifmkg.jpg"
p4.image << "bird-of-prey-bicycle-24149_bjwinj.jpg"
p4.save

p5 = Product.create(:title => 'Pokemon Pokeball Herb Grinder',
:description => "Time to grind me some Pokemon! What, no? That's not how the game works? Then what am I supposed to do with this Pokeball Grinder?

O-oh, that.

Well that sounds pretty alright too. And seems to require a lot more sitting on the couch than overexerting myself walking around random streets and neighborhoods. I think I like that even better.

The Pokeball Grinder measures 1-1/2 in diameter, and breaks into 3 aluminum pieces ready for action. It is for tobacco use only. And you gotta be at least 18 to buy one. I know, kids, it's terrible news. Like being kicked out of that funeral service right before you caught Mewtwo all over again.",
:price => 4200, :availabe => false)

p5.image << "pokeball-grinder-23901_ebdieg.jpg"
p5.image << "pokeball-grinder-23900_lcnykr.jpg"
p5.image << "pokeball-grinder-23902_bogt4x.jpg"
p5.save

p6 = Product.create(:title => 'Spi Home Octopus End Table',
:description => "One of a kind ! lorem ipsuliumm lorem ipsuliumm lorem ipsuliumm lorem ipsuliumm lorem ipsuliumm lorem ipsuliumm lorem ipsuliumm lorem ipsuliumm lorem ipsuliumm lorem ipsuliumm lorem ipsuliumm lorem ipsuliumm lorem ipsuliumm lorem ipsuliumm lorem ipsuliumm lorem ipsuliumm lorem ipsuliumm lorem ipsuliumm ",
:price => 4200, :availabe => false)

p6.image << "614frWwUGbL._SL1001__gpuxwg.jpg"
p6.save

p7 = Product.create(:title => 'Phil Curren Custom Car Chairs',
:description => "What was Phil Curren thinking jumping from 30 years in the fire department to a ""retirement"" of restoring classic cars with his brother to a hobby of transforming those cars into Adirondack chairs? Where does he think this is, 15th-century Italy? You're making the rest of us look like underachievers. Schmos. Turkeys. Tony Romos, dude.

Curren custom builds and paints all of his car chairs according to client requests on make and model, and whether or not they want themselves brushed in behind the wheel. Most of his commissioned Adirondacks have a story behind them, and are crafted in the likeness of a specific car from the client's life. Curren says, When my clients custom order chairs, its sometimes about the car, but more often than not, its the memories associated with that year, make, and model. Hearing the stories and using photos as guides, Curren is often able to incorporate individual car details into his work, such as personalized license plates and fuzzy dice (the Fresh Prince of Bel Airs cabbie is sold!)",
:price => 4200, :availabe => false)

p7.image << "phil-curren-custom-car-chairs-23734_be7yca.jpg"
p7.image << "phil-curren-custom-car-chairs-23730_qpys8p.jpg"
p7.image << "phil-curren-custom-car-chairs-23732_bqxg5r.jpg"
p7.image << "phil-curren-custom-car-chairs-23733_mlulkw.jpg"
p7.save

p8 = Product.create(:title => 'Double WhellBike ',
:description => "What was Phil Curren thinking jumping from 30 years in the fire department to a ""retirement"" of restoring classic cars with his brother to a hobby of transforming those cars into Adirondack chairs? Where does he think this is, 15th-century Italy? You're making the rest of us look like underachievers. Schmos. Turkeys. Tony Romos, dude.

Curren custom builds and paints all of his car chairs according to client requests on make and model, and whether or not they want themselves brushed in behind the wheel. Most of his commissioned Adirondacks have a story behind them, and are crafted in the likeness of a specific car from the client's life. Curren says, When my clients custom order chairs, its sometimes about the car, but more often than not, its the memories associated with that year, make, and model. Hearing the stories and using photos as guides, Curren is often able to incorporate individual car details into his work, such as personalized license plates and fuzzy dice (the Fresh Prince of Bel Airs cabbie is sold!)",
:price => 1200, :availabe => false)

p8.image << "rungu-electric-juggernaut-23592_wj0zyc.jpg"
p8.image << "rungu-electric-juggernaut-23591_adpk98.jpg"
p8.image << "rungu-electric-juggernaut-23590_lopvmc.jpg"
p8.save

p "Product Counter :#{Product.all.count}"


WishListItem.destroy_all

item1 = WishListItem.create({:product_id => p1.id})
item2 = WishListItem.create({:product_id => p2.id})

w1.wish_list_items << item1
w1.wish_list_items << item2
