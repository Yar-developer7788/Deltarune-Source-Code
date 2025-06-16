.localvar 2 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.inv
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
pushi.e 461
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v 453.hitbysimonsaysattackcount
push.e 1
add.i.v
pop.v.v 453.hitbysimonsaysattackcount

:[6]
push.v self.target
pushi.e 3
cmp.i.v NEQ
bf [8]

:[7]
call.i gml_Script_scr_damage(argc=0)
popz.v

:[8]
push.v self.target
pushi.e 3
cmp.i.v EQ
bf [10]

:[9]
call.i gml_Script_scr_damage_all(argc=0)
popz.v

:[10]
push.v self.destroyonhit
pushi.e 1
cmp.i.v EQ
bf [end]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[end]