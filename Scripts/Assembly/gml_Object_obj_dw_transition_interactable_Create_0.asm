.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.con
pushi.e 68
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mysolid
pushi.e 8
push.v self.mysolid
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.mysolid
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e 0
pop.v.i self.talking

:[end]