.localvar 2 arguments
.localvar 25713 _mouthrelative 12859
.localvar 25714 _scalesize 12860

:[0]
push.v self.fade
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
pushi.e 0
pop.v.i self.speed
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
call.i event_inherited(argc=0)
popz.v
pushi.e 638
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [5]

:[4]
exit.i

:[5]
push.v self.x
push.v 638.x
push.v 638.mouthx
add.v.v
pushi.e 50
sub.i.v
cmp.v.v GT
bf [7]

:[6]
push.v self.y
pushi.e 5
conv.i.v
pushi.e -5
conv.i.v
push.v 638.y
push.v 638.mouthy
add.v.v
push.v self.y
sub.v.v
call.i clamp(argc=3)
add.v.v
pop.v.v self.y

:[7]
push.v self.x
push.v 638.x
push.v 638.mouthx
add.v.v
pushi.e 10
sub.i.v
cmp.v.v LT
bf [9]

:[8]
push.v 638.y
push.v 638.mouthy
add.v.v
push.v 638.x
push.v 638.mouthx
add.v.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction
push.d -0.1
pop.v.d self.friction

:[9]
push.v 638.x
push.v 638.mouthx
add.v.v
pop.v.v local._mouthrelative
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.x
pushloc.v local._mouthrelative
pushi.e 50
sub.i.v
pushloc.v local._mouthrelative
pushi.e 200
sub.i.v
call.i gml_Script_scr_inverselerp(argc=3)
call.i clamp(argc=3)
pushi.e 1
conv.i.v
push.v self.startscale
call.i lerp(argc=3)
pop.v.v local._scalesize
pushloc.v local._scalesize
pop.v.v self.image_xscale
pushloc.v local._scalesize
pop.v.v self.image_yscale
push.v self.x
push.v 638.x
push.v 638.mouthx
add.v.v
pushi.e 50
add.i.v
cmp.v.v GT
bf [end]

:[10]
call.i instance_destroy(argc=0)
popz.v
pushi.e 180
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[end]