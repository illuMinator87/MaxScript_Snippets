--excludes a list of objects from a light if it is not excluded already
fn addToLightExcludeList lightName objectList =
(
	temp = lightName.excludeList
	
	for i in objectList do
	(
		appendIfUnique temp i
	)
	
	lightName.excludeList = temp
)
