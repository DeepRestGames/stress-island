# Stress Island
An island full of cute animals that are stressed out by their lives. It's up to the player to give some therapy to everybody, and figure out themselves in the process.

# Narrative Design

## Story Concept

The protagonist is a migratory animal named **Greg Universe** who returns to the village only to find it deserted.

In the village, there is only one other animal (the eldest) who explains to the protagonist that the other inhabitants gradually left because they were too stressed.

It's up to the protagonist to go and find the animals and convince them to return to the village.

## NPCs

- **Hedgehog** (by Hell O Borus): A bit of a kleptomaniac, he keeps stealing things unintentionally and doesn’t understand why people dislike him.

- **Turtle - Steel Drum**: Withdraws into her shell when stressed. She’s the oldest character and the one found in the village.

- **Seal - Percussion**: Acts like a dog, which has stressed out another animal. She needs to learn that the other animal cares for her but that she needs to respect their space and not be overly exuberant all the time.

- **Penguin - Kalimba**: Stressed out by the hyperactive seal.

- **Lizard / Komodo Dragon**: Stressed out by her children who are always around her.

- **Crab - Harmonica / Pan Flute**: A painter stressed because he lacks inspiration. The harmonica is always left on the ground.

- **Flamingo - Guitar**: A flamenco guitarist (hehe) stressed by issues of ego and fame. He has to eat shrimp to keep up his image, but he’s grown to dislike them.

- **Pelican - Saxophone**: Stressed from drinking too much coffee to avoid yawning. When he yawns, everyone makes fun of him because his spine sticks out.

- **Owl-Bear**: Stressed because everyone thinks he’s aggressive, but he just wants to protect his little ones. Clumsy, he bumps into people and breaks things.

- **Red-Throated Bird - Bass / Contrabass Flute**: Stressed because he’s having trouble finding a mate.



# Game Design

## Objective

Bring the main animals back to the village (secondary animals are not required for the "true" ending).

When a character is rescued, they return to the village. Their house is restored, and everything becomes cuter.

Areas can be unlocked through events (e.g., rescuing a character), using key items, or through "abilities" or "knowledge."
Challenging minigames are used to overcome obstacles, which become easier when NPCs explain how to get past them.

## Resolving NPC Dramas

Simple and mixed conditions for resolving NPC issues:
- A specific item is needed (hinted at explicitly or implicitly, e.g., "I really miss fishing").
- A character must already be in the village to allow another to return (conveyed through dialogue, either explicitly or implicitly).
- An event must have occurred.
- A specific conversation with another character is required to know the right thing to say to convince an NPC to return.

## Camera System

3D isometric camera that follows the player across medium-sized maps (similar to **Trash Wizard** style).
At the edges of the map, the camera stops, and it's possible to "change maps" by moving onto specific pathways.

## Additional Notes

- **Unlimited Inventory**
- **No Dialogue Choices** (this may change later)

### Cuteness Overload

The animals that return to the village play musical instruments. As they are rescued, new layers are added to the music, in a style similar to **Outer Wilds**.

### Puzzle Idea

A maze where you can hear the music of an animal—growing louder as you move in the right direction.

### Puzzle Idea

A climbing wall where you must choose holds of the same color.


# Game Systems
Just a first draft, needs to be refined.

## 1. NPC System
   - **Dialogue System**: Manages NPC conversations. Consider using a dialogue tree that branches based on player choices or story progress.
   - **Needs & Tasks System**: Each NPC should have a unique "need" or quest. Define an interface or base class for needs, allowing for variety (e.g., fetching items, talking to another NPC).
   - **NPC Tracking**: Tracks NPC states, such as whether they've been helped, or what dialogue lines should appear.

## 2. Inventory System
   - **Item Pickup & Storage**: Allows the player to pick up, hold, and use items. Each item could have tags or properties (e.g., “food” or “key item”) to determine which NPC it satisfies.
   - **Item Interaction**: Enables the use of items on NPCs or the environment to fulfill needs.

## 3. Quest/Task System
   - A structure to define, track, and complete quests. This system can manage active and completed tasks, trigger dialogue updates, and mark quests as fulfilled.
   - **Quest Progression**: Manages quests with multiple stages or dependencies (e.g., an NPC needing the player to speak to another NPC).

## 4. Dialogue Management & Branching
   - **Branching Logic**: Implements branching dialogue that changes based on previous choices, fulfilled needs, or quest status.
   - **Text Display & Effects**: Adds typing effects, animations, or sound effects for a charming feel.

## 5. Save/Load System
   - Stores player progress, including completed quests, inventory items, and NPC states.

## 6. UI System
   - **Dialogue Boxes**: Simple text boxes with a customizable appearance to suit the game's cute aesthetic.
   - **Inventory & Quest Log**: Displays items the player has collected and any current quests or tasks.

## 7. Player Control & Interaction System
   - **Movement**: Basic movement controls suited to the game’s perspective.
   - **Interaction System**: Allows players to approach NPCs or objects and press a button to interact, with visual indicators (e.g., icons) for interactable elements.

## 8. Game Progression & World State System
   - **Global State Management**: Manages game progress, such as which quests are available or what areas are unlocked.
   - **Event System**: Triggers events based on conditions like completing specific quests or interacting with certain NPCs.

