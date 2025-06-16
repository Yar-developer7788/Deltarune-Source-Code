.localvar 2 arguments

:[0]
b [4]

> gml_Script_scr_writer_autocenter (locals=0, argc=1)
:[1]
pushi.e 64
pushenv [3]

:[2]
push.v arg.argument0
pop.v.v self.autocenter

:[3]
popenv [2]
exit.i

:[4]
push.i [function]gml_Script_scr_writer_autocenter
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_writer_autocenter
popz.v

:[end]