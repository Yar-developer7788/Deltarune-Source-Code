.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.init
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.i 166975
setowner.e
push.v self.x
pushi.e -1
pushi.e 0
pop.v.v [array]self.x2
push.i 166976
setowner.e
pushi.e -400
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.y2
push.i 170989
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.visiblevine
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.visiblevine
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.visiblevine
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.visiblevine
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.visiblevine

:[3]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.i 166975
setowner.e
push.v self.x
pushi.e -1
pushi.e 0
pop.v.v [array]self.x2
push.i 166976
setowner.e
pushi.e -400
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.y2
push.i 168127
setowner.e
pushi.e -2
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.x_offset
push.i 166975
setowner.e
push.v self.x
pushi.e -1
pushi.e 1
pop.v.v [array]self.x2
push.i 166976
setowner.e
pushi.e -400
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.y2
push.i 168127
setowner.e
pushi.e -2
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.x_offset
push.i 170989
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.visiblevine
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.visiblevine
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.visiblevine
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.visiblevine

:[5]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
push.i 166975
setowner.e
push.v self.x
pushi.e 200
sub.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.x2
push.i 166976
setowner.e
pushi.e -400
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.y2
push.i 168127
setowner.e
pushi.e -8
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.x_offset
push.i 166975
setowner.e
push.v self.x
pushi.e -1
pushi.e 1
pop.v.v [array]self.x2
push.i 166976
setowner.e
pushi.e -400
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.y2
push.i 166975
setowner.e
push.v self.x
pushi.e 200
add.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.x2
push.i 166976
setowner.e
pushi.e -400
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.y2
push.i 168127
setowner.e
pushi.e 8
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.x_offset
push.i 170989
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.visiblevine
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.visiblevine
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.visiblevine

:[7]
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
push.i 166975
setowner.e
push.v self.x
pushi.e 180
sub.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.x2
push.i 166976
setowner.e
pushi.e -400
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.y2
push.i 168127
setowner.e
pushi.e -7
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.x_offset
push.i 166975
setowner.e
push.v self.x
pushi.e 60
sub.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.x2
push.i 166976
setowner.e
pushi.e -400
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.y2
push.i 168127
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.x_offset
push.i 166975
setowner.e
push.v self.x
pushi.e 60
add.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.x2
push.i 166976
setowner.e
pushi.e -400
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.y2
push.i 168127
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.x_offset
push.i 166975
setowner.e
push.v self.x
pushi.e 180
add.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.x2
push.i 166976
setowner.e
pushi.e -400
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.y2
push.i 168127
setowner.e
pushi.e 7
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.x_offset
push.i 170989
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.visiblevine
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.visiblevine

:[9]
push.v self.difficulty
pushi.e 4
cmp.i.v EQ
bf [end]

:[10]
push.i 166975
setowner.e
push.v self.x
pushi.e 260
sub.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.x2
push.i 166976
setowner.e
pushi.e -400
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.y2
push.i 168127
setowner.e
pushi.e -10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.x_offset
push.i 166975
setowner.e
push.v self.x
pushi.e 130
sub.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.x2
push.i 166976
setowner.e
pushi.e -400
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.y2
push.i 168127
setowner.e
pushi.e -5
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.x_offset
push.i 166975
setowner.e
push.v self.x
pushi.e -1
pushi.e 2
pop.v.v [array]self.x2
push.i 166976
setowner.e
pushi.e -400
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.y2
push.i 166975
setowner.e
push.v self.x
pushi.e 130
add.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.x2
push.i 166976
setowner.e
pushi.e -400
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.y2
push.i 168127
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.x_offset
push.i 166975
setowner.e
push.v self.x
pushi.e 260
add.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.x2
push.i 166976
setowner.e
pushi.e -400
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.y2
push.i 168127
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.x_offset
push.i 170989
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.visiblevine

:[end]