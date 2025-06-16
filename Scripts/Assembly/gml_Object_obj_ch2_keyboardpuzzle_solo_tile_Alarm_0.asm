.localvar 2 arguments
.localvar 38110 _forcefield 19714

:[0]
pushi.e 287
conv.i.v
push.v self.y
pushi.e 200
sub.i.v
push.v self.x
pushi.e 120
add.i.v
call.i instance_nearest(argc=3)
pop.v.v local._forcefield
pushloc.v local._forcefield
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
push.v self.buttonIndex
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushloc.v local._forcefield
call.i instance_destroy(argc=1)
popz.v

:[4]
pushloc.v local._forcefield
pushi.e -9
pushenv [8]

:[5]
push.v self.x
pushi.e 240
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 160
add.i.v
pop.v.v self.y
push.v self.solid1
pushi.e -9
pushenv [7]

:[6]
push.v self.x
pushi.e 240
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 160
add.i.v
pop.v.v self.y

:[7]
popenv [6]

:[8]
popenv [5]

:[end]