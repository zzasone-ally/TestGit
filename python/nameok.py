names_0=['a','b','c','d','e']
names_1=['a','b','x','y','z']
for name in names_1:
	if name in names_0:
		print(name + " have been used,Please input another name!")
	else:
		print(name+" ok")
