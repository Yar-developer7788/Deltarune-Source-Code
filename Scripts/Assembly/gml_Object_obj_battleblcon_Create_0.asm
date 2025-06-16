.localvar 2 arguments

:[0]
pushi.e 64
conv.i.v
push.v self.y
pushi.e 5
add.i.v
push.v self.x
pushi.e 5
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mywriter
push.i 9999999
push.v self.mywriter
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
pop.v.i self.auto_length
pushi.e 1
pop.v.i self.side
pushi.e 0
pop.v.i self.xoffset
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.reformatted
push.v self.x
pop.v.v self.remx
push.v self.y
pop.v.v self.remy
pushi.e -1
pop.v.i self.remmsgno
pushi.e -1
pop.v.i self.initwritingx
pushi.e -1
pop.v.i self.initwritingy

:[end]