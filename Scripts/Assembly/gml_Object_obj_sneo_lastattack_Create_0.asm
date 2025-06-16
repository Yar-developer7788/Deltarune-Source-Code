.localvar 2 arguments

:[0]
pushi.e 66
pop.v.i self.x_offset
pushi.e 135
pop.v.i self.y_offset
pushi.e 12
pop.v.i self.skip_1st_part_hp
pushi.e 17
pop.v.i self.skip_2nd_part_hp
push.i 170715
setowner.e
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.y_offset
sub.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.yspot
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.y_offset
sub.v.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.yspot
push.v self.y
pushi.e -1
pushi.e 2
pop.v.v [array]self.yspot
push.v self.y
pop.v.v self.lastshoty
pushi.e 80
pop.v.i self.rand
pushi.e 1
pop.v.i self.ycurrent
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.movetimer
pushi.e 0
pop.v.i self.shottimer
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.count
pushi.e 0
pop.v.i self.mouthtopy
pushi.e 0
pop.v.i self.mouthbottomy
pushi.e 0
pop.v.i self.shotmouthopen
pushi.e 0
pop.v.i self.shotmouthopentimer
pushi.e 0
pop.v.i self.mouthangle
pushi.e 0
pop.v.i self.init
push.v self.x
pop.v.v self.remx
pushi.e 0
pop.v.i self.hurtalpha
pushi.e 644
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.endattack
pushi.e 561
pushenv [2]

:[1]
pushi.e 2
pop.v.i self.image_index

:[2]
popenv [1]

:[end]