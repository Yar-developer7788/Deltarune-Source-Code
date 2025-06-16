.localvar 2 arguments

:[0]
push.v self.currentString
push.v self.addString
add.v.v
pop.v.v self.currentString
pushi.e -1
push.v self.letterCount
conv.v.i
push.v [array]self.idealLetter
push.v self.addString
cmp.v.v EQ
bf [4]

:[1]
push.v self.letterCount
push.e 1
add.i.v
pop.v.v self.letterCount
push.v self.currentString
push.v self.idealString
cmp.v.v EQ
bf [3]

:[2]
pushi.e 20
pop.v.i self.con

:[3]
b [end]

:[4]
pushi.e 10
pop.v.i self.con

:[end]