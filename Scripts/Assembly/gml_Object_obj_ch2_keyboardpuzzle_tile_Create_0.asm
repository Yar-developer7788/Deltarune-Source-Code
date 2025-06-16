.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.textImage
pushi.e 0
pop.v.i self.pressed
pushi.e 0
pop.v.i self.pressedBuffer
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.image_speed
push.i 900000
push.v self.y
sub.v.i
pop.v.v self.depth
pushi.e 1
pop.v.i self.pressable
pushi.e 0
pop.v.i self.bouncecon
pushi.e 0
pop.v.i self.bouncetimer
pushi.e 0
pop.v.i self.drawY
pushi.e 0
pop.v.b self.won
pushbltn.v builtin.room
pushi.e 92
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 390
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.b self.won

:[5]
pushbltn.v builtin.room
pushi.e 96
cmp.i.v EQ
bf [7]

:[6]
pushi.e -5
pushi.e 333
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.b self.won

:[10]
pushbltn.v builtin.room
pushi.e 107
cmp.i.v EQ
bf [12]

:[11]
pushi.e -5
pushi.e 420
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 1
pop.v.b self.won

:[15]
push.v self.won
pushi.e 1
cmp.b.v EQ
bf [end]

:[16]
pushi.e 1
pop.v.i self.pressed
pushi.e 0
pop.v.i self.pressable

:[end]