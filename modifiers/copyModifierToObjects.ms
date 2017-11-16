fn addModifierToObjects objectList theModifier =
(
	for i in objectList do
	(
		if (hasModifier i theModifier) == false then
			addModifier i theModifier
	)
)

fn hasModifier theObject theModifier = 
(
	hasMod = false
	for m in theObject.modifiers do
	(
		if ClassOf m == ClassOf theModifier then
			hasMod = True
		else hasMod = false
	)
	return hasMod
)

fn copyModifierToObjects copyTo copyFrom modifierIndex copyAsInstance =
(
	theModifier = copyFrom.modifiers[modifierIndex]
	
	if copyAsInstance == false then theModifier = copy theModifier
	
	addModifierToObjects copyTo theModifier
)
