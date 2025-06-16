.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 2
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e -30
pop.v.i self.y
push.v 631.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.flash
pushi.e 0
pop.v.i self.siner
pushi.e 1
pop.v.i self.destroyable
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 1
pop.v.i self.swingdir
pushi.e -4
pop.v.i self.myspeed
pushi.e 170
pop.v.i self.length
pushi.e 50
pop.v.i self.place
pushi.e 0
pop.v.i self.swing
call.i gml_Script_camerax(argc=0)
pushi.e 240
add.i.v
pop.v.v self.target_x
pushi.e -10
pop.v.i self.target_y
pushi.e 0
pop.v.i self.sneoarmtimer

:[end]