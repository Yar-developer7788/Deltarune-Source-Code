.localvar 2 arguments
.localvar 18153 housecolor 7489

:[0]
push.v self.bumped
conv.v.b
not.b
bf [end]

:[1]
pushi.e 1
pop.v.b self.bumped
pushi.e 40
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
push.v self.house_sprite
pushi.e -9
pop.v.i [stacktop]self.image_index
push.i 231204
setowner.e
pushi.e -5
pushi.e 458
dup.i 1
push.v [array]self.flag
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.flag
popz.v
push.s "global.flag[458]:"@18151
pushi.e -5
pushi.e 458
push.v [array]self.flag
call.i string(argc=1)
add.v.s
push.s "/7"@18152
add.s.v
call.i gml_Script_debug_message(argc=1)
popz.v
push.v self.house_sprite
pushi.e -9
pushenv [7]

:[2]
push.i 16777215
pop.v.i local.housecolor
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 255
pop.v.i local.housecolor

:[4]
push.v self.image_index
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.i 16711680
pop.v.i local.housecolor

:[6]
pushloc.v local.housecolor
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_scr_fx_housesquare(argc=3)
popz.v

:[7]
popenv [2]

:[end]