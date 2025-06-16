.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.image_index
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [9]

:[2]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [10]

:[3]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [11]

:[4]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [12]

:[5]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [13]

:[6]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [14]

:[7]
b [15]

:[8]
b [16]

:[9]
pushbltn.v builtin.room
pushi.e 1
add.i.v
pop.v.v self.doorRoom
b [16]

:[10]
pushbltn.v builtin.room
pushi.e 1
sub.i.v
pop.v.v self.doorRoom
b [16]

:[11]
pushbltn.v builtin.room
pushi.e 2
add.i.v
pop.v.v self.doorRoom
b [16]

:[12]
pushbltn.v builtin.room
pushi.e 2
sub.i.v
pop.v.v self.doorRoom
b [16]

:[13]
pushbltn.v builtin.room
pushi.e 3
add.i.v
pop.v.v self.doorRoom
b [16]

:[14]
pushbltn.v builtin.room
pushi.e 3
sub.i.v
pop.v.v self.doorRoom
b [16]

:[15]
b [16]

:[16]
popz.v
push.v self.image_index
pushi.e 0
cmp.i.v NEQ
bf [18]

:[17]
push.v self.image_index
pop.v.v self.doorEntrance

:[18]
push.v self.doorSpecial
push.s "none"@562
cmp.s.v NEQ
bf [19]

:[19]
pushi.e 1
pop.v.i self.init

:[end]