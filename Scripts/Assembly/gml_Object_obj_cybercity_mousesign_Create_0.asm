.localvar 2 arguments

:[0]
push.s "spr_city_mice_sign_01"@12025
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
pop.v.v self.sign_sprite
pushbltn.v builtin.room
pushi.e 134
cmp.i.v EQ
bf [2]

:[1]
push.s "spr_city_mice_sign_02"@12026
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
pop.v.v self.sign_sprite
b [4]

:[2]
pushbltn.v builtin.room
pushi.e 136
cmp.i.v EQ
bf [4]

:[3]
push.s "spr_city_mice_sign_03"@12027
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
pop.v.v self.sign_sprite

:[4]
push.v self.sign_sprite
push.s "spr_city_mice_sign_01"@12025
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
cmp.v.v EQ
bf [6]

:[5]
pushglb.v global.plot
pushi.e 72
cmp.i.v GTE
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
push.v self.sign_sprite
push.s "spr_city_mice_sign_02"@12026
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
cmp.v.v EQ
bf [11]

:[10]
pushglb.v global.plot
pushi.e 77
cmp.i.v GTE
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
push.v self.sign_sprite
push.s "spr_city_mice_sign_03"@12027
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
cmp.v.v EQ
bf [16]

:[15]
pushglb.v global.plot
pushi.e 78
cmp.i.v GTE
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
pushi.e 0
pop.v.b self.start
pushi.e 0
pop.v.i self.sign_alpha
pushi.e 0
pop.v.b self.fade_in
pushi.e 0
pop.v.b self.fade_out
pushi.e 0
pop.v.b self.finish
pushi.e 0
pop.v.i self.fade_counter
pushi.e 4
pop.v.i self.layer_amount
pushi.e 0
pop.v.i self.current_index
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]