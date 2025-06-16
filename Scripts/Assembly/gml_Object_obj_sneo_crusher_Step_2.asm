.localvar 2 arguments

:[0]
push.v self.difficulty
pushi.e 4
cmp.i.v EQ
bf [2]

:[1]
push.v self.createdguns
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bt [8]

:[4]
push.v self.difficulty
pushi.e 6
cmp.i.v EQ
bf [6]

:[5]
push.v self.createdguns
pushi.e 1
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
b [9]

:[8]
push.e 1

:[9]
bf [end]

:[10]
push.v self.x
pushi.e 20
sub.i.v
push.v self.gun1
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v 697.crusher_turret_distance
sub.v.v
push.v self.gun1
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.x
pushi.e 20
sub.i.v
push.v self.gun2
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v 697.crusher_turret_distance
add.v.v
push.v self.gun2
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.hp
pushi.e 1
cmp.i.v LT
bf [end]

:[11]
pushi.e -9999
push.v self.gun1
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e -9999
push.v self.gun2
pushi.e -9
pop.v.i [stacktop]self.y

:[end]