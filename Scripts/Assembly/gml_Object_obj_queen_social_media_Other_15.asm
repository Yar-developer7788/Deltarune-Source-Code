.localvar 2 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.handle
conv.v.b
bf [7]

:[2]
push.v self.target
pushi.e 3
cmp.i.v NEQ
bf [4]

:[3]
pushi.e 6
conv.i.v
call.i gml_Script_scr_bullet_heal(argc=1)
popz.v

:[4]
push.v self.target
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 6
conv.i.v
call.i gml_Script_scr_healall(argc=1)
popz.v

:[6]
b [11]

:[7]
push.v self.target
pushi.e 3
cmp.i.v NEQ
bf [9]

:[8]
call.i gml_Script_scr_damage(argc=0)
popz.v

:[9]
push.v self.target
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
call.i gml_Script_scr_damage_all(argc=0)
popz.v

:[11]
push.v self.destroyonhit
pushi.e 1
cmp.i.v EQ
bf [end]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[end]