.localvar 2 arguments
.localvar 38110 _forcefield 19723

:[0]
pushi.e 287
conv.i.v
push.v self.y
pushi.e 160
add.i.v
push.v self.x
pushi.e 160
sub.i.v
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
pushloc.v local._forcefield
pushi.e -9
pushenv [5]

:[3]
pushi.e 0
pop.v.i self.stayVisible
push.v self.y
pushi.e 160
sub.i.v
pop.v.v self.y
push.v self.solid1
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [5]

:[4]
push.v self.solid1
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 160
sub.i.v
pop.i.v [stacktop]self.y

:[5]
popenv [3]

:[end]