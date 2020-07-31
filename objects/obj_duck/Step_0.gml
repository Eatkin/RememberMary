/// @description

if (growHuge and textQueueEmpty())	{
	global.softPause=true;
	if (sprite_index!=spr_duckGrowHuge)	{
		sprite_index=spr_duckGrowHuge;
		image_index=0;
		audio_play_sound(transition_high_1,0,false);
	}
	if (image_index>2)
		obj_mary.visible=false;
	
	if (image_index>11)	{
		var trans=instance_create_layer(0,0,"Text",obj_ditherTransition);
		trans.roomToGoto=rm_insideBellaMain;
	}
}

if (active)	{
	var dialogueType=0;
	
	var hasEnteredBella=checkEventComplete(Event.FedBella);
	if (hasEnteredBella)
		dialogueType=1;
		
	var failedRescue=checkEventComplete(Event.FailedRescue);
	if (failedRescue)
		dialogueType=2;
		
	
	//First time talking to her
	if (dialogueType==0)	{
		if (global.sins==0)	{
			queueDialogue("Mary","Hi Bella. I hope you are well today.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Bella","Mary, my favourite friend. After breakfast I might need your help with something.",spr_duckPortrait,DialogueType.Basic);
			queueDialogue("Mary","Oh okay, what do you need help with?",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Bella","It isn't easy to explain...I'll just show you in a bit.",spr_duckPortrait,DialogueType.Basic);
		}
		else if (global.sins==1)	{
			queueDialogue("Mary","Hi Bella. Hope your weekend is going well.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Bella","Mary, my favourite friend. I might need your help with something after eating.",spr_duckPortrait,DialogueType.Basic);
			queueDialogue("Mary","What do you need help with?",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Bella","Well you might find it kind of weird, i'll have to just show you later.",spr_duckPortrait,DialogueType.Basic);
		}
		else if (global.sins==2)	{
			queueDialogue("Mary","Hi.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Bella","Mary, my favourite friend. Hey, are you feeling okay? You don't look yourself",spr_duckPortrait,DialogueType.Basic);
			queueDialogue("Mary","I'm surviving. I don't know. My day isn't going great. My emotions are spiralling out of control. Violent mood swings. Existential dread. But I'll manage. I hope I will.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Bella","Well you know, if you need someone to talk to...I'm always here.",spr_duckPortrait,DialogueType.Basic);
			queueDialogue("Bella","I hate to ask, but can you help me with something? I'll show you after I've had something to eat.",spr_duckPortrait,DialogueType.Basic);
		}
		if (checkEventComplete(Event.GotDuckFood))	{
			if (global.sins==0)
				queueDialogue("Mary","Am I ready to give Bella some food?",spr_maryPortrait,DialogueType.Choice,"Feed Bella","Wait until later");
			else if (global.sins==1)
				queueDialogue("Mary","Should I feed Bella now?",spr_maryPortrait,DialogueType.Choice,"Feed Bella","Later");
			else if (global.sins==2)
				queueDialogue("Mary","Give the duck food?",spr_maryPortrait,DialogueType.Choice,"Feed","No");
		}
		else	{
			if (global.sins==0)	{
				queueDialogue("Mary","I need to get some food from mum. I'll come back soon.",spr_maryPortrait,DialogueType.Basic);
				queueDialogue("Bella","Bye, Mary.",spr_duckPortrait,DialogueType.Basic);
			}
			else if (global.sins==1)	{
				queueDialogue("Mary","I'll bring you some food.",spr_maryPortrait,DialogueType.Basic);
				queueDialogue("Bella","Bye, Mary.",spr_duckPortrait,DialogueType.Basic);
			}
			else if (global.sins==2)	{
				queueDialogue("Mary","Food's at home.",spr_maryPortrait,DialogueType.Basic);
				queueDialogue("Bella","Bye, Mary. I hope you're okay. I mean that.",spr_duckPortrait,DialogueType.Basic);
			}
		}
	}
	else if (dialogueType==1)	{		//Go back after no bad morality
		if (global.sins==0)
			queueDialogue("Bella","Hi Mary, ready to go back inside?",spr_duckPortrait,DialogueType.Choice,"Go back inside", "Stay here");
		else if (global.sins==1)
			queueDialogue("Bella","Hi Mary, ready to go back?",spr_duckPortrait,DialogueType.Choice,"Go back", "Stay");
		else if (global.sins==2)
			queueDialogue("Bella","Want to return?",spr_duckPortrait,DialogueType.Choice,"Yes", "No");
	}
	else if (dialogueType==2)	{		//Failed
		if (global.sins==1)	{
			queueDialogue("Mary","Hi Bella. Can I go back?",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Bella","No I think it's best you don't.",spr_duckPortrait,DialogueType.Basic);
			queueDialogue("Mary","I think I messed up...",spr_maryPortrait,DialogueType.Basic);
		}
		else if (global.sins==2)	{
			queueDialogue("Mary","Can I go back?",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Bella","Not after what you've done.",spr_duckPortrait,DialogueType.Basic);
		}
		else	{
			queueDialogue("Bella","Don't talk to me ever again. I'll get my own food.",spr_duckPortrait,DialogueType.Basic);
		}
	}
	active=false;
}