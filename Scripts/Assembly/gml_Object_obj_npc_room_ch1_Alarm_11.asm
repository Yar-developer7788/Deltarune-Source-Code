.localvar 2 arguments
.localvar 15791 cs 20470

:[0]
push.i 68097
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.alarm
pushi.e 1395
conv.i.v
push.v self.y
pushi.e 16
add.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 40
add.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v local.cs
push.v self.depth
pushloc.v local.cs
pushi.e -9
pop.v.v [stacktop]self.depth

:[end]