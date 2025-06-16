.localvar 2 arguments

:[0]
push.v self.currentString
push.v self.addString
add.v.v
pop.v.v self.currentString
push.v self.letterCount
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.puzzle_id
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.lastPressedTile
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.firstTileX

:[5]
pushi.e -1
push.v self.letterCount
conv.v.i
push.v [array]self.idealLetter
push.v self.addString
cmp.v.v EQ
bf [9]

:[6]
push.v self.letterCount
push.e 1
add.i.v
pop.v.v self.letterCount
push.v self.currentString
push.v self.idealString
cmp.v.v EQ
bf [8]

:[7]
pushi.e 20
pop.v.i self.con

:[8]
b [end]

:[9]
pushi.e 10
pop.v.i self.con

:[end]