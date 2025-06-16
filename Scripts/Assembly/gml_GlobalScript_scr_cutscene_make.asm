.localvar 2 arguments

:[0]
b [3]

> gml_Script_scr_cutscene_make (locals=0, argc=0)
:[1]
pushi.e 898
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self._cutscene_master
push.v self.id
push.v self._cutscene_master
pushi.e -9
pop.v.v [stacktop]self.master_object
push.v self._cutscene_master
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_scr_cutscene_make
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_cutscene_make
popz.v

:[end]