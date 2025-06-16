.localvar 2 arguments
.localvar 10353 maxx 12286

:[0]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v 585.state
pushi.e 2
cmp.i.v LTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha
b [8]

:[5]
push.v 585.state
pushi.e 2
cmp.i.v GT
bf [8]

:[6]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
pushi.e 0
pop.v.b self.active
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
push.v 585.x
push.v 585.mouthx
add.v.v
pop.v.v local.maxx
push.v 585.state
pushi.e 2
cmp.i.v EQ
bf [12]

:[9]
pushi.e 800
conv.i.v
pushloc.v local.maxx
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_drawpart_crop(argc=4)
popz.v
push.v self.x
push.v self.sprite_xoffset
sub.v.v
pushloc.v local.maxx
cmp.v.v GT
bf [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
b [end]

:[12]
call.i draw_self(argc=0)
popz.v

:[end]