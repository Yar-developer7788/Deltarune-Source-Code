.localvar 2 arguments

:[0]
push.v self.image_index
pushi.e 7
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.d
push.v self.image_index
pushi.e 8
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.direction
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed

:[end]