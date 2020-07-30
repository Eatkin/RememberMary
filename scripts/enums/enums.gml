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
	FedBella=1024
}