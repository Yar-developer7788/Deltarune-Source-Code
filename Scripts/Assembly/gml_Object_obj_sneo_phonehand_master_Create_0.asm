.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.siner
pushi.e 6
pop.v.i self.element
pushi.e 70
pop.v.i self.xdist
pushi.e 650
conv.i.v
push.v self.y
pushi.e 70
sub.i.v
push.v self.x
push.v self.xdist
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.phonehand_top
push.s "top"@6226
push.v self.phonehand_top
pushi.e -9
pop.v.s [stacktop]self.orientation
push.v self.id
push.v self.phonehand_top
pushi.e -9
pop.v.v [stacktop]self.boss
push.v 698.target
push.v self.phonehand_top
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 650
conv.i.v
push.v self.y
pushi.e 60
add.i.v
push.v self.x
push.v self.xdist
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.phonehand_bottom
push.s "bottom"@4636
push.v self.phonehand_bottom
pushi.e -9
pop.v.s [stacktop]self.orientation
push.v self.id
push.v self.phonehand_bottom
pushi.e -9
pop.v.v [stacktop]self.boss
push.v 698.target
push.v self.phonehand_bottom
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 0
pop.v.i self.movedx
pushi.e 200
pop.v.i self.hp
pushi.e 0
pop.v.i self.difficulty
push.v 697.difficulty
pop.v.v self.difficulty
pushi.e 0
pop.v.i self.btimer
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.visibiliytimer
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.bluesiner
push.d 0.25
push.v self.bluesiner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.25
mul.d.v
add.v.d
push.i 16776960
conv.i.v
push.i 15245824
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[end]