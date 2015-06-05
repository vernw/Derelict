"Derelict" by Vern & Mark

Chapter 0 - Setup

The story headline is "A dark mystery".
Use American dialect.
Use no scoring.

Chapter 1 - World Ruleset

Fore is a direction. Aft is a direction. The opposite of fore is aft. The opposite of aft is fore. 
Port is a direction. Starboard is a direction.  The opposite of port is starboard. The opposite of starboard is port.
Understand "f" as fore.
Understand "a" and "af" as aft.
Understand "p" as port.
Understand "sb" as starboard.

FirstAccess is a number variable and 0.
FourthAccess is a number variable and 0.
BAccess is a number variable and 0.
EAccess is a number variable and 0.

BodyCount is a number variable and 3.

The First Floor is a region.  The Captain's Quarters is in the first floor.  Communications is in the first floor.  The Dining Hall is in the first floor.  The Bridge is in the first floor.

The Fourth Floor is a region.  The Cargo Bay is in the Fourth Floor.

The Engines is a region.  Engine Bay 1 is in Engines.  Engine Bay 2 is in Engines.

Instead of going South: say "Your suit's built-in compass is for terrestrial exploration; there's no magnetic field in space.".
Instead of going North: say "Your suit's built-in compass is for terrestrial exploration; there's no magnetic field in space.".
Instead of going East: say "Your suit's built-in compass is for terrestrial exploration; there's no magnetic field in space.".
Instead of going West: say "Your suit's built-in compass is for terrestrial exploration; there's no magnetic field in space.".
Instead of going Southwest: say "Your suit's built-in compass is for terrestrial exploration; there's no magnetic field in space.".
Instead of going Northwest: say "Your suit's built-in compass is for terrestrial exploration; there's no magnetic field in space.".
Instead of going Southeast: say "Your suit's built-in compass is for terrestrial exploration; there's no magnetic field in space.".
Instead of going Northeast: say "Your suit's built-in compass is for terrestrial exploration; there's no magnetic field in space.".

[Top floor]
The Captain's Quarters is a room. The Captain's Quarters is port of Communications.  "The Captain's Quarters is a room of luxury.  Even though the Captain doesn't actually get to spend much time here, it is Federation standard that their quarters are a place they can retreat to for relaxation and decompression.  But not explosive decompression.  That would be bad.[line break][line break]Communications is starboard of here, and the Lift shaft is aft."
The Dining Hall is a room. The Dining Hall is aft of Communications.  "The Dining Hall is a typical cafeteria, with a kitchen to prepare and a buffet style line for serving the crappy spacefare available.[line break][line break]Communications is fore of here.  The Lift shaft is portside."
Communications is a room. Communications is aft of the Bridge.  "The Communications room is fairly self explanatory, but if you really need a detailed description... there are devices here for communicating.  Most of the technology is nothing complicated, RADAR, X-RAY, infrared sensors, as well as an array of ultra long range radios.[line break][line break]The Dining Hall is aft of here, the Bridge is fore, and the Captain's Quarters is port."
The Bridge is a room. The Bridge is fore of Communications.  "The bridge is where the ship is commanded and piloted from.  It has a large bay window facing into the abyss of space, though it's usually covered by much more useful projection screens.  It is situated quite like a conference room, with the Captain's chair at the head of an elliptical table facing the window, with the various department heads having their designated seats around the long sides.  An untrained witness of the ship running at full steam could easily mistake it for a board meeting.[line break][line break]Communications is aft of here."


[Second floor]
The Cryostasis Hold is a room.  "The Cryostatsis Hold is designed for keeping passengers from aging (or getting bored) during long space flights.  Generally, the crew can also go into periods of Cryostasis allowing the AI to handle the day to day management of the ship, however, as this was also a research voyage, there are only enough pods for the passengers.  You look around at the names labling the various pods, but none of them seem familiar, even the one labling the pod you stepped out of.[if the Locker is in the Cryostasis Hold]  There is a [locker] next to each of the pods, but only the one next to your pod is open.[end if][line break][line break]The Commons is fore of here."
The Commons is a room. The Cryostasis Hold is aft of the Commons.  The Commons is fore of the Cryostasis Hold. "The Common area has a few couches, a pool and foosball table, as well as a projector.  The projector is attached to a holodisk player with a small selection of physical disks as well as a hard drive containing a much wider selection of programming, though most of that has been censored by the military.  The passengers and crew tend to enjoy their personal copies of 'It Came From Planet 10 in the Outer Rim' more than the digital '__ Came From _____ in the ______.'[line break][line break]The Cryostasis Hold is aft of here.  To the fore stands the double door access to the Lift."
The Passengers' Quarters is a room. The Passengers' Quarters is starboard of the Commons.
The Crew Quarters is a room. It is port of the Commons.

[Third floor]
The Engine Bay 1 is a room. The Engine Bay 1 is starboard of Engineering.
The Engine Bay 2 is a room. The Engine Bay 2 is port of Engineering.
Engineering is a room.

[Bottom floor]
The Cargo Bay is a room. The Cargo Bay is fore of the Cargo Airlock.
Outer Space is a room. Outer Space is aft of the Cargo Airlock.
The Cargo Airlock is a door. It is closed and openable and locked.

[Lift]
The Central Lift is a room. The Central Lift is aft of the Captain's Quarters and port of the Dining Hall.
Instead of going aft from the Captain's Quarters:
	If the Central Lift is not mapped aft of the Captain's Quarters
	begin;
		say "You push the button to call the elevator. After a short while, the doors open and you enter.";
		now the Central Lift is mapped aft of the Captain's Quarters;
		now nothing is mapped aft of the Central Lift;
		now nothing is mapped port of the Central Lift;
	end if;
	continue the action;
Instead of going port in the Dining Hall:
	If the Central Lift is not mapped port of the Dining Hall
	begin;
		say "You push the button to call the elevator. After a short while, the doors open and you enter.";
		now the Central Lift is mapped port of the Dining Hall;
		now nothing is mapped aft of the Central Lift;
		now nothing is mapped port of the Central Lift;
	end if;
	continue the action;
Instead of going fore in the Commons:
	If the Central Lift is not mapped fore of the Commons
	begin;
		say "You push the button to call the elevator. After a short while, the doors open and you enter.";
		now the Central Lift is mapped fore of the Commons;
		now nothing is mapped fore of the Central Lift;
		now nothing is mapped port of the Central Lift;
		now nothing is mapped starboard of the Central Lift;
	end if;
	continue the action;
Instead of going fore in Engineering:
	If the Central Lift is not mapped fore of the Engineering
	begin;
		say "You push the button to call the elevator. After a short while, the doors open and you enter.";
		now the Central Lift is mapped fore of the Engineering;
		now nothing is mapped fore of the Central Lift;
		now nothing is mapped port of the Central Lift;
		now nothing is mapped starboard of the Central Lift;
	end if;
	continue the action;
Instead of going fore in the Cargo Bay:
	If the Central Lift is not mapped fore of the Cargo Bay
	begin;
		say "You push the button to call the elevator. After a short while, the doors open and you enter.";
		now the Central Lift is mapped fore of the Cargo Bay;
		now nothing is mapped fore of the Central Lift;
		now nothing is mapped port of the Central Lift;
		now nothing is mapped starboard of the Central Lift;
	end if;
	continue the action;
	
Instead of going up in the Central Lift:
	If the Central Lift is mapped aft of the Captain's Quarters
	begin;
		say "This is the top level.";
	end if;
	If the Central Lift is mapped fore of the Commons
	begin;
		now the Captain's Quarters is mapped fore of the Central Lift;
		now the Dining Hall is mapped starboard of the Central Lift;
		now nothing is mapped aft of the Central Lift;
		now nothing is mapped fore of the Commons;
		say "The lift churns upwards towards the first floor.";
	end if;
	If the Central Lift is mapped fore of Engineering
	begin;
		now the Commons is mapped aft of the Central Lift;
		now nothing is mapped fore of Engineering;
		say "The lift churns upwards towards the second floor.";
	end if;
	If the Central Lift is mapped fore of the Cargo Bay
	begin;
		now Engineering is mapped aft of the Central Lift;
		now nothing is mapped fore of the Cargo Bay;
		say "The lift churns upwards towards the third floor.";
	end if;
	
Instead of going down in the Central Lift:
	If the Central Lift is mapped fore of the Cargo Bay
	begin;
		say "This is the bottom level.";
	end if;
	If the Central Lift is mapped fore of Engineering
	begin;
		now the Cargo Bay is mapped aft of the Central Lift;
		now nothing is mapped fore of Engineering;
		say "The lift churns downwards towards the bottom floor.";
	end if;
	If the Central Lift is mapped fore of the Commons
	begin;
		now Engineering is mapped aft of the Central Lift;
		now nothing is mapped fore of the Commons;
		say "The lift churns downwards towards the third floor.";
	end if;
	If the Central Lift is mapped aft of the Captain's Quarters
	begin;
		now the Commons are mapped aft of the Central Lift;
		now nothing is mapped aft of the Captain's Quarters;
		now nothing is mapped port of the Dining Hall;
		say "The lift churns downwards towards the second floor.";
	end if;

When play begins:
	say "An abhorrent hissing sound reverberates haphazardly throughout your body. A lingering chill eases into a familiar lukewarmth as the sound of air whistling out of a small hole ushers you to open your eyes. You catch a glimpse of  frost clinging onto the military-grade glass panel in front of you slowly melting away. A display projected onto the glass flashes the word 'Depressurizing' incessantly until the hissing dissipates.[line break][line break]Two heavy clicks are heard, the panel in front of you begins to remove itself and provide you escape from your confinement. A third clunk freezes the hatch in its tracks, leaving a small gap between the mechanism's seams.  You can see steel floor panels through the gap connecting you to the environment outside. As feeling is returned rightfully to your limbs, you forcefully kick the hatch open, sending the door into the wall opposite you. Surprised at how easy it was to break out of your capsule, you ponder the amount of time that has passed.[line break][line break]As you step out of your hold, you notice the dim illumination of the room. Albeit the room is nigh pitch black, you make out the painted 'Cryostasis Block D' on the large steel grey wall ahead."
	
	[[line break][line break]"]

The player is in the Cryostasis Hold.


Before entering the First Floor:
	if FirstAccess is 0:
		say "You don't have first floor access.";
		stop
		
Before entering the Fourth Floor:
	if FourthAccess is 0:
		say "You don't have fourth floor access.";
		stop

Before entering the Bridge:
	if BAccess is 0:
		say "You don't have bridge access.";
		stop
		
Before entering Engines:
	if EAccess is 0:
		say "You don't have engine access.";
		stop

Chapter 2 - Entities

Chapter 3 - Objects/Things and Scenery

The Locker is an open container.  The Locker is nowhere.

The Engineer's Power Suit is a wearable thing.

The Incinerator is in Engineering.  "Quickly, quietly, and efficiently disposes of waste products, that you can't be bothered to space."

The Hover Cart is in the Commons.  The Hover Cart is scenery.  "A simple moving tool, interacts with the ships artificial gravity to make moving heavy objects easier, presuming you can get them onto the cart in the first place."

Chapter 4 - Scripted Events

Instead of going fore for the first time:
	say "You walk to the door and place your hand against the scanner, but it flashes red.  Locked.  A voice comes over the intercom.  [line break][line break]'Oh, how wonderful!  You're finally awake!  Sorry for the delay, but I thought I'd offer you a friendly warning before you step through that door.  You see... there's been, well, a sort of accident.  Everyone kind of, well.  Died.  All of them.  Except you!  You're still alive so that's a plus, right?  I can't tell you how they died though, sorry to say.  This is a research voyage and that knowledge is above your security clearance at the moment.  Anyway, I was just going to leave you frozen for the rest of the journey, but... there are just SO many bodies.  It's getting rather irritating looking at them.  They're quite the eyesore, all pale and clammy looking.  Blech!  I just need someone with a body themself to help clean up the lifeless ones.  I don't have arms afterall!  You have a strange look on your face... OH! Right.  The memory thing.  I should introduce myself.  I'm Herman, the ship's AI.  Anyway, since you're not doing anything, could you please dispose of the corpses in the next room?  They're not bloody or anything, they just need to be taken down to the incinerator in the engineering department on floor 3.  There's also a hover cart that should help you *dispose of the bodies* though you might need a few trips.'[line break][line break]The door panel in front of you turns green.  The intercom buzzes again.[line break][line break]'Oh! I almost forgot.  There's an enginnering powersuit in the locker next to your pod.  It should help you do the heavy lifting.'[line break][line break]You begin to shiver again.  Now that the shock of dethawing has worn off you've realized you're only garbed in something like a hospital gown.  You return to the pod and notice the locker next to it for the first time.  You place your thumb on the scanner, and it buzzes back go life.  The screen turns red and flashes, rejecting your input.  You try again, but no luck.  You try your index finger instead.  The device seems to hesitate, flashing a rainbow of colors, settling on green, and buzzing open.  You find an engineer's power suit inside, and you put it on.";
	Now the Locker is in the Cryostasis Hold;
	Now the player is wearing the Power Suit.
	
Disposing of the bodies is an action applying to nothing.

Understand "Dispose of the bodies" as Disposing of the bodies.  Understand "Use the Hover Cart" as Disposing of the bodies.
Check Disposing of the bodies:
	if the player is not in the Commons:
		say "Surprisingly enough, there are no bodies here." instead.

Carry out Disposing of the bodies:
	if BodyCount is 3:
		say "You pile as many corpses onto the hover cart as you can, take it to the elevator and push the button for the third floor, which is labelled 'Engineering.'  Once there you take a quick look around before noticing the Incinerator in the corner.  You walk up to it and tilt the hover cart towards it's entrance.  You feel a few butterflies in your stomach, but your unease isn't enough for you to question your actions.  The flames quickly engulf the bodies, as the device reacts to the size of the load.  Almost immediately your nostrils are assaulted by a uniquely disturbing scent.  The bodies are not so that they smell of rot, but rather smell like roasted meat.  You now regret possessing the knowledge that cooked human flesh can seem rather appetizing.  You shake yourself out of your stupor, and return to the Commons.";
	if BodyCount is 2:
		say "You again begin to heft the corpses on to the cart.  The activity is beginning to become familiar to you.  It's not much different than lifting a sack of grain, or potatoes.  You make your way to Engineering again, this time taking care to avoid smelling the fruits of your labor, then go back for your final trip.";
	if BodyCount is 1:
		say "You load the last of the deceased onto the cart and make your way to the elevator, and complete your final trip.  Upon your return you notice that compared to the state you found it in, the nearly empty room feels rather eerie.[line break][line break]'Ah yes, good, you've finished.  How wonderful!  Now, there are just a few more to be dealt with in the bridge.  I'm afraid the crew met a similar fate to the passengers[apostrophe].  I've unlocked entry to the first floor of the ship now, go ahead and take the elevator up.  Oh, and if you ever get lost, just say *map* and your power suit will pull it up on your HUD.'";
		Now FirstAccess is 1;
	if BodyCount is 0:
		say "Thankfully, you've already cleaned all the bodies in the Commons";
		stop;
	Decrease BodyCount by 1.

Before entering the Bridge for the first time:
	say "A voice cracks in over the intercom.[line break][line break]'Ahem. Yes. Actually.  Now that you're here, well.  I've changed my mind.  I think you've exposed yourself to quite enough bodies for one day! Ha ha! (oh my that sounded rather forced..) I would put you back into Cyrosleep, but, well, you broke the last working pod when you kicked the door off it's hinges.  So I suppose you can just wander around and watch TV or something in the Commons.  We're only going to be flying for a couple more months, hopefully you can entertain yourself till we arrive.  There are a few fabrication tools and plans lying around in Engineering if you're feeling more, heh, constructive.  I'll check in on you from time to time.  It gets pretty boring out here for an AI as well.  Only so many times you can read through the 'Galactic History of Everything' before it just seems trite.'"

Chapter 5 - Dialogue Trees (Nodes)