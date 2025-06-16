.localvar 2 arguments

:[0]
push.v self.y
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 180
add.i.v
pushi.e 620
sub.i.v
cmp.v.v LTE
bf [2]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
pushi.e 795
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.vspeed
pushi.e 8
pop.v.i self.image_index
pushi.e 18
pop.v.i self.shakeamt
push.v self.x
pop.v.v self.remx
push.v self.y
pop.v.v self.remy
pushi.e 823
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fade
pushi.e 1
push.v self.fade
pushi.e -9
pop.v.i [stacktop]self.dont_fade_out
pushi.e 795
push.v self.fade
pushi.e -9
pop.v.i [stacktop]self.depth
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[7]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[8]
pushi.e 1
pop.v.i self.split
push.v self.image_xscale
push.v self.shakeamt
pushi.e 100
conv.i.d
div.d.v
add.v.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.v self.shakeamt
pushi.e 100
conv.i.d
div.d.v
add.v.v
pop.v.v self.image_yscale
pushi.e 1
pop.v.i self.drawwhite
push.v self.remx
push.v self.shakeamt
push.v self.shakeamt
neg.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.x
push.v self.remy
push.v self.shakeamt
push.v self.shakeamt
neg.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.y
push.v self.shakeamt
pushi.e 0
cmp.i.v GT
bf [10]

:[9]
push.v self.shakeamt
push.d 0.8
sub.d.v
pop.v.v self.shakeamt
b [end]

:[10]
pushi.e 0
pop.v.i self.shakeamt

:[end]