.localvar 2 arguments

:[0]
push.v self.dive_hitbox
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.y
pushi.e 20
sub.i.v
push.v self.dive_hitbox
pushi.e -9
pop.v.v [stacktop]self.y

:[2]
push.v self.y
pushi.e 780
cmp.i.v GTE
bf [end]

:[3]
push.v self.dive_hitbox
pushi.e -9
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]
call.i instance_destroy(argc=0)
popz.v

:[end]