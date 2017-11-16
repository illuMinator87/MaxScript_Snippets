--finds all objects of a specific type in the scene by wildcard
fn findObjectsByWildcard objectNameWildcard objectSuperClass =
(
	objectsFound = #()
	
	for i in $* where superClassOf i == objectSuperClass do
	(
		if matchPattern i.name pattern:objectNameWildcard == True do
		(
			append objectsFound i
		)
	)
	return objectsFound
)
