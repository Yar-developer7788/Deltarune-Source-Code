.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.monster
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [2]

:[1]
push.d 0.5
pop.v.d self.image_alpha
b [end]

:[2]
pushi.e 0
pop.v.i self.visible

:[end]