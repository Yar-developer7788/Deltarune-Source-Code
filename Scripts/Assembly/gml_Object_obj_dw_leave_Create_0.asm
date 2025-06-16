.localvar 2 arguments

:[0]
push.i 500000
pop.v.i self.depth
pushi.e 944
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.kris_dist
pushi.e 0
pop.v.i self.draw_kris
pushi.e 1
pop.v.i self.kris_only
push.v self.x
pushi.e 24
sub.i.v
pop.v.v self.kris_x
push.v self.y
pushi.e 80
sub.i.v
pop.v.v self.kris_y
push.v self.x
pushi.e 60
sub.i.v
pop.v.v self.sus_x
push.v self.y
pushi.e 94
sub.i.v
pop.v.v self.sus_y
pushi.e 62
pop.v.i self.nextroom
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [4]

:[3]
pushi.e 0
pop.v.i self.kris_only
push.v self.x
pushi.e 12
add.i.v
pop.v.v self.kris_x
push.v self.y
pushi.e 80
sub.i.v
pop.v.v self.kris_y

:[4]
pushi.e 0
pop.v.i self.fake_v
pushi.e 0
pop.v.i self.siner
pushi.e 1
pop.v.i self.drawpillar
pushi.e 0
pop.v.i self.pillarsiner
pushi.e 0
pop.v.i self.pillaralpha
pushi.e 2
pop.v.i self.pillarscale
pushi.e 0
pop.v.i self.particletimer
pushi.e 0
pop.v.i self.top
pushi.e 1
pop.v.i self.bottom
pushi.e 943
conv.i.v
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 943
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.toppart
pushi.e 1
push.v self.toppart
pushi.e -9
pop.v.i [stacktop]self.top
pushi.e 0
push.v self.toppart
pushi.e -9
pop.v.i [stacktop]self.bottom
pushi.e 5000
push.v self.toppart
pushi.e -9
pop.v.i [stacktop]self.depth

:[6]
pushi.e 0
pop.v.i self.stopcon
pushglb.v global.plot
pushi.e 16
cmp.i.v EQ
bf [8]

:[7]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [end]

:[10]
pushi.e 1
pop.v.i self.stopcon

:[end]