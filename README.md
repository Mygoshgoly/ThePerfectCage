# The Perfect Cage
* A top-down survival game built in Godot (Work in progress)

This Game is a top‑down survival game where each room changes colors and reacts to colors 
The environment itself becomes your enemy — and your flashlight is your only weapon.

##Current Features Implemented
- Player movement
- Enemy tracking AI
- Flashlight toggle
- Basic lighting system
- Room structure prototype


## Core Gameplay Concept
### Dynamic Room Danger System
Every room has a *color state*, and each color represents a different type of danger:
- Pink rooms (Magenta):
- Orange rooms(Gluttony):
- Yellow rooms (Greed):
- Light Blue rooms (Sloth):
- Red rooms (Wrath):
- Purple rooms (Pride):
- Green rooms (Envy)

### Color-Matching Flashlight Comabt
The player carries a flashlight with a color wheel.
TO survive, player must:
- figure out the color of the light that can neutralize the room
- strategically switch colors dring combat or exploration

### Battery Management
The flashlight consumes battery over time.
Player must:
- Collect battery pickups
- Manage usage carefully
- Avoid running out during high danger color phases

## How to Run (as of now)
1. Clone the repository
2. open in Godot 4.x
3. Run the main scene
