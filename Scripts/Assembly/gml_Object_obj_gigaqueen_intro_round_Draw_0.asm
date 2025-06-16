.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 8
cmp.i.v EQ
bf [7]

:[1]
push.v self.sprite_index
pushi.e 2534
cmp.i.v EQ
bf [3]

:[2]
pushi.e 331
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[3]
push.v self.sprite_index
pushi.e 2455
cmp.i.v EQ
bf [5]

:[4]
pushi.e 329
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[5]
push.v self.sprite_index
pushi.e 3364
cmp.i.v EQ
bf [7]

:[6]
pushi.e 340
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[7]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [11]

:[8]
push.v self.timer
pushi.e 30
cmp.i.v LTE
bf [10]

:[9]
pushi.e 1
conv.i.v
push.v self.ystart
pushi.e 60
add.i.v
push.v self.ystart
pushi.e 60
add.i.v
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
call.i gml_Script_EaseOutBounce(argc=4)
pop.v.v self.y

:[10]
b [13]

:[11]
push.v self.timer
pushi.e 30
cmp.i.v LTE
bf [13]

:[12]
pushi.e 1
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 200
add.i.v
push.v self.ystart
pushi.e 100
add.i.v
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
call.i gml_Script_EaseOutBounce(argc=4)
pop.v.v self.y

:[13]
push.v self.timer
pushi.e 52
cmp.i.v LT
bf [15]

:[14]
call.i draw_self(argc=0)
popz.v
b [end]

:[15]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
push.i 167655
setowner.e
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.xoffset
pushi.e 3
sub.i.v
pop.i.v [array]self.xoffset
push.i 167656
setowner.e
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.yoffset
pushi.e 4
sub.i.v
pop.i.v [array]self.yoffset
push.i 167655
setowner.e
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.xoffset
pushi.e 3
add.i.v
pop.i.v [array]self.xoffset
push.i 167656
setowner.e
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.yoffset
pushi.e 4
sub.i.v
pop.i.v [array]self.yoffset
push.i 167655
setowner.e
pushi.e -1
pushi.e 2
dup.i 1
push.v [array]self.xoffset
pushi.e 3
add.i.v
pop.i.v [array]self.xoffset
push.i 167656
setowner.e
pushi.e -1
pushi.e 2
dup.i 1
push.v [array]self.yoffset
pushi.e 4
add.i.v
pop.i.v [array]self.yoffset
push.i 167655
setowner.e
pushi.e -1
pushi.e 3
dup.i 1
push.v [array]self.xoffset
pushi.e 3
sub.i.v
pop.i.v [array]self.xoffset
push.i 167656
setowner.e
pushi.e -1
pushi.e 3
dup.i 1
push.v [array]self.yoffset
pushi.e 4
add.i.v
pop.i.v [array]self.yoffset
pushi.e 0
pop.v.i self.i

:[18]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [end]

:[19]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.yoffset
add.v.v
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.xoffset
add.v.v
pushi.e 1
push.v self.i
add.v.i
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [18]

:[end]