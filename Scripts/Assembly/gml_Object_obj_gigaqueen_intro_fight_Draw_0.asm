.localvar 2 arguments
.localvar 14304 maxsize 6062

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.i -99999
pop.v.i self.depth
pushi.e 1
pop.v.i local.maxsize
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.d 0.4
pop.v.d local.maxsize

:[2]
push.v self.timer
pushi.e 20
cmp.i.v LTE
bf [4]

:[3]
pushi.e 0
conv.i.v
push.v self.timer
pushi.e 45
conv.i.d
div.d.v
pushloc.v local.maxsize
push.v self.image_xscale
call.i gml_Script_lerp_ease_in(argc=4)
pop.v.v self.image_xscale
pushi.e 0
conv.i.v
push.v self.timer
pushi.e 45
conv.i.d
div.d.v
pushloc.v local.maxsize
push.v self.image_yscale
call.i gml_Script_lerp_ease_in(argc=4)
pop.v.v self.image_yscale

:[4]
push.v self.timer
pushi.e 9
cmp.i.v GTE
bf [11]

:[5]
push.v self.timer
pushi.e 19
cmp.i.v GTE
bf [7]

:[6]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha

:[7]
push.i 167655
setowner.e
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.xoffset
push.v self.letterspeed1
sub.v.v
pop.i.v [array]self.xoffset
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.xoffset
push.v self.letterspeed2
sub.v.v
pop.i.v [array]self.xoffset
pushi.e -1
pushi.e 3
dup.i 1
push.v [array]self.xoffset
push.v self.letterspeed2
add.v.v
pop.i.v [array]self.xoffset
pushi.e -1
pushi.e 4
dup.i 1
push.v [array]self.xoffset
push.v self.letterspeed1
add.v.v
pop.i.v [array]self.xoffset
push.v self.letterspeed1
push.d 0.25
sub.d.v
pop.v.v self.letterspeed1
push.v self.letterspeed2
push.d 0.125
sub.d.v
pop.v.v self.letterspeed2
push.v self.letterspeed1
pushi.e 0
cmp.i.v LT
bf [9]

:[8]
pushi.e 0
pop.v.i self.letterspeed1

:[9]
push.v self.letterspeed2
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
pushi.e 0
pop.v.i self.letterspeed2

:[11]
push.v self.timer
pushi.e 39
cmp.i.v EQ
bf [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
pushi.e 0
pop.v.i self.i

:[14]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [end]

:[15]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.xoffset
add.v.v
push.v self.i
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [14]

:[end]