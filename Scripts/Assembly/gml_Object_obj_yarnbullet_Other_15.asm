.localvar 2 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.target
pushi.e 3
cmp.i.v NEQ
bf [3]

:[2]
call.i gml_Script_scr_damage(argc=0)
popz.v

:[3]
push.v self.target
pushi.e 2
cmp.i.v EQ
bf [4]

:[4]
push.v self.target
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
call.i gml_Script_scr_damage_all(argc=0)
popz.v

:[6]
push.v self.destroyonhit
pushi.e 1
cmp.i.v EQ
bf [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]