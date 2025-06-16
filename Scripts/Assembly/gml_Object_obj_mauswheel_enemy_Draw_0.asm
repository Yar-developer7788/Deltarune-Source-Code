.localvar 2 arguments

:[0]
pushi.e 768
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
exit.i

:[2]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [4]

:[3]
call.i gml_Script_scr_enemy_drawhurt_generic(argc=0)
popz.v

:[4]
push.v self.image_speed
call.i gml_Script_scr_enemy_drawidle_generic(argc=1)
popz.v
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i self.flash

:[6]
pushi.e 0
pop.v.i self.becomeflash

:[end]