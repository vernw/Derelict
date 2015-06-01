"Derelict" by Vern & Mark

Chapter 0 - Setup

The story headline is "A dark mystery".
Use American dialect.
Use no scoring.

Chapter 1 - World Ruleset

Fore is a direction. The opposite of fore is aft. Understand "f" as fore. [Replaces North]
Port is a direction. The opposite of port is starboard. Understand "p" as port. [Replaces West]
Starboard is a direction. The opposite of starboard is port.  Understand "s" and "sb" as starboard. [Replaces East]
Aft is a direction. The opposite of aft is fore. Understand  "a" and "af" as aft. [Replaces South]

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
Communications is a room. Communications is fore of the Dining Hall and starboard of the Captain's Quarters.  "The Communications room is fairly self explanatory, but if you really need a detailed description... there are devices here for communicating.  Most of the technology is nothing complicated, RADAR, X-RAY, infrared sensors, as well as an array of ultra long range radios.[line break][line break]The Dining Hall is aft of here, the Bridge is fore, and the Captain's Quarters is port."
The Bridge is a room. The Bridge is fore of Communications.  "The bridge is where the ship is commanded and piloted from.  It has a large bay window facing into the abyss of space, though it's usually covered by much more useful projection screens.  It is situated quite like a conference room, with the Captain's chair at the head of an elliptical table facing the window, with the various department heads having their designated seats around the long sides.  An untrained witness of the ship running at full steam could easily mistake it for a board meeting.[line break][line break]Communications is aft of here."

[Second floor]
The Cryostasis Hold is a room. The Cryostasis Hold is aft of the the Commons.
The Commons is a room. The Commons is port of the Passengers' Quarters and starboard of the Crew Quarters. "The Common area has a few couches, a pool and foosball table, as well as a projector.  The projector is attached to a holodisk player with a small selection of physical disks as well as a hard drive containing a much wider selection of programming, though most of that has been censored by the military.  The passengers and crew tend to enjoy their personal copies of 'It Came From Planet 10 in the Outer Rim' more than the digital '__ Came From _____ in the ______.'[line break][line break]The Cryostasis Hold is aft of here.  To the fore stands the double door access to the Lift."
The Passengers' Quarters is a room.
The Crew Quarters is a room.

[Third floor]
The Engine Bay 1 is a room. The Engine Bay 1 is starboard of Engineering.
The Engine Bay 2 is a room. The Engine Bay 2 is port of Engineering.
Engineering is a room.

[Bottom floor]
The Cargo Bay is a room. The Cargo Bay is fore of the Cargo Airlock.
Outer Space is a room. Outer Space is aft of the Cargo Airlock.
The Cargo Airlock is a door.

[Lift]
The Central Lift is a room. The Central Lift is aft of the Captain's Quarters and port of the Dining Hall.
Instead of going aft from the Captain's Quarters:
	If the Central Lift is not mapped aft of the Captain's Quarters
	begin;
		say "You push the button to call the elevator.";
		now the Central Lift is mapped aft of the Captain's Quarters;
	end if;
	continue the action;
Instead of going port in the Dining Hall:
	If the Central Lift is not mapped port of the Dining Hall
	begin;
		say "You push the button to call the elevator.";
		now the Central Lift is mapped port of the Dining Hall;
	end if;
	continue the action;
Instead of going fore in the Commons:
	If the Central Lift is not mapped fore of the Commons
	begin;
		say "You push the button to call the elevator.";
		now the Central Lift is mapped fore of the Commons;
	end if;
	continue the action;
Instead of going fore in Engineering:
	If the Central Lift is not mapped fore of the Engineering
	begin;
		say "You push the button to call the elevator.";
		now the Central Lift is mapped fore of the Engineering;
	end if;
	continue the action;
Instead of going fore in the Cargo Bay:
	If the Central Lift is not mapped fore of the Cargo Bay
	begin;
		say "You push the button to call the elevator.";
		now the Central Lift is mapped fore of the Cargo Bay;
	end if;
	continue the action;
	
Instead of going up in the Central Lift:
	If the Captain's Quarters is mapped fore of the Central Lift
	begin;
		say "This is the top level.";
	end if;
	If the Commons is mapped aft of the Central Lift
	begin;
		now the Captain's Quarters is mapped fore of the Central Lift;
		now nothing is mapped aft of the Central Lift;
		now nothing is mapped fore of the Commons;
		say "The lift churns upwards towards the first floor.";
	end if;
	If Engineering is mapped aft of the Central Lift
	begin;
		now the Commons are mapped aft of the Central Lift;
		now nothing is mapped fore of Engineering;
		say "The lift churns upwards towards the second floor.";
	end if;
	If the Cargo Bay is mapped aft of the Central Lift
	begin;
		now Engineering is mapped aft of the Central Lift;
		now nothing is mapped fore of the Cargo Bay;
		say "The lift churns upwards towards the third floor.";
	end if;
	
Instead of going down in the Central Lift:
	If the Captain's Quarters is mapped fore of the Central Lift
	begin;
		now the Commons are mapped aft of the Central Lift;
		now nothing is mapped aft of the Captain's Quarters;
		now nothing is mapped port of the Dining Hall;
		say "The lift churns upwards towards the second floor.";
	end if;
	If the Dining Hall is mapped starboard of the Central Lift
	begin;
		now the Commons are mapped aft of the Central Lift;
		now nothing is mapped aft of the Captain's Quarters;
		now nothing is mapped port of the Dining Hall;
		say "The lift churns upwards towards the second floor.";
	end if;
	If the Commons is mapped aft of the Central Lift
	begin;
		now Engineering is mapped aft of the Central Lift;
		now nothing is mapped fore of the Commons;
		say "The lift churns upwards towards the third floor.";
	end if;
	If Engineering is mapped aft of the Central Lift
	begin;
		now the Cargo Bay is mapped aft of the Central Lift;
		now nothing is mapped fore of Engineering;
		say "The lift churns upwards towards the bottom floor.";
	end if;
	If the Cargo Bay is mapped aft of the Central Lift
	begin;
		say "This is the bottom level.";
	end if;

The player is in the Cryostasis Hold.

Chapter 2 - Entities

Chapter 3 - Objects/Things and Scenery

Chapter 4 - Scripted Events

When play begins:
	say "An abhorrent hissing sound echoes haphazardly throughout your body. A lingering chill eases into a familiar lukewarmth as the sound of air whistling out of a small hole ushers you to open your eyes, allowing you to catch a glimpse of the frost clinging onto the military-grade glass panel in front of you slowly melt away. A display projected onto the glass in front of you flashes the word 'Depressurizing' incessantly until the hissing dissipates.[line break][line break]Two heavy clicks are heard, and the panel in front of you begins the process of removing itself to provide you passage from your confinement. A third clunk freezes the hatch in its tracks, leaving a small gap between the mechanism's seams connecting you to the environment outside. As feeling is returned rightfully to your limbs, you forcefully kick the hatch open, sending the door into the wall opposite you. Surprised at how easy it was to break out of your capsule, you ponder the amount of time that has passed.[line break][line break]As you step out of your hold, you notice the dim illumination of the room. Albeit the room is nigh pitch black, you make out the painted 'Cryostasis Block D' on the large steel grey wall ahead."

Chapter 5 - Dialogue Trees (Nodes)