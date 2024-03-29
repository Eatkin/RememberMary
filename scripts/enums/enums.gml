enum State	{
	Idle,
	Walk,
	Talking
}

enum Input	{
	Hinput,
	Vinput,
	Interact,
	HinputPressed,
	VinputPressed
}

enum DialogueGrid	{
	Name,
	Text,
	Image,
	Type,
	Choice0,
	Choice1,
	Owner,
	Max
}

enum DialogueType	{
	Basic,
	Choice
}

enum Event	{
	TakenKnife=1,
	TakenCoin=2,
	KilledSophie=4,
	TakenPurse=8,
	EatenStick=16,
	ReturnedPurse=32,
	TalkedToSkylar=64,
	TalkedToSophie=128,
	GotDuckFood=256,
	TalkedToMum=512,
	FedBella=1024,
	TalkedToTopaz=2048,
	TakenPlushies=4096,
	RescuedDucks=8192,
	FailedRescue=16384,
	EatenRock=32768,
	ToldTopaz=65536,			//Told Topaz about the plushies and failed rescue
	PulledLeverOne=131072,
	PulledLeverTwo=262144,
	FilledPool=524288,
	DrownedAbigail=1048576,
	SavedAbigail=2097152,
	EndingPrompt=4194304,
	TopazAddedVirtues=8388608,		//Increase virtues by one when telling Topaz you saved the babies
	RescuedOneDuck=16777216
}