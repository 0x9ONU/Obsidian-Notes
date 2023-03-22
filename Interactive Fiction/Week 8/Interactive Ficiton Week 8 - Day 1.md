Date: 22nd March 2023
Date Modified: 22nd March 2023
File Folder: Week 8
#InteractiveFiction 

```ad-abstract
title: Today's Topics
collapse: open

- Dialogue in Interactive Fiction

```

# Importance of Dialouge in IF

- Add "spice" to the game
- **Allows you to add conflict between characters**
- Allows the player to make certian decisions that are not able to be made otherwise
- Gives information in ways that are able to be done as naturally through normal landscape

# Drawbacks to Inform Conversations

```ad-warning
Inform, unlike many AI text bots, is very limited when it comes to dialogue options
```

**MUST be in the form NOUN VERB PREPOSITION NOUN**

```ad-example
- ASK NPC ABOUT X
- TELL NPC ABOUT X
- SHOW X to NPC
- GIVE X TO NPC
- ASK NPC FOR X
```

Additionally, you must program pre-identified topics:
- You must program each object you have to ask the NPC about. 
	- If not, the parser will return a defualt response

# Adding Emotion to NPCs

## The Steps

1. Write a description to the character when you create them.
2. NPC responses that can include limited movement or descriptions as well as speech
3. One ask/tell command that can result in multiple different dialogues or descriptions.

## Example

```
>Tell about critic

"Actually, Im' a critic; I'm writing a review of the exhibition."

She rubs one wrist with the opposite thumb. "I see. I suppose in that case I ought to stand in my pose, so that you can tell what the artist intended. Moving around ruins the lines. Or so I'm told."
```




