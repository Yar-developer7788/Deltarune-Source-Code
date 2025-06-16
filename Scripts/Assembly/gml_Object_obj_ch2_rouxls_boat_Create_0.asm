.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.bumped
pushi.e 0
pop.v.i self.drawthrash
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.fallnow
pushi.e 90
pop.v.i self.boatx
pushi.e 60
pop.v.i self.boaty
push.i 830000
pop.v.i self.depth
push.v self.object_index
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.object_index
push.v self.y
push.v self.boaty
add.v.v
push.v self.x
push.v self.boatx
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.boatfront
push.v self.object_index
pushi.e -9
pushenv [3]

:[2]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.isrouxls

:[3]
popenv [2]
pushi.e 1
pop.v.i self.isrouxls
push.v self.depth
pushi.e 50
sub.i.v
push.v self.boatfront
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
push.v self.boatfront
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 5
push.v self.boatfront
pushi.e -9
pop.v.i [stacktop]self.con

:[end]