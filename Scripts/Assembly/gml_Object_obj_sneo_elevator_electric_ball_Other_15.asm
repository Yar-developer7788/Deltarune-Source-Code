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
pushi.e 3
cmp.i.v EQ
bf [5]

:[4]
call.i gml_Script_scr_damage_all(argc=0)
popz.v

:[5]
push.v self.destroyonhit
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
push.v self.sprite_index
pushi.e 2048
cmp.i.v NEQ
bf [end]

:[7]
pushi.e 2048
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.i 68097
setowner.e
pushi.e 99
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.d 0.5
pop.v.d self.image_speed

:[end]