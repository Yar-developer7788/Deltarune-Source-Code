.localvar 2 arguments
.localvar 107 i 17533
.localvar 36141 timer_sprite 17534
.localvar 5833 timer 17535

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
pushi.e 26
cmp.i.v LT
bf [6]

:[2]
pushloc.v local.i
pushi.e 3
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 3213
conv.i.v
b [5]

:[4]
pushi.e 3212
conv.i.v

:[5]
pop.v.v local.timer_sprite
pushloc.v local.timer_sprite
pushi.e 40
conv.i.v
pushi.e 120
pushloc.v local.i
pushi.e 40
mul.i.v
add.v.i
call.i gml_Script_scr_marker(argc=3)
pop.v.v local.timer
push.d 0.1
pushloc.v local.timer
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 900000
pushloc.v local.timer
pushi.e -9
pop.v.i [stacktop]self.depth
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[6]
pushi.e 111
conv.i.v
pushi.e 93
conv.i.v
pushi.e 790
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.swatchling_npc_a
push.v self.swatchling_npc_a
pushi.e -9
pushenv [11]

:[7]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e -5
pushi.e 362
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1281
conv.i.v
b [10]

:[9]
pushi.e 1283
conv.i.v

:[10]
pop.v.v self.sprite_index
push.d 0.25
pop.v.d self.image_speed
push.v self.yellow
pop.v.v self.current_pal

:[11]
popenv [7]
pushi.e 111
conv.i.v
pushi.e 150
conv.i.v
pushi.e 550
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.swatchling_npc_b
push.v self.swatchling_npc_b
pushi.e -9
pushenv [13]

:[12]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 1281
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[13]
popenv [12]
pushi.e 111
conv.i.v
pushi.e 4
conv.i.v
pushi.e 675
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.swatchling_npc_c
push.v self.swatchling_npc_c
pushi.e -9
pushenv [15]

:[14]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 1281
pop.v.i self.sprite_index
push.v self.red
pop.v.v self.current_pal
push.d 0.25
pop.v.d self.image_speed

:[15]
popenv [14]
pushi.e 2384
conv.i.v
pushi.e 150
conv.i.v
pushi.e 15
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.cheese_a
push.v self.cheese_a
pushi.e -9
pushenv [17]

:[16]
pushi.e -5
pushi.e 362
push.v [array]self.flag
pop.v.v self.image_index
call.i gml_Script_scr_depth(argc=0)
popz.v

:[17]
popenv [16]
pushi.e 2384
conv.i.v
pushi.e 210
conv.i.v
pushi.e 55
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.cheese_b
push.v self.cheese_b
pushi.e -9
pushenv [19]

:[18]
pushi.e -5
pushi.e 362
push.v [array]self.flag
pop.v.v self.image_index
call.i gml_Script_scr_depth(argc=0)
popz.v

:[19]
popenv [18]
pushi.e 2384
conv.i.v
pushi.e 260
conv.i.v
pushi.e 15
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.cheese_c
push.v self.cheese_c
pushi.e -9
pushenv [21]

:[20]
pushi.e -5
pushi.e 362
push.v [array]self.flag
pop.v.v self.image_index
call.i gml_Script_scr_depth(argc=0)
popz.v

:[21]
popenv [20]
pushi.e -5
pushi.e 362
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[22]
pushi.e 1746
conv.i.v
push.v self.cheese_a
pushi.e -9
push.v [stacktop]self.y
pushi.e 50
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.mouse_a
push.v self.mouse_a
pushi.e -9
pushenv [24]

:[23]
push.d 0.25
pop.v.d self.image_speed

:[24]
popenv [23]
push.v self.cheese_a
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
push.v self.mouse_a
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1746
conv.i.v
push.v self.cheese_b
pushi.e -9
push.v [stacktop]self.y
pushi.e 90
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.mouse_b
push.v self.mouse_b
pushi.e -9
pushenv [26]

:[25]
push.d 0.25
pop.v.d self.image_speed

:[26]
popenv [25]
push.v self.cheese_b
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
push.v self.mouse_b
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1746
conv.i.v
push.v self.cheese_c
pushi.e -9
push.v [stacktop]self.y
pushi.e 50
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.mouse_c
push.v self.mouse_c
pushi.e -9
pushenv [28]

:[27]
push.d 0.25
pop.v.d self.image_speed

:[28]
popenv [27]
push.v self.cheese_c
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
push.v self.mouse_c
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.whiteall
pushi.e 999
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 0
pop.v.i self.fade_timer
pushi.e -4
pop.v.i self.mauswheel

:[end]