.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_pivotoncenter (locals=0, argc=1)
:[1]
push.v arg.argument0
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
call.i gml_Script_scr_pivotonpoint(argc=3)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scr_pivotoncenter
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_pivotoncenter
popz.v

:[end]