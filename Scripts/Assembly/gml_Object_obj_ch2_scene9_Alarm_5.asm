.localvar 2 arguments
.localvar 14922 x_offset 15947

:[0]
push.v self.screencount
push.v self.screenmax
cmp.v.v LT
bf [7]

:[1]
pushi.e 0
pop.v.i local.x_offset
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [6]

:[2]
push.v self.screencount
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v local.x_offset
pushi.e 12
sub.i.v
pop.v.v local.x_offset
b [6]

:[4]
push.v self.screencount
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
push.v local.x_offset
pushi.e 18
add.i.v
pop.v.v local.x_offset

:[6]
push.i 168482
setowner.e
pushi.e 263
conv.i.v
pushi.e -1
push.v self.screencount
conv.v.i
push.v [array]self.screeny
pushi.e 2
mul.i.v
call.i gml_Script_cameray(argc=0)
add.v.v
pushi.e -1
push.v self.screencount
conv.v.i
push.v [array]self.screenx
pushi.e 2
mul.i.v
call.i gml_Script_camerax(argc=0)
add.v.v
pushloc.v local.x_offset
add.v.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.screencount
conv.v.i
pop.v.v [array]self.screen
push.i 133642
setowner.e
push.s "spr_queenscreen"@12031
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
pushi.e -1
push.v self.screencount
conv.v.i
push.v [array]self.screen
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.i 133643
setowner.e
pushi.e -1
push.v self.screencount
conv.v.i
push.v [array]self.screenimage
pushi.e -1
push.v self.screencount
conv.v.i
push.v [array]self.screen
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.screencount
push.e 1
add.i.v
pop.v.v self.screencount

:[7]
push.i 68097
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[end]