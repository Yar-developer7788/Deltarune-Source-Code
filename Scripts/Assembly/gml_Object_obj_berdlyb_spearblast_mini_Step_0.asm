.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
push.v self.speed
pushi.e 1
cmp.i.v GT
bf [5]

:[1]
push.v self.y
call.i gml_Script_gt_miny(argc=0)
pushi.e 40
sub.i.v
cmp.v.v LT
bt [3]

:[2]
push.v self.y
call.i gml_Script_gt_maxy(argc=0)
pushi.e 40
add.i.v
cmp.v.v GT
b [4]

:[3]
push.e 1

:[4]
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[8]
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]