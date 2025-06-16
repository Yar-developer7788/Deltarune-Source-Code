.localvar 2 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.bufferstate
conv.v.b
bf [3]

:[2]
pushi.e 0
pop.v.i self.active
b [end]

:[3]
push.v self.damage
call.i gml_Script_scr_bullet_heal(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]