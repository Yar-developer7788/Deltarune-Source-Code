.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_rurusface (locals=0, argc=2)
:[1]
push.i 36407123
setowner.e
push.s "scr_rurusface_slash_scr_rurusface_gml_1_0"@9364
conv.s.v
push.v arg.argument1
call.i string(argc=1)
push.s "\\TX \\F0 \\E~1 \\Fu \\T0 %"@9365
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.msg
exit.i

:[2]
push.i [function]gml_Script_scr_rurusface
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_rurusface
popz.v

:[end]