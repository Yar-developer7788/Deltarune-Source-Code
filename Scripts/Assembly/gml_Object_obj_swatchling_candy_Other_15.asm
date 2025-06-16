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
pushi.e 6
conv.i.v
call.i gml_Script_scr_bullet_heal(argc=1)
popz.v

:[3]
push.v self.target
pushi.e 3
cmp.i.v EQ
bf [5]

:[4]
pushi.e 6
conv.i.v
call.i gml_Script_scr_healall(argc=1)
popz.v

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]