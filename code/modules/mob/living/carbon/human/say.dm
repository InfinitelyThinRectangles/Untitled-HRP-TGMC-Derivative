/mob/living/carbon/human/say_mod(input, message_mode, datum/language/language)
	if(slurring)
		return "slurs"
	else
		. = ..()


/mob/living/carbon/human/GetVoice()
	if(GetSpecialVoice())
		return GetSpecialVoice()
	return real_name


/mob/living/carbon/human/proc/SetSpecialVoice(new_voice)
	if(new_voice)
		special_voice = new_voice


/mob/living/carbon/human/proc/UnsetSpecialVoice()
	special_voice = ""


/mob/living/carbon/human/proc/GetSpecialVoice()
	return special_voice


/mob/living/carbon/human/binarycheck()
	if(wear_ear)
		var/obj/item/radio/headset/H = wear_ear
		if(!istype(H))
			return FALSE


/mob/living/carbon/human/radio(message, message_mode, list/spans, language)
	. = ..()
	if(. != 0)
		return

	if(isxeno(loc))
		message = Gibberish(message, 100)

	switch(message_mode)
		if(MODE_HEADSET)
			if(wear_ear)
				playsound(loc, 'sound/effects/radiostatic.ogg', 15, 1)
				wear_ear.talk_into(src, message, , spans, language)
			return ITALICS | REDUCE_RANGE

		if(MODE_DEPARTMENT)
			if(wear_ear)
				playsound(loc, 'sound/effects/radiostatic.ogg', 15, 1)
				wear_ear.talk_into(src, message, message_mode, spans, language)
			return ITALICS | REDUCE_RANGE

	if(message_mode in GLOB.radiochannels)
		if(wear_ear)
			playsound(loc, 'sound/effects/radiostatic.ogg', 15, 1)
			wear_ear.talk_into(src, message, message_mode, spans, language)
			return ITALICS | REDUCE_RANGE

	return 0


/mob/living/carbon/human/get_alt_name()
	if(name != GetVoice())
		return " (as [get_id_name("Unknown")])"

/mob/living/carbon/human/Hear(message, atom/movable/speaker, datum/language/message_language, raw_message, radio_freq, list/spans, message_mode)
	. = ..()
	if(message_language != /datum/language/xenocommon)
		return // A snowflake is a single ice crystal that has achieved a sufficient size, and may have amalgamated with others, then falls through the Earth's atmosphere as snow.

	if(!(species.species_flags & CAN_LEARN_LANGUAGES) || (has_language(message_language) == LANGUAGE_KNOWN))
		return

	LAZYINITLIST(learning_languages) // Might as well

	learning_languages[message_language]++

	switch(learning_languages[message_language])
		if(20)
			to_chat(src, "<span class='notice'>You've started noticing a pattern in some of the hissing sounds from [speaker]...</span>")
		if(40)
			to_chat(src, "<span class='notice'>Placeholder.</span>") // << If this is merged, find who did it and make fun of them
		if(60)
			to_chat(src, "<span class='notice'>You're starting to pick up the meaning of some words from [speaker], but it's still hazy...</span>")
		if(80)
			to_chat(src, "<span class='notice'>You swear you can almost understand what [speaker] is saying...</span>")
		if(100)
			to_chat(src, "<span class='boldnotice'>After intensive study of the [initial(message_language.name)] language, you've learned to speak and understand it!</span>")
			grant_language(message_language)
