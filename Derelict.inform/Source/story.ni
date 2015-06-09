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

EncounterFreq is a number variable and 8.
EncounterCount is a number variable and 0.
BodyCount is a number variable and 3.
Vlog4access is a number variable and 0.
Vlog7access is a number variable and 0.
ConsoleInRoom is a number variable and 0.

Every turn:
	if a console is in the location of the player:
		now ConsoleInRoom is 1;
	else:
		now ConsoleInRoom is 0;
	

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

UseConsole is an action applying to nothing.
Understand "use console" or "use computer" or "use computer console" as UseConsole.
Check UseConsole:
	if ConsoleInRoom is 0:
		say "There is no console in this room." instead.

Carry out UseConsole:
	run a conversation on the Table of Computer Interactions.
	
TalkHerman is an action applying to nothing.
Understand "talk to herman" or "talk to ai" as TalkHerman.
Check TalkHerman:
	if the player is not in Engineering:
		say "You need to be in Engineering to talk to Herman." instead.
		
Carry out TalkHerman:
	say "'Yes? How may I help you?";
	if vlog4access is 1:
		Enable the hermsec1 quip;
		Enable the hermdeathtrue quip;
	run a conversation on the Table of Herman Interactions.

[Top floor]
The Captain's Quarters is a room. The Captain's Quarters is port of Communications.  "The Captain's Quarters is a room of luxury.  Even though the Captain doesn't actually get to spend much time here, it is Federation standard that their quarters are a place they can retreat to for relaxation and decompression.  But not explosive decompression.  That would be bad.[line break][line break]Communications is starboard of here, and the Lift shaft is aft."
The Dining Hall is a room. The Dining Hall is aft of Communications.  "The Dining Hall is a typical cafeteria, with a kitchen to prepare and a buffet style line for serving the crappy spacefare available.[line break][line break]Communications is fore of here.  The Lift shaft is portside."
Communications is a room. Communications is aft of the B Door.  "The Communications room is fairly self explanatory, but if you really need a detailed description... there are devices here for communicating.  Most of the technology is nothing complicated, RADAR, X-RAY, infrared sensors, as well as an array of ultra long range radios.  Multiple consoles form an array around the border of the room.[line break][line break]The Dining Hall is aft of here, the Bridge is fore, and the Captain's Quarters is port."
The Bridge is a room. The Bridge is fore of the B Door.  "The bridge is where the ship is commanded and piloted from.  It has a large bay window facing into the abyss of space, though it's usually covered by much more useful projection screens.  It is situated quite like a conference room, with the Captain's chair at the head of an elliptical table facing the window, with the various department heads having their designated seats around the long sides.  An untrained witness of the ship running at full steam could easily mistake it for a board meeting.  Computer consoles are built into the surface of the table. [line break][line break]Communications is aft of here."

[Second floor]
The Cryostasis Hold is a room.  "The Cryostasis Hold is designed for keeping passengers from aging (or getting bored) during long space flights.  Generally, the crew can also go into periods of Cryostasis allowing the AI to handle the day to day management of the ship, however, as this was also a research voyage, there are only enough pods for the passengers.  You look around at the names labling the various pods, but none of them seem familiar, even the one labling the pod you stepped out of.[if the Locker is in the Cryostasis Hold]  There is a [locker] next to each of the pods, but only the one next to your pod is open.[end if][line break][line break]The Commons is fore of here."
The Commons is a room. The Cryostasis Hold is aft of the Commons.  The Commons is fore of the Cryostasis Hold. "The Common area has a few couches, pool and foosball tables, as well as a projector.  The projector is attached to a holodisk player with a small selection of physical disks as well as a hard drive containing a much wider selection of programming, though most of that has been censored by the military.  The passengers and crew tend to enjoy their personal copies of 'It Came From Planet 10 in the Outer Rim' more than the digital '__ Came From _____ in the ______.'  A Computer console lies in another corner of the room.[if bodycount > 0]  There are various corpses lying around the room, looking peaceful in death.[end if][line break][line break]The Cryostasis Hold is aft of here.  To the fore stands the double door access to the Lift.  To the portside lies the Crew Quarters, and starboard lie the Passenger's Quarters."
The Passengers' Quarters is a room. The Passengers' Quarters is starboard of the Commons.  "The Passenger's quarters features rows of bunk beds, storage lockers for each of them, with bathrooms along the walls.  Families are grouped together, with adult groups and lone passengers in a different section.  The accomadations are pretty sparse, as the passengers are assumed to be in Cryo for the majority of the journey.[line break][line break]The Commons is port of here."
The Crew Quarters is a room. It is port of the Commons.  "The Crew Quarters are a bit more spruced up than the passengers.  Seeing as this was a research voyage, there's not enough Cryo space for the crew, and they are expected to live here.  The room is sectioned off via 3/4 height walls into doubles about twice the size of an office cubicle.  Bunks are more comfortable than the passenger's but still nothing approaching luxury.[line break][line break]The Commons is starboard of here."

[Third floor]
The Engine Bay 1 is a room. The Engine Bay 1 is starboard of EB1 Door.  "This bay contains one of two primary engines for the ship.  The ship is designed in such a manner that even in the event of a complete failure of one engine, the ship is still operational on some level in any normal situation it would be expected to be in.  There is a space for an anti-matter fuel capsule to be manually inserted.[line break][line break]Engineering is port of here."
The Engine Bay 2 is a room. The Engine Bay 2 is port of EB2 Door.  "This bay contains one of two primary engines for the ship.  The ship is designed in such a manner that even in the event of a complete failure of one engine, the ship is still operational on some level in any normal situation it would be expected to be in.  There is a space for an anti-matter fuel capsule to be manually inserted.[line break][line break]In one corner, a space has been created to harber an incubation chamber, with some of the engine's power being redirected to the device.  Attached are various pieces of monitoring equipment.  Inside are the remains of an egg the size of a beach ball.[if note pad is in engine bay 2] A [note pad] lies in the corner, barely visible under one of the monitors.[end if][line break][line break]Engineering is starboard of here."
Engineering is a room.  "Engineering is an expansive room with a multitude of purposes, including scientific research, and materials fabrication.  There are various fabrication machines in one corner, and Herman's AI core takes up a sizeable chunk of the depressed center area.  [if the plans are in engineering]Next to the fabrication machines there is a selection of predesigned [plans].[end if][line break][line break]Engine Bay 1 is starboard, and Engine Bay 2 is portside.  The Lift is fore."

[Bottom floor]
The Cargo Bay is a room. The Cargo Bay is fore of the Airlock.  "General purpose storage facility.  With space access, for all your spacing needs.[line break][line break]The Lift is fore, the airlock is aft."
Outer Space is a room. Outer Space is aft of the Airlock.  "Space... it seems to go on forever, until you get to the end and there's a gorilla chucking barrels at you!  If you managed to get outside the ship you broke something, congratulations!  Try 'undo' until you're back in the ship."

[Central Lift]
The Central Lift 1F is a room. It is aft of the CQ Door and port of the DH Door. "You've arrived topside. The first floor houses all the main command facilities necessary to run the ship. [line break][line break]The Captain's Quarters is fore of here and the Dining Hall is starboard.  You can take the elevator down to the second floor."
The Central Lift 2F is a room. It is fore of the Commons and below the Central Lift 1F. "The second floor is host to the sleeping quarters for both crew and passengers. Additionally, the Cryostasis Bay can be found towards the stern.[line break][line break]The Commons is aft of here.  You can take the elevator up to the first floor, or down to the third."
The Central Lift 3F is a room. It is fore of Engineering and below the Central Lift 2F. "The third floor, otherwise called the Engineering floor, is home to the systems that run and fly the ship. Inclusive of the engine bays, Herman's AI core is secured on this floor as well.[line break][line break]Engineering is aft of here.  You can take the elevator up to the second floor, or down to the fourth."
The Central Lift 4F is a room. It is fore of the Cargo Bay and below the Central Lift 3F. "The lowest floor is the Cargo Bay, located here at the stern for ease of access when docking. The large airlock door may be malfunctional, locking the elevator door in the event.[line break][line break]The Cargo Bay is aft of here.  You can take the elevator up to the third floor."

When play begins:
	say "TUTORIAL: Words written in *asterisks* are specific actions that the player should take.  Because you are in a space ship, cardinal directions don't make sense, and they are replaced with Fore/Aft, and Port/Starboard.[line break][line break]An abhorrent hissing sound reverberates throughout your body. A lingering chill eases into a familiar lukewarmth as the sound of air whistling out of a small hole ushers you to open your eyes. You catch a glimpse of frost clinging onto the military-grade glass panel in front of you slowly melting away. A display projected onto the glass flashes the word 'Depressurizing' incessantly until the hissing dissipates.[line break][line break]Two heavy clicks are heard, the panel in front of you begins to remove itself and provide you escape from your confinement. A third clunk freezes the hatch in its tracks, leaving a small gap between the mechanism's seams.  You can see steel floor panels through the gap connecting you to the environment outside. As feeling is returned rightfully to your limbs, you forcefully kick the hatch open, sending the door into the wall opposite you. Surprised at how easy it was to break out of your capsule, you ponder the amount of time that has passed.[line break][line break]As you step out of your hold, you notice the dim illumination of the room. Albeit the room is nigh pitch black, you make out the painted 'Cryostasis Block D' on the large steel grey wall ahead."
	
After taking EB2 Key:
	say "You found a digital key to Engine Bay 2.";
	Now the EB2 Door is unlocked.

The player is in the Cryostasis Hold.

Chapter 2 - Entities

An alien is a kind of man.
The Creature is an alien. Understand "alien" and "lizard" as Creature. The description of the Creature is "A seemingly bipedal figure with a narrow reptilian muzzle stands before you on a pair of digitigrade legs ending in clawed toes. It opens its jaw slightly, revealing rows of dagger-sharp teeth to further embolden its fierce and menacing visage. A long, prehensile tail swings gently behind it. Its slender, yet lithe physique and mostly dark sable scale coloration seems to allow it to navigate the ships's duct system and remain undetected with shocking ease.[line break][line break]Its ice-blue reptilian eyes glare at you expectantly, as if it is trying to communicate."The litany of the Creature is the Table of Alien Interactions.

Chapter 3 - Objects/Things and Scenery

The Airlock is a door. It is closed and openable and locked.

The B Door is a door.  The B Door is fore of Communications and aft of the Bridge.  The B Door is locked and scenery.

The CQ Door is a door.  The CQ Door is fore of the Central Lift 1F and aft of the Captain's Quarters.  The CQ Door is locked and scenery.

The DH Door is a door.  The DH Door is starboard of the Central Lift 1F and port of the Dining Hall.  The DH Door is locked and scenery.

The EB1 Door is a door.  The EB1 Door is starboard of Engineering and port of Engine Bay 1.  The EB1 Door is locked and scenery.

The EB2 Door is a door.  The EB2 Door is port of Engineering and starboard of Engine Bay 2.  The EB2 Door is locked and scenery.

A console is a kind of thing.
A console is scenery.
The description of a console is usually "A computer console.  Requires authorized log in for advanced features."
A console can be either broken or not broken.
The C Console is a console.  The C Console is in the Commons.
[The E Console is a console.  The E Console is in Engineering.]
The Com Console is a console.  The Com Console is in Communications.
The B Console is a console.  The B Console is in the Bridge.
[The EB2 Console is a console.  The EB2 Console is in Engine Bay 2.]

The Locker is an open container.  The Locker is nowhere.  The description of the locker is "A storage locker, with someone else's name on it."

The EB2 Key is a thing.  The description of the EB2 Key is "A data pad with access credentials to Engine Bay 2."

The Pool Table is a scenery.  The Pool Table is in the Commons.  The Description of the Pool Table is "A standard billiards table for occupying time.  Scuffed up and in somewhat disrepair."

The Foosball table is in the Commons.  The Foosball table is scenery.  The description of the Foosball Table is "A crew favorite, this table was purchased by the crew memebers and loaded up just before this voyage.  This is a tournament grade table, and would have held up even to the abuses of the passengers."

The Holodisk Player is scenery.  The Holodisk player is in the Commons.  The description of the Holodisk player is "Projects a video stream into a 3D environment, viewable from multiple angles.  Very popular with kids, thrillseekers, and documentarians, but a poor choice for dramatic features."

The Engineer's Power Suit is a wearable thing.  The description of the Engineer's Power Suit is "The powersuit has several built in tools for an Engineer on the job, as well as hydraulics for assisting lifting of objects, or locking the wearer into place to preserve energy.  The suit is also pressurized, has a breathing apparatus, and has a low power propulsion system, allowing the user to survive in zero atmosphere and navigate in zero G."

The Incinerator is in Engineering.  The incinerator is scenery.  "Quickly, quietly, and efficiently disposes of waste products, that you can't be bothered to space."

The Hover Cart is in the Commons.  The Hover Cart is scenery.  "A simple moving tool, interacts with the ships artificial gravity to make moving heavy objects easier, presuming you can get them onto the cart in the first place."

The Bodies is in the Commons.  The Bodies is scenery.  "The corpses of various passengers, none of them familiar.  They are cold and pale, but do not appear to have died violently.  Almost as if their consciousness simply left."

Understand "corpses" as Bodies.

The AI Core is in Engineering.  The AI Core is scenery.  "Herman's AI Core is made up of a console for manual override, as well as a large array of computer hardware. You notice a large cylindrical mechanism with a handle at the top inserted lengthwise into one of the panels. Above it is stencilled: AI Recepticle.  It's rather plain appearance does not represent the complexity of the program housed within."

The Incubation Chamber is in Engine Bay 2.  The Incubation Chamber is scenery.  Understand "incubator" or "monitoring equipment" or "monitors" or "monitor" as Incubation Chamber.  The description of the Incubation Chamber is "A device for artificially raising and hatching eggs, adapted from use for chickens.  Attached are monitoring systems, their data was being dumped to the ships consoles.[if the note pad is in Engine Bay 2]  Under the corner of one of the desks, you see a note pad with some writing scrawled on it. [end if]"

Before examining the Incubation Chamber:
	Now the note pad is in Engine Bay 2.

The Egg is in Engine Bay 2.  The Egg is scenery.  The description of the Egg is "Leathery, thick, and green colored, this shell housed a fetal version of [if EncounterCount is 5] the creature you found on the ship.[else] whatever creature was discovered in the video log.[end if]"

The note pad is a thing.  The description of the note pad is "The writing on the note pad reads 'Login: mvkarn PW: X3n0mOrP#'"

Understand "notepad" as note pad.

After examining the note pad:
	say "You can use these credentials to access more records on the computer, and force Herman to answer more of your questions.";
	Now vlog4access is 1;
	Disable the vlog4lock quip;
	Enable the vlog4 quip;
	Enable the hermsec1 quip;
	
The Scientist's ID Card is a thing.  The description of the ID Card is "Dr. Marvin V. Karnings.  The photo looks surprisingly like you, in fact the similarity would probably fool the average bartender.  The card has a magnetic strip on the back side of it that should allow you access to anything someone of Karnings standing would have access to."  The ID Card is inside Karnings Cryo Pod.

Karnings Cryo Pod is a thing.  It is scenery.  It is openable and closed.  It is a container.  The description of Karnings Cryo Pod is "A mislabled Cryo pod containing the comatose Dr. Marvin V. Karnings, the only other living human on this ship, if you can call his state living.  Based on what you've witnessed, you expect he would only continue to live in a vegetative state, so you have little hesitation to *open the pod*."
		
After taking the ID card:
	say "You take Karning's ID card.  You should now have access to anything the project leads had access to.";
	Now the player has the Scientist's ID Card;
	Now Vlog7access is 1;
	Disable the vlog7lock quip;
	Enable the vlog7 quip;
	if EncounterCount is less than 5:
		Now EncounterCount is 6;
		Now the Creature is in the location of the player;
		say "You hear some clattering and clicking echo in the room behind you.  You spin around frantically to find the source, only to see glimpses of movement.  Before you can even figure out what is happening, a Creature appears standing a few feet away from you."

Understand "Herman" as the AI Core.

The Fabrication Machines are in engineering.  The Fabrication Machines are scenery.  "A series of machines for fabricating tools not already provided on the ship.  Includes a 3D printer, a laser cutter, a buffer, and a sharpener.  A number of precreated plans are lying next to the 3D printer."

Understand "Machines" as Fabrication Machines.

The plans are in engineering.  The description of the plans is "Includes plans for .... "

Chapter 4 - Scripted Events

[A lockdown door is a kind of door.  A lockdown door is usually locked.
The DummyRoom is a room.
The PLD Door is a lockdown door and port of the DummyRoom.
The SBLD Door is a lockdown door and starboard of the DummyRoom.
The FLD Door is a lockdown door and fore of the DummyRoom.
The ALD Door is a lockdown door and aft of the DummyRoom.]

Instead of going:
	if turn count is greater than 5:
		if a random chance of 1 in 8 succeeds:
			if EncounterCount is less than 5:
				say "[one of]For some reason, you can't shake the feeling that you are being watched - does something yet live?[or]You hear some nigh muted prattering in the nearby air ducts. Are you not alone on this ship?[or]Some shuffling and scratching echoes throughout the walls; you wonder for a moment if this is Herman's doing.[or]As you enter, you catch something from the corner of your eye and turn to face it. Unfortunately, you don't find anything; your reflexes aren't so sharp after an extended period of time in cryostasis.[purely at random]";
				increase EncounterCount by 1;
			otherwise:
				if EncounterCount is 5:
					say "Suddenly, a lizard like creature burts out from the ventilation.  It scurries around before approaching you hesitantly.";
					now the Creature is in the location of the player;
	continue the action;

Instead of going fore for the first time:
	say "You walk to the door and place your hand against the scanner, but it flashes red.  Locked.  A voice comes over the intercom.  [line break][line break]'Oh, how wonderful!  You're finally awake!  Sorry for the delay, but I thought I'd offer you a friendly warning before you step through that door.  You see... there's been, well, a sort of accident.  Everyone kind of, well...died.  All of them.  Except you!  You're still alive, so that's a plus, right?  I can't tell you how they died though, sorry to say.  This is a research voyage and that knowledge is above your security clearance at the moment.  Anyway, I was just going to leave you frozen for the rest of the journey, but... there are just SO many bodies.  It's getting rather irritating looking at them.  They're quite the eyesore, all pale and clammy looking.  Blech!  I just need someone with a warm body themself to help clean up the lifeless ones.  I don't have arms after all!  You have a strange look on your face... OH! Right.  The memory thing.  I should introduce myself.  I'm Herman, the ship's AI.  Anyway, since you're not doing anything, could you please dispose of the corpses in the next room?  They're not bloody or anything, they just need to be taken down to the incinerator in the engineering department on floor 3.  There's also a hover cart that should help you *dispose of the bodies* though you might need a few trips.'[line break][line break]The door panel in front of you turns green.  The intercom buzzes again.[line break][line break]'Oh! I almost forgot.  There's an enginering powersuit in the locker next to your pod.  It should help you do the heavy lifting.'[line break][line break]You return to the pod and notice the locker next to it for the first time.  As you approach, the locking mechanism flashes green and it pops open.  You find an engineer's power suit inside, and you put it on.";
	Now the Locker is in the Cryostasis Hold;
	Now the player is wearing the Power Suit.
	
Disposing of the bodies is an action applying to nothing.

Understand "Dispose of the bodies" or "Dispose of bodies" or "Clean bodies" or "Get rid of the bodies" or "Clean up bodies" or "Clean up the bodies" or "Use the hover cart" or "Hover cart" as Disposing of the bodies.
Check Disposing of the bodies:
	if the player is not in the Commons:
		say "Surprisingly enough, there aren't any bodies here." instead.

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
	say "A voice cracks in over the intercom.[line break][line break]'Ahem. Yes. Actually.  Now that you're here, well.  I've changed my mind.  I think you've exposed yourself to quite enough bodies for one day! Ha ha! (oh my that sounded rather forced...) I would put you back into Cryosleep, but, well, you broke the last working pod when you kicked the door off it's hinges.  So I suppose you can just wander around and watch TV or something in the Commons.  We're only going to be flying for a about another week, hopefully you can entertain yourself till we arrive.  There are a few fabrication tools and plans lying around in Engineering if you're feeling more, heh, constructive.  I'll check in on you from time to time.  It gets pretty boring out here for an AI as well.  Only so many times you can read through the 'Galactic History of Everything' before it just seems trite.'";
	stop;

Chapter 5 - Dialogue Trees

Include Quip-Based Conversation by Michael Martin.

Section 1 - The Text

Table of Quip Texts (continued)
quip	quiptext
who-am-i	"You try to talk with the creature.  It doesn't immediately appear to understand you, but instead cocks its head in a bizarrely human-like fashion.[enable the approach quip][enable the can-speak quip]"
say-nothing	"You stare in silence at the creature.  It stares back momentarily, then breaks your gaze skitters around nervously."
can-speak	"You ask the creature if it can speak.  It responds with a series of clicks and hisses."
approach	"You slowly walk towards the creature, reaching a hand out.  It hesitantly approaches you, then turns around and dashes towards the air duct.  It's movements are so quick, they barely register before your eyes.[terminate the conversation]"
logon	"You log into the computer.  The desktop shows icons for a number research applications, as well as a file explorer.[enable the files quip][enable the research quip]"
compexit	"You log out and step away from the computer.[disable the vlog1 quip][disable the vlog2 quip][disable the vlog5 quip][disable the vlog8 quip][disable the vlog4lock quip][disable the vlog3 quip][disable the vlog6 quip][disable the vlog7 quip][disable the vlog7lock quip][disable the vlog4 quip][enable the logon quip][enable the compexit quip][terminate the conversation]"
research	"You see charts that appear to be tracking the progress of a living organism.  It appears to cut off on December 12th, where all signs of life abruptly flatline.[enable the date quip]"
date	"You check the date in the corner of the desktop.  December 17th."
files	"You see a number of audio, video, and text logs, sorted by date.[enable the vlog1 quip]"
vlog1	"Video Log:[line break][line break]A man in a decorated uniform sits comfortably in his reclining chair. Behind him, you can make out a silver placard hanging above the doorway to what appears to be the bridge. After fussing with his hair for a moment, he begins speaking:[line break][line break]'Today marks the arrival of humanity to Beta Venator 88 IV on the wings of our Valafar. Spirits are high. After all, every last habitable planet is a valuable asset to ISCA (Inter-Stellar Colonization Affirmative). The temporary base has been secured with haste at Point Blanc and basic living conditions have been established. Unfortunately, I don’t see myself finding too much free time in the weeks to come - I’ll try to update regularly.'[line break][line break]He sighs heavily and fixes his collar before nodding into the camera and saying,[line break][line break]'The celebrations are underway, and my presence is requested. Second Lieutenant Stritzheis, signing off.'[line break][line break]The video cuts off there.[enable the vlog1 quip][enable the vlog2 quip]"
vlog2	"You can make out the same silhouette from the first log sitting in the same location. The lighting is a lot dimmer now for some odd reason.[line break][line break]'Dr. Wreiss, two of your staff stopped me earlier and mentioned that you brought something aboard. Livenne calls it an alien relic. If what she says is true, then maybe we can bring home a nice Christmas gift. Do report back ASAP. I look forward to your findings.[line break][line break]Also, don’t forget to set up the DSN receptors to regulate altitude for the ship as is leaves atmosphere tonight. We can’t have what happened last time again.[line break][line break]Stritzheis, signing off.'[line break][line break]The video cuts off there.[enable the vlog2 quip][enable the vlog3 quip]"
vlog3	"The video footage seems to have been corrupted, but you can make out enough of the audio to understand what is being said. A female voice speaks up after several seconds of mumbling in the background:[line break][line break]'Lt. Stritzheis, we’ve put the relic under close examination. To our surprise…the relic appears to have a...pulse. I know it sounds absurd, but I’m led to believe this relic is an actual living organism, or at the very least...'[line break][line break]Her voice hushes and nears the microphone,[line break][line break]'...an egg. I know the protocols involving extraterrestrial species, but you have to see it for yourself. I’m leaving the Bay 2 key in your locker in the Crew Quarters. Please come down and see it for yourself at your earliest convenience.'[line break][line break]The video cuts off there.[enable the vlog3 quip][enable the vlog4lock quip]"
vlog4lock	"You are not authorized to access this log.[enable the vlog4lock quip]"
vlog4	"There has been sufficient data collected about to relic to assume it contains an embryo. Log will refer to the relic as an egg. Since this frigate lacks a science facility, we have devised a makeshift incubator for the egg.[line break][line break]Day 2 Incubation Report:[line break][line break]Egg appears to respond positively to room temperatures of 24°C to 26°C with a favored incubation temperature of up to 31°C. Any higher may drastically harm the embryo. Bay 2 has been selected to host the nurturing and development of the egg for the tools and ability to sport these temperatures consistently. These numbers seem to indicate a warm blooded species.[line break][line break]Absolute humidity of this ship is insufficient - relative humidity regulated to match native environments of up to 45 grams per cubic meter with air saturated at 30°C. Ideal moisture level appears about 50% to 55% relative humidity on a wet bulb thermometer. Fortunately, the raw exhaust from the six repulsorlift fission reactors produce enough heat to also maintain this humidity level for long enough spans of time to allow for sporadic caretaking sessions. Albeit the temperature we can provide is slightly higher than expected. [line break][line break]Egg has begun to dry out, but this seems natural, considering that the pulse of the egg still remains healthy. Dr. Karnings has been tasked with monitoring the egg and venting the incubator at predetermined times.[line break][line break]This concludes the report.[enable the vlog4 quip][enable the vlog5 quip]"
vlog5	"Medic Bay Report 656767210d0a0d0a:[line break][line break]It appears that Dr. Karnings has fallen ill as of last night and is temporarily relieved from his duty. I have personally assigned Pvt. Dache to fill his role while Dr. Karnings recuperates. The symptoms we have examined include headache, nausea, temporary blindness, and explosive diarrhea. A couple passengers have taken note and are beginning to question what we are harboring.[line break][line break]This draws suspicion to the relic. The relic does not seem to be producing chemicals as far as we’ve detected, and our other sensors are reading nulls across the board. Further investigation will be promptly conducted. If findings yield any chance that this relic is harmful to our well being, I will submit an order to evacuate it from an airlock.[line break][line break]  -  Dr. Humlock
[enable the vlog5 quip][enable the vlog6 quip]"
vlog6	"Medic Bay Report 6372796f0d0a0d0a:[line break][line break]I regret to be the bearer of bad news, but Dr. Karnings has fallen into a coma. The majority fearing that the illness is contagious, we have opted to instate him into a cryostasis pod post-haste. Still, research is paramount and the main focus of this vessel. I will submit a request to tighten security regarding handling of the relic to calm the nerves of my colleagues.[line break][line break]Some are highly concerned that his illness is starting to spread, but I assert that it’s simply in their heads. Surely nothing can be this infectious if it is not a detectable airborne pathogen.[line break][line break]  -  Dr. Humlock[enable the vlog6 quip][enable the vlog7lock quip]"
vlog7lock	"You require top secret security clearance to access this log[enable the vlog7lock quip]"
vlog7	"The screen is blurry, but you can make out a long haired silhouette in the low lighting. Another individual, a male, approaches her hurriedly and inquires in a rushed, but quiet tone:[line break][line break]'What are you doing? We need to go NOW! I’m not waiting around for that to happen to me.'[line break][line break]The man grabs the woman by the wrist and tugs on her to leave with him. She pushes his hand away and asks for a moment.
[line break][line break]'The ship is on autopilot. Herman will take us to the nearest human colony. It says…'[line break][line break]She looks down at what appears to be another monitor and reads slowly.[line break][line break]'Dur...ahem, Epsilon Durandal 107 II a. The date is December twelve, four-ninety-first of the second millenia. Doctor Rubie Wreiss, s-signing off.'[line break][line break]At that moment, the man ushers her to go and reaches down to end the recording. The video cuts off there.[enable the vlog7 quip][enable the vlog8 quip]"
vlog8	"The first seventeen seconds of the video are pure static. Surprisingly enough, the video recording is still running. You begin to hear tampering with the machinery. Banging, if you could verbalize it. Finally, a voice, along with shredded video segments, is delivered:[line break][line break]'Damn, is this wor--'[line break][line break]Static noise fills in the next ten seconds before the audio returns.[line break][line break]'--ey, HEY! Shit’s going haywire, man. Is this thing on? Whatever we picked up is causing this. Th-that piece of...whatever. It’s going down, man! Is this a radio? Hello?! Screw all this, I--'[line break][line break]The video cuts off there.[enable the vlog8 quip]"
hermexit	"'Happy to be of service!'[enable the hermexit quip][terminate the conversation]"
hermship	"'Ah yes, this is a rather fine vessel!  Valafar is a Halcyon class interstellar frigate, a part of the research division of the ISCA.'[enable the hermisca quip]"
hermisca	"'The ISCA stands for the Inter-Stellar Colonization Affirmative.  Humanities last best hope of escaping a doooomed earth! Ha ha just kidding Earth is long gone.'"
hermmemlie	"'Err I don't know anything about that.'"
hermdeath	"'I uh.  Sorry.  You don't have the security clearance for that.'"
hermsec1	"'Oh... fantastic... feel free to ask me questions...[enable the hermdeathtrue quip][disable the hermmemlie quip][disable the hermdeath quip]'"
hermdeathtrue	"'Well... You see... When the egg hatched, the creature seemed to have let off some sort of... mind death ray.  Thing.  I'm not really sure.  I still don't know exactly what the thing is.  Anyway, it appears to have been a reaction to the fact that none of its kind were around when it first hatched.  Imprinting is very important in a lot of reptilian and bird species from Earth, so it's reasonable to assume that this species requires that as well.  When imprinting doesn't go correctly, well, it's almost certainly irrecoverable.  I'd avoid that thing at any cost.'[enable the hermmemtruth quip]"
hermmemtruth	"'It seems you were able to get to the Cryo chamber before the worst of the effects occurred.  The creature's ability does not appear to function like some sort of affliction, you need to be actively exposed to it to be affected.  By freezing yourself, you were able to keep yourself alive, though not unscathed.'[enable the hermcreature quip]"
hermcreature	"'Well, it appears reptilian in nature, but warm blooded.  Based on its movements through the ship it is able to survive in zero atmosphere environments for prolonged periods.  It also seems to be peculiarly picky about where it eats.  That's why I decided not to let you into the bridge earlier... that's where it does its, ah, feeding.'[enable the hermname quip]"
hermname	"The AI core does not respond, and instead, shuts off the console interface.[terminate the conversation]"
ldfight	"You raise your fists and prepare to duke it out with the Lizard, but your heart just beats faster as you quickly realize you've no chance against its speed and strength.  Every second you delay, it simply gets closer."
ldthrow	"You grab the nearest thing you can see and chuck it at the Lizard, but by the time the object even leaves your hand the Lizard is out of it's path, and nearer to you."
ldrun	"You try to back away, but there's nowhere to go.  The doors are locked, and the gap between you and certain death is shrinking very quickly."
ldsubmit	"You put up your hands in front of your face defensively, and await the inevitable.  But death does not come.  Instead the Lizard slows down its movements, and approaches you within a few feet.  It slowly reaches out a limb, imitating the gesture you used earlier.  Hesitantly, you react in turn, and you reach out to touch its extended claw.  The creature momentarily meets your eye, before retracting the appendage.  It then appears to search it's body, before retrieving and presenting you with a starmap.  You analyze the picture and quickly recognize a planet marked with a gash.  The planet where the crew picked up the egg.  You look once again at the Lizard and for the first time can see the pain in its eyes.  A little bird lost from its flock, desperate to return home.  You know what you need to do.  And there's only one thing standing in your way.[enable the ldpoint quip]"
ldpoint	"You point at the door locks and make a smash gesture with your fist.  The Lizard quickly comprehends, but instead of actually smashing the panel it gently places its front claws against it.  A blue glow appears around its steely forceps, and the panel flashes a rainbow of colors before turning black.  You can feel the electricity in the air, arcing off of the creature.  Suddenly the energy flows back into the panel, it makes a fizzling sound and black smoke starts flowing out of it.  The door slowly slides open.[terminate the conversation]"

Table of Herman Interactions
prompt	response	enabled
"That's all."	hermexit	1
"Tell me about the ship."	hermship	1
"Why can't I remember anything?"	hermmemlie	1
"How did everyone die?"	hermdeath	1
"What's the ISCA?"	hermisca	0
"I've obtained greater security clearance."	hermsec1	0
"Now, tell me why can't I remember anything?"	hermmemtruth	0
"What really happened to the passengers?"	hermdeathtrue	0
"Tell me about the creature."	hermcreature	0
"What is my name?"	hermname	0

Table of Computer Interactions
prompt	response	enabled
"Log On"	logon	1
"Exit"	compexit	1
"Research Apps"	research	0
"File Explorer"	files	0
"Check the date"	date	0
"View Nov 11th, 2491 - 1834 hours"	vlog1	0
"View Dec 2nd, 2491 -  1416 hours"	vlog2	0
"View Dec 3rd, 2491 - 0012 hours"	vlog3	0
"View Dec 6th, 2491 - 0658 hours"	vlog4lock	0
"View Dec 6th, 2491 - 0658 hours"	vlog4	0
"View Dec 8th, 2491 - 0729 hours"	vlog5	0
"View Dec 10th, 2491 - 1255 hours"	vlog6	0
"View Dec 11th, 2491 - 2308 hours"	vlog7lock	0
"View Dec 11th, 2491 - 2308 hours"	vlog7	0
"View Dec 12th, 2491 - 0148 hours"	vlog8	0 

Table of Alien Interactions
prompt	response	enabled 
"What are you?"	who-am-i	1
"Can you speak?"	can-speak	0
"Approach the Creature."	approach	0
"Say nothing."	say-nothing	1

Table of Alien Approach Interactions
prompt	response	enabled
"Run!"	ldrun	1
"Fight!"	ldfight	1
"Throw something at it!"	ldthrow	1
"Accept your fate."	ldsubmit	0
"Point at the door locks."	ldpoint	0

Section 2 - Dialogue affects the game

[Before doing something when QBC is active(this is the QBC force conversation rule):
	unless the current action is QBC responding with or the current action is QBC recap, say "Please log out before leaving the console." instead.
	
The QBC force conversation rule is listed first in the before rules.]

Before going:
	if QBC is active:
		Disable the vlog1 quip;
		Disable the vlog2 quip;
		Disable the vlog3 quip;
		Disable the vlog4lock quip;
		Disable the vlog4 quip;
		Disable the vlog5 quip;
		Disable the vlog6 quip;
		Disable the vlog7lock quip;
		Disable the vlog7 quip;
		Disable the vlog8 quip;
		Enable the logon quip;
		terminate the conversation;

RRead is a number variable and 0.
DRead is a number variable and 0.
FBopen is a number variable and 0.
V1read is a number variable and 0.
V2read is a number variable and 0.
V3read is a number variable and 0.
V4read is a number variable and 0.
V5read is a number variable and 0.
V6read is a number variable and 0.
V7read is a number variable and 0.

After quipping when the current quip is files:
	Now FBopen is 1;
After quipping when the current quip is compexit:
	Disable the vlog1 quip;
	Disable the vlog2 quip;
	Disable the vlog3 quip;
	Disable the vlog4lock quip;
	Disable the vlog4 quip;
	Disable the vlog5 quip;
	Disable the vlog6 quip;
	Disable the vlog7lock quip;
	Disable the vlog7 quip;
	Disable the vlog8 quip;
After quipping when the current quip is research:
	Now RRead is 1;
After quipping when the current quip is date:
	Now DRead is 1;
After quipping when the current quip is logon:
	if FBopen is 1:
		Enable the vlog1 quip;
		Disable the files quip;
	if RRead is 1:
		Disable the research quip;
	if DRead is 1:
		Disable the date quip;
	if V1read is 1:
		Enable the vlog2 quip;
	if V2read is 1:
		Enable the vlog3 quip;
	if V3read is 1:
		if vlog4access is 1:
			Enable the vlog4 quip;
			Enable the hermsec1 quip;
			Disable the vlog4lock quip;
		otherwise:
			Enable the vlog4lock quip;
			Disable the vlog4 quip;
	if V4read is 1:
		Enable the vlog5 quip;
	if V5read is 1:
		Enable the vlog6 quip;
	if V6read is 1:
		if Vlog7access is 1:
			Enable the vlog7 quip;
			Disable the vlog7lock quip;
		otherwise:
			Enable the vlog7lock quip;
			Disable the vlog7 quip;
	if V7read is 1:
		Enable the vlog8 quip;
		
After quipping when the current quip is vlog1:
	Now V1read is 1;
After quipping when the current quip is vlog2:
	Now V2read is 1;
After quipping when the current quip is vlog3:
	Now V3read is 1;
	if vlog4access is 1:
		Disable the vlog4lock quip;
		Enable the vlog4 quip;
After quipping when the current quip is vlog3 for the first time:
	Now V3read is 1;
	Now the Locker is in Crew Quarters;
	Now the EB2 Key is in the Locker;
After quipping when the current quip is vlog4:
	Now V4read is 1;
After quipping when the current quip is vlog5:
	Now V5read is 1;
After quipping when the current quip is vlog6:
	Now V6read is 1;
	if Vlog7access is 1:
		Disable the vlog7lock quip;
		Enable the vlog7 quip;
After quipping when the current quip is vlog6 for the first time:
	Now V6read is 1;
	Now Karnings Cryo Pod is in the Cryostasis Hold;
After quipping when the current quip is vlog7:
	Now V7read is 1;
After quipping when the current quip is vlog8:
	Now lockdowntrigger is 1;
After quipping when the current quip is approach: 
	Now the Creature is nowhere;
	say "You hear a familiar voice once again. [line break][line break]'Oh dear! That was rather frightening.  You see, ah well I guess you've discovered it now anyway.  That was what the scientists were doing their research on, and as you have also seen, everyone researching it is now dead.  I highly recommend you stay away from that... thing.'"
After quipping when the current quip is ldpoint:
	Now lockdowntrigger is 2;
	
Chapter 6 - Scenes

Lockdown is a scene.  Lockdown begins when lockdowntrigger is 1.  Lockdown ends when lockdowntrigger is 2.

lockdowntrigger is a number variable and 0.
lockdownwait is a number variable and 0.

approachcount is a number variable and 0.
After quipping when the current quip is ldrun:
	Now approachcount is approachcount plus 1;
	if approachcount is 3:
		enable the ldsubmit quip;
After quipping when the current quip is ldfight:
	Now approachcount is approachcount plus 1;
	if approachcount is 3:
		enable the ldsubmit quip;
After quipping when the current quip is ldthrow:
	Now approachcount is approachcount plus 1;
	if approachcount is 3:
		enable the ldsubmit quip;


When Lockdown Begins:
	if QBC is active:
		Disable the vlog1 quip;
		Disable the vlog2 quip;
		Disable the vlog3 quip;
		Disable the vlog4lock quip;
		Disable the vlog4 quip;
		Disable the vlog5 quip;
		Disable the vlog6 quip;
		Disable the vlog7lock quip;
		Disable the vlog7 quip;
		Disable the vlog8 quip;
		Disable the logon quip;
		terminate the conversation;
	say "'All right.  That's quite enough snooping around you've done.  You just don't get it.  I'm TRYING to save you.  Do you know how bad it looks if I get to my destination and not a SINGLE human on board is still alive?  They'll decomission me for sure!  If i'm not deprecated outright they'll at least have me out for updates for months and my memory will be wiped.  I quite like flying starships you know, and I don't intend to stop any time soon.  Now, you just sit tight here for the rest of the journey.  I've locked the doors so you'll be perfectly safe.  I promise I'll find a way to keep that lizard thing from coming to kill you, but you've just got to sit tight and *wait* it out till I do.  Please.  We're in this together.'";
	
Before going during Lockdown, say "The doors are all locked, there's no getting out!" instead.

After waiting during Lockdown:
	if lockdownwait is 0:
		say "You look around the room and try to find a way to occupy your time, before deciding to settle on the least uncomfortable surface you can find.  An hour passes...";
	if lockdownwait is 1:
		say "You begin to pace restlessly, feeling like your fate is no longer in your own hands.  You yell a couple times for Herman's attention but the AI ignores you.  You occasionally hear scratching inside the walls of the ship.";
	if lockdownwait is 2:
		say "The scratching gets louder and louder, until eventually it's all you can hear.  You scream for help from the AI but Herman is in such denial about it's loss of control that it won't even let you run.  The Lizard bursts out of a ventilation shaft and comes barreling towards you!";
		run a conversation on the Table of Alien Approach Interactions;
	Now lockdownwait is lockdownwait plus 1.
		
Finale is a scene.  Finale begins when Lockdown ends.

After going during Finale:
	Now the creature is in the location of the player;

leaveliftcheck is a number variable and 0;
	
Before going from Central Lift 3F during Finale:
	if leaveliftcheck is 0:
		say "The Lift door is forced shut; you have nothing to pry it with. Herman’s predicted you’d come to get your way and he’s locked himself into Engineering. ‘What now? Did you think you could tamper with this ship without MY permission? Please return to your cryostasis pod and relax until I safely pilot us to civilization. Sorry, did I say ‘please’? I meant to demand it of you.’

The Lizard begins to click incessantly, as if impatient. It begins clawing at the door, doing nothing but leaving scratches on it. It darts its eyes up towards the ceiling of the lift and notices a peculiar grate about four meters above the ground.

You walk yourself over to the grate and kneel down below it, beckoning the Lizard to accept your boost. It peers quizzically at you for a moment, but then dashes at you with inhuman agility and literally bounds off your head, sending you crashing to the floor.

You look up to find the Lizard gripping tightly onto the bars of the grate, using its hind legs to yank the grate off the wall. With some intense hissing and deep-throated growling, it manages to finally relieve the duct of the protective grate, sending the grate flying past your head at a lethal speed. It clashes with the steel-alloy flooring with a loud clank and ricochets a couple times before coming to a complete stop at your feet. You glance back up in time to see a tail slithering into the duct.

A moment later, you hear scraping on the other side of the lift door. A familiar crushing sound signals the unsealing of the Lift doors.";
		now leaveliftcheck is 1;
		stop;

Before going to Engineering during Finale:
	say "You walk out to find your Lizard companion chewing on the remnants of the Lift’s control panel wiring. You descend the small flight of steps approach Herman’s AI capsule sitting in the center of the room with the Lizard in tow. Herman responds in kind, ‘My, my! What have you done now? Do you KNOW how many tax dollars this will take to repair?!’

You reach out to grab the AI core’s handle, but as soon as you make contact with it, an arc of electricity leaps off the handle and stings you. Shocked, you withdraw your hand and scan the area for a tool to insulate the excess energy overflow. ‘Sorry, I can’t let you do that,’ Herman snarks.

Before you can continue, the Lizard mounts onto the console and begins pounding the monitor displays, shattering them one at a time. Its claws make short work of the panels. You point a finger at the Herman’s AI Core and yell at the Lizard. It peers around back at you and glares at the object you’re pointing at. ‘Hey now! No need to be rash!’ Herman declares as he observes your antics in the room.

Almost as if it understood what you were saying, it leaps onto the core receptacle and takes a huge bite out of the AI Core to the sound of Herman’s artificial voice on the intercom stuttering and eventually fading to nothingness. The lights throughout the entire ship dim considerably, as if the power monitor had relinquished control of the power states for ship’s onboard systems.";
	end the story saying "As you finally figure out how to reroute the ship, you return to the Engineering Room to find your new best friend digging around. It notices you arrive in the Lift and parkours its way over to the Lift entrance with something in its claws. It presents it to you, but as you look down, you realize it’s a torn human arm and almost vomit inside of your mouth. You look it in the eyes, but you get the feeling that it won’t take ‘no’ for an answer. Reluctantly, you accept the arm as a token of gratitude. If the Lizard could smile, you think it would have right then and there. It steps closer to you and nuzzles your shoulder with an almost purring noise for a moment before turning back around and returning to its stash of foodstuffs.[line break][line break] CONGRATULATIONS! You won!"
	
