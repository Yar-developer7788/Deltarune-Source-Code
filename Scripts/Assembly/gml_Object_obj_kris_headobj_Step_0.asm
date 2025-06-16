.localvar 2 arguments
.localvar 107 i 6883
.localvar 15226 mousedrop 6886
.localvar 15227 mousepart 6887

:[0]
push.v self.breakcon
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.breaktimer
call.i gml_Script_scr_oflash(argc=0)
popz.v
pushi.e 2
pop.v.i self.breakcon

:[2]
push.v self.breakcon
pushi.e 2
cmp.i.v EQ
bf [7]

:[3]
push.v self.breaktimer
push.e 1
add.i.v
pop.v.v self.breaktimer
push.v self.breaktimer
pushi.e 4
cmp.i.v GTE
bf [7]

:[4]
pushi.e 232
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.image_alpha
pushi.e 3
pop.v.i self.breakcon
pushi.e 0
pop.v.i local.i

:[5]
pushloc.v local.i
pushi.e 30
cmp.i.v LT
bf [7]

:[6]
push.i 168175
setowner.e
pushi.e 2475
conv.i.v
push.v self.y
pushi.e 15
conv.i.v
pushi.e -15
conv.i.v
call.i random_range(argc=2)
add.v.v
push.v self.x
pushi.e 15
conv.i.v
pushi.e -15
conv.i.v
call.i random_range(argc=2)
add.v.v
call.i gml_Script_scr_marker(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.sparkle
push.i 133655
setowner.e
push.d 0.5
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 133623
setowner.e
pushi.e 3
conv.i.v
pushi.e -3
conv.i.v
call.i random_range(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.i 133627
setowner.e
push.d 0.05
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.d [stacktop]self.friction
push.i 133628
setowner.e
push.d -0.1
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.d [stacktop]self.gravity
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [5]

:[7]
pushi.e 349
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[8]
push.v 349.minigame
pushi.e 1
cmp.i.v EQ
bf [26]

:[9]
push.v self.mousefailcon
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [20]

:[13]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
pushi.e 1
pop.v.i 82.fun
pushi.e 1413
pop.v.i 82.sprite_index
pushi.e 0
pop.v.i self.yoffset
pushi.e 2425
pop.v.i self.sprite_index
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.miceheld
pushi.e 0
cmp.i.v GT
bf [19]

:[14]
push.v self.miceheld
pushi.e 1
conv.i.v
pushi.e 10
conv.i.v
call.i clamp(argc=3)
pop.v.v local.mousedrop
pushi.e 0
pop.v.i local.i

:[15]
pushloc.v local.i
pushloc.v local.mousedrop
cmp.v.v LT
bf [19]

:[16]
push.v self.miceheld
push.e 1
sub.i.v
pop.v.v self.miceheld
pushi.e 352
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.mousepart
pushi.e 2691
pushloc.v local.mousepart
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.mousepart
call.i gml_Script_scr_darksize(argc=1)
popz.v
pushi.e 2
pushloc.v local.mousepart
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushloc.v local.mousepart
pushi.e -9
pushenv [18]

:[17]
pushi.e 16
conv.i.v
pushi.e 20
conv.i.v
pushbltn.v builtin.room_height
push.v self.sprite_height
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 40
conv.i.v
pushi.e -40
conv.i.v
call.i random_range(argc=2)
add.v.v
call.i gml_Script_scr_jump_to_point(argc=4)
popz.v

:[18]
popenv [17]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [15]

:[19]
push.v self.mousefailcon
push.e 1
add.i.v
pop.v.v self.mousefailcon
pushi.e 0
pop.v.i self.mousetimer

:[20]
push.v self.mousefailcon
pushi.e 2
cmp.i.v EQ
bf [25]

:[21]
push.v self.mousetimer
push.e 1
add.i.v
pop.v.v self.mousetimer
pushi.e 350
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [23]

:[22]
pushi.e 0
pop.v.i self.mousetimer

:[23]
push.v self.mousetimer
pushi.e 25
cmp.i.v GTE
bf [25]

:[24]
pushi.e 0
pop.v.i 82.fun
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.yoffset
pushi.e 2424
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.mousefailcon

:[25]
b [end]

:[26]
pushi.e 0
pop.v.i self.mousefailcon

:[end]