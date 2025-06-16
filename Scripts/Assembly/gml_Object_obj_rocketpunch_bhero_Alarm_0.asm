.localvar 2 arguments

:[0]
pushi.e 823
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fade
pushi.e -9999
push.v self.fade
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.fade
pushi.e -9
pop.v.i [stacktop]self.dont_fade_out
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[end]