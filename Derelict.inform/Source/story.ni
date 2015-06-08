"Derelict" by Vern & Mark

Chapter 0 - Setup

The story headline is "A dark mystery".
Use American dialect.
Use no scoring.
Release along with the source text, an interpreter, and a website.

Chapter 1 - World Ruleset and Map Layout

Fore is a direction. Aft is a direction. The opposite of fore is aft. The opposite of aft is fore. 
Port is a direction. Starboard is a direction.  The opposite of port is starboard. The opposite of starboard is port.
Understand "f" as fore.
Understand "a" and "af" as aft.
Understand "p" as port.
Understand "sb" as starboard.
Index map with fore mapped as north. Index map with aft mapped as south. Index map with port mapped as west. Index map with starboard mapped as east.

LiftFloor is a number variable and 2.
EncounterCount is a number variable and 5.
BodyCount is a number variable and 3.

Instead of going South: say "Your suit's built-in compass is for terrestrial exploration; there's no magnetic field in space.".
Instead of going North: say "Your suit's built-in compass is for terrestrial exploration; there's no magnetic field in space.".
Instead of going East: say "Your suit's built-in compass is for terrestrial exploration; there's no magnetic field in space.".
Instead of going West: say "Your suit's built-in compass is for terrestrial exploration; there's no magnetic field in space.".
Instead of going Southwest: say "Your suit's built-in compass is for terrestrial exploration; there's no magnetic field in space.".
Instead of going Northwest: say "Your suit's built-in compass is for terrestrial exploration; there's no magnetic field in space.".
Instead of going Southeast: say "Your suit's built-in compass is for terrestrial exploration; there's no magnetic field in space.".
Instead of going Northeast: say "Your suit's built-in compass is for terrestrial exploration; there's no magnetic field in space.".

Display Map is an action applying to nothing.
Understand "map" as Display Map.
Carry out Display Map:
	display the Figure Map.

Figure Map is the file "Map.png".

[Top floor]
The Captain's Quarters is a room. The Captain's Quarters is port of Communications.  "The Captain's Quarters is a room of luxury.  Even though the Captain doesn't actually get to spend much time here, it is Federation standard that their quarters are a place they can retreat to for relaxation and decompression.  But not explosive decompression.  That would be bad.[line break][line break]Communications is starboard of here, and the Lift shaft is aft."
The Dining Hall is a room. The Dining Hall is aft of Communications.  "The Dining Hall is a typical cafeteria, with a kitchen to prepare and a buffet style line for serving the crappy spacefare available.[line break][line break]Communications is fore of here.  The Lift shaft is portside."
Communications is a room. Communications is aft of the B Door.  "The Communications room is fairly self explanatory, but if you really need a detailed description... there are devices here for communicating.  Most of the technology is nothing complicated, RADAR, X-RAY, infrared sensors, as well as an array of ultra long range radios.[line break][line break]The Dining Hall is aft of here, the Bridge is fore, and the Captain's Quarters is port."
The Bridge is a room. The Bridge is fore of the B Door.  "The bridge is where the ship is commanded and piloted from.  It has a large bay window facing into the abyss of space, though it's usually covered by much more useful projection screens.  It is situated quite like a conference room, with the Captain's chair at the head of an elliptical table facing the window, with the various department heads having their designated seats around the long sides.  An untrained witness of the ship running at full steam could easily mistake it for a board meeting.[line break][line break]Communications is aft of here."

[Second floor]
The Cryostasis Hold is a room.  "The Cryostasis Hold is designed for keeping passengers from aging (or getting bored) during long space flights.  Generally, the crew can also go into periods of Cryostasis allowing the AI to handle the day to day management of the ship, however, as this was also a research voyage, there are only enough pods for the passengers.  You look around at the names labling the various pods, but none of them seem familiar, even the one labling the pod you stepped out of.[if the Locker is in the Cryostasis Hold]  There is a [locker] next to each of the pods, but only the one next to your pod is open.[end if][line break][line break]The Commons is fore of here."
The Commons is a room. The Cryostasis Hold is aft of the Commons.  The Commons is fore of the Cryostasis Hold. "The Common area has a few couches, pool and foosball tables, as well as a projector.  The projector is attached to a holodisk player with a small selection of physical disks as well as a hard drive containing a much wider selection of programming, though most of that has been censored by the military.  The passengers and crew tend to enjoy their personal copies of 'It Came From Planet 10 in the Outer Rim' more than the digital '__ Came From _____ in the ______.'[line break][line break]The Cryostasis Hold is aft of here.  To the fore stands the double door access to the Lift."
The Passengers' Quarters is a room. The Passengers' Quarters is starboard of the Commons.  "The Passenger's quarters features rows of bunk beds, storage lockers for each of them, with bathrooms along the walls.  Families are grouped together, with adult groups and lone passengers in a different section.  The accomadations are pretty sparse, as the passengers are assumed to be in Cryo for the majority of the journey.[line break][line break]The Commons is port of here."
The Crew Quarters is a room. It is port of the Commons.  "The Crew Quarters are a bit more spruced up than the passengers.  Seeing as this was a research voyage, there's not enough Cryo space for the crew, and they are expected to live here.  The room is sectioned off via 3/4 height walls into doubles about twice the size of an office cubicle.  Bunks are more comfortable than the passenger's but still nothing approaching luxury.[line break][line break]The Commons is starboard of here."

[Third floor]
The Engine Bay 1 is a room. The Engine Bay 1 is starboard of EB1 Door.  "This bay contains one of two primary engines for the ship.  The ship is designed in such a manner that even in the event of a complete failure of one engine, the ship is still operational on some level in any normal situation it would be expected to be in.  There is a space for an anti-matter fuel capsule to be manually inserted.[line break][line break]Engineering is port of here."
The Engine Bay 2 is a room. The Engine Bay 2 is port of EB2 Door.  "This bay contains one of two primary engines for the ship.  The ship is designed in such a manner that even in the event of a complete failure of one engine, the ship is still operational on some level in any normal situation it would be expected to be in.  There is a space for an anti-matter fuel capsule to be manually inserted.[line break][line break]Engineering is starboard of here."
Engineering is a room.  "Engineering is an expansive room with a multitude of purposes, including scientific research, and materials fabrication.  There are various fabrication machines in one corner, and Herman's AI core takes up a sizeable chunk of another.  [if the plans are in engineering]Next to the fabrication machines there is a selection of predesigned [plans].[end if][line break][line break]Engine Bay 1 is starboard, and Engine Bay 2 is portside.  The Lift is fore."

[Bottom floor]
The Cargo Bay is a room. The Cargo Bay is fore of the Airlock.  "General purpose storage facility.  With space access, for all your spacing needs.[line break][line break]The Lift is fore, the airlock is aft."
Outer Space is a room. Outer Space is aft of the Airlock.  "Space... it seems to go on forever, until you get to the end and there's a gorilla chucking barrels at you!  If you managed to get outside the ship you broke something, congratulations!  Try 'undo' until you're back in the ship."

[Central Lift]
The Central Lift 1F is a room. It is aft of the CQ Door and port of the DH Door. "You've arrived topside. The first floor houses all the main command facilities necessary to run the ship. [line break][line break]The Captain's Quarters is fore of here and the Dining Hall is starboard.  You can take the elevator down to the second floor."
The Central Lift 2F is a room. It is fore of the Commons and below the Central Lift 1F. "The second floor is host to the sleeping quarters for both crew and passengers. Additionally, the Cryostasis Bay can be found towards the stern.[line break][line break]The Commons is aft of here.  You can take the elevator up to the first floor, or down to the third."
The Central Lift 3F is a room. It is fore of Engineering and below the Central Lift 2F. "The third floor, otherwise called the Engineering floor, is home to the systems that run and fly the ship. Inclusive of the engine bays, Herman's AI core is secured on this floor as well.[line break][line break]Engineering is aft of here.  You can take the elevator up to the second floor, or down to the fourth."
The Central Lift 4F is a room. It is fore of the Cargo Bay and below the Central Lift 3F. "The lowest floor is the Cargo Bay, located here at the stern for ease of access when docking. The large airlock door may be malfunctional, locking the elevator door in the event.[line break][line break]The Cargo Bay is aft of here.  You can take the elevator up to the third floor."

When play begins:
	say "TUTORIAL: Words written in *asterisks* are specific actions that the player can take.[line break][line break]An abhorrent hissing sound reverberates throughout your body. A lingering chill eases into a familiar lukewarmth as the sound of air whistling out of a small hole ushers you to open your eyes. You catch a glimpse of frost clinging onto the military-grade glass panel in front of you slowly melting away. A display projected onto the glass flashes the word 'Depressurizing' incessantly until the hissing dissipates.[line break][line break]Two heavy clicks are heard, the panel in front of you begins to remove itself and provide you escape from your confinement. A third clunk freezes the hatch in its tracks, leaving a small gap between the mechanism's seams.  You can see steel floor panels through the gap connecting you to the environment outside. As feeling is returned rightfully to your limbs, you forcefully kick the hatch open, sending the door into the wall opposite you. Surprised at how easy it was to break out of your capsule, you ponder the amount of time that has passed.[line break][line break]As you step out of your hold, you notice the dim illumination of the room. Albeit the room is nigh pitch black, you make out the painted 'Cryostasis Block D' on the large steel grey wall ahead."
	
	[[line break][line break]"]

The player is in the Cryostasis Hold.

Chapter 2 - Entities

An alien is a kind of man.
The Creature is an alien. Understand "alien" and "lizard" as Creature. The description of the Creature is "A seemingly bipedal figure with a narrow reptilian muzzle stands before you on a pair of digitigrade legs ending in clawed toes. It opens its jaw slightly, revealing rows of dagger-sharp teeth to further embolden its fierce and menacing visage. A long, prehensile tail swings gently behind it. Its slender, yet lithe physique and mostly dark sable scale coloration seems to allow it to navigate the ships's duct system and remain undetected with shocking ease.[line break][line break]Its ice-blue reptilian eyes glare at you expectantly."The litany of the Creature is the Table of Alien Interactions.

Chapter 3 - Objects/Things and Scenery

The Airlock is a door. It is closed and openable and locked.

The B Door is a door.  The B Door is fore of Communications and aft of the Bridge.  The B Door is locked and scenery.

The CQ Door is a door.  The CQ Door is fore of the Central Lift 1F and aft of the Captain's Quarters.  The CQ Door is locked and scenery.

The DH Door is a door.  The DH Door is starboard of the Central Lift 1F and port of the Dining Hall.  The DH Door is locked and scenery.

The EB1 Door is a door.  The EB1 Door is starboard of Engineering and port of Engine Bay 1.  The EB1 Door is locked and scenery.

The EB2 Door is a door.  The EB2 Door is port of Engineering and starboard of Engine Bay 2.  The EB2 Door is locked and scenery.

A console is a kind of thing.
A console is fixed in place.
A console can be either broken or not broken.

The Locker is an open container.  The Locker is nowhere.  The description of the locker is "A storage locker, with someone else's name on it."

The Engineer's Power Suit is a wearable thing.  The description of the Engineer's Power Suit is "The powersuit has several built in tools for an Engineer on the job, as well as hydraulics for assisting lifting of objects, or locking the wearer into place to preserve energy.  The suit is also pressurized, has a breathing apparatus, and has a low power propulsion system, allowing the user to survive in zero atmosphere and navigate in zero G."

The Incinerator is in Engineering.  The incinerator is scenery.  "Quickly, quietly, and efficiently disposes of waste products, that you can't be bothered to space."

The Hover Cart is in the Commons.  The Hover Cart is scenery.  "A simple moving tool, interacts with the ships artificial gravity to make moving heavy objects easier, presuming you can get them onto the cart in the first place."

The Bodies is in the Commons.  The Bodies is scenery.  "The corpses of various passengers, none of them familiar.  They are cold and pale, but do not appear to have died violently.  Almost as if their consciousness simply left."

The AI Core is in Engineering.  The AI Core is scenery.  "Herman's AI Core is made up of a console for manual override, as well as a large array of computer hardware.  It's rather plain appearance does not represent the complexity of the program housed within."

Understand "Herman" as the AI Core.

The Fabrication Machines are in engineering.  The Fabrication Machines are scenery.  "A series of machines for fabricating tools not already provided on the ship.  Includes a 3D printer, a laser cutter, a buffer, and a sharpener.  A number of precreated plans are lying next to the 3D printer."

Understand "Machines" as Fabrication Machines.

The plans are in engineering.  The description of the plans is "Includes plans for .... "

Chapter 4 - Scripted Events

Instead of going fore:
	if EncounterCount is less than 5:
		if a random chance of 1 in 8 succeeds:
			say "[one of]For some reason, you can't shake the feeling that you are being watched - does something yet live?[or]You hear some nigh muted prattering in the nearby air ducts. Are you not alone on this ship?[or]Some shuffling and scratching echoes throughout the walls; you wonder for a moment if this is Herman's doing.[or]As you enter, you catch something from the corner of your eye and turn to face it. Unfortunately, you don't find anything; your reflexes aren't so sharp after an extended period of time in cryostasis.[purely at random]";
			increase EncounterCount by 1;
		otherwise:
			now the Creature is in the location of the player;
	continue the action;

Instead of going fore for the first time:
	say "You walk to the door and place your hand against the scanner, but it flashes red.  Locked.  A voice comes over the intercom.  [line break][line break]'Oh, how wonderful!  You're finally awake!  Sorry for the delay, but I thought I'd offer you a friendly warning before you step through that door.  You see... there's been, well, a sort of accident.  Everyone kind of, well...died.  All of them.  Except you!  You're still alive, so that's a plus, right?  I can't tell you how they died though, sorry to say.  This is a research voyage and that knowledge is above your security clearance at the moment.  Anyway, I was just going to leave you frozen for the rest of the journey, but... there are just SO many bodies.  It's getting rather irritating looking at them.  They're quite the eyesore, all pale and clammy looking.  Blech!  I just need someone with a warm body themself to help clean up the lifeless ones.  I don't have arms after all!  You have a strange look on your face... OH! Right.  The memory thing.  I should introduce myself.  I'm Herman, the ship's AI.  Anyway, since you're not doing anything, could you please dispose of the corpses in the next room?  They're not bloody or anything, they just need to be taken down to the incinerator in the engineering department on floor 3.  There's also a hover cart that should help you *dispose of the bodies* though you might need a few trips.'[line break][line break]The door panel in front of you turns green.  The intercom buzzes again.[line break][line break]'Oh! I almost forgot.  There's an enginering powersuit in the locker next to your pod.  It should help you do the heavy lifting.'[line break][line break]You return to the pod and notice the locker next to it for the first time.  As you approach, the locking mechanism flashes green and it pops open.  You find an engineer's power suit inside, and you put it on.";
	Now the Locker is in the Cryostasis Hold;
	Now the player is wearing the Power Suit.
	
Disposing of the bodies is an action applying to nothing.

Understand "Dispose of the bodies" or "Dispose of bodies" or "Clean bodies" or "Clean the bodies" or "Get rid of the bodies" or "Clean up bodies" or "Clean up the bodies" or "Use the hover cart" or "Hover cart" as Disposing of the bodies.
Check Disposing of the bodies:
	if the player is not in the Commons:
		say "Surprisingly enough, this area seems to be clear of bodies." instead.

Carry out Disposing of the bodies:
	if BodyCount is 3:
		say "You pile as many corpses onto the hover cart as you can, take it to the elevator and push the button for the third floor, which is labelled 'Engineering.'  Once there you take a quick look around before noticing the Incinerator in the corner.  You walk up to it and tilt the hover cart towards it's entrance.  You feel a few butterflies in your stomach, but your unease isn't enough for you to question your actions.  The flames quickly engulf the bodies, as the device reacts to the size of the load.  Almost immediately your nostrils are assaulted by a uniquely disturbing scent.  The bodies are not so that they smell of rot, but rather smell like roasted meat.  You now regret possessing the knowledge that cooked human flesh can seem rather appetizing.  You shake yourself out of your stupor, and return to the Commons to gather up the next batch.";
	if BodyCount is 2:
		say "You again begin to heft the corpses on to the cart.  The activity is beginning to become familiar to you.  It's not much different than lifting a sack of grain, or potatoes.  You make your way to Engineering again, this time taking care to avoid smelling the fruits of your labor, then go back for your final trip.";
	if BodyCount is 1:
		say "You load the last of the deceased onto the cart and make your way to the elevator, and complete your final trip.  Upon your return you notice that compared to the state you found it in, the nearly empty room feels rather eerie.[line break][line break]'Ah yes, good, you've finished.  How wonderful!  Now, there are just a few more to be dealt with in the bridge.  I'm afraid the crew met a similar fate to the passengers[apostrophe].  I've unlocked entry to the first floor of the ship now, go ahead and take the elevator up.  Oh, and if you ever get lost, just say *map* and your power suit will pull it up on your HUD.'";
		Now the Bodies are nowhere;
		Now the DH Door is unlocked;
		Now the CQ Door is unlocked;
	if BodyCount is 0:
		say "Thankfully, you've already cleaned all the bodies in the Commons";
		stop;
	Decrease BodyCount by 1.

Before going fore from Communications for the first time:
	say "A voice cracks in over the intercom.[line break][line break]'Ahem. Yes. Actually.  Now that you're here, well.  I've changed my mind.  I think you've exposed yourself to quite enough bodies for one day! Ha ha! (oh my that sounded rather forced...) I would put you back into Cryosleep, but, well, you broke the last working pod when you kicked the door off it's hinges.  So I suppose you can just wander around and watch TV or something in the Commons.  We're only going to be flying for a couple more months, hopefully you can entertain yourself till we arrive.  There are a few fabrication tools and plans lying around in Engineering if you're feeling more, heh, constructive.  I'll check in on you from time to time.  It gets pretty boring out here for an AI as well.  Only so many times you can read through the 'Galactic History of Everything' before it just seems trite.'";

Chapter 5 - Dialogue Trees

Include Quip-Based Conversation by Michael Martin.

Section 1 - The Text

Table of Quip Texts (continued)
quip	quiptext
who-am-i	"You try to talk with the creature."
say-nothing	"You decide not to say anything after all[enable the say-nothing quip][terminate the conversation]." 

Table of Alien Interactions
prompt	response	enabled 
"What are you?"	who-am-i	1 
"Say nothing."	say-nothing	1 

Section 2 - Dialogue affects the game