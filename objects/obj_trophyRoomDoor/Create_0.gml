/// @description determine destination

event_inherited();

destination=rm_neutralEnd;

if (global.sins==3)
	destination=rm_badEnd;
if (global.virtues==3)
	destination=rm_goodEnd;