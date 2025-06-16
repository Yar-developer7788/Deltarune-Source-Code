.localvar 2 arguments

:[0]
b [7]

> gml_Script_scr_lrecoitem (locals=0, argc=1)
:[1]
push.v arg.argument0
call.i gml_Script_scr_lrecover(argc=1)
popz.v
push.i 5080835
setowner.e
push.v self.recovered
pushi.e -5
pushi.e 8
pop.v.v [array]self.item
push.v self.maxedout
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 9999
conv.i.v
pushi.e -5
pushi.e 8
pop.v.v [array]self.item

:[3]
push.i 5080915
setowner.e
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]self.msg
push.s " &"@385
add.s.v
pop.i.v [array]self.msg
pushi.e -5
pushi.e 8
push.v [array]self.item
pushi.e 999
cmp.i.v LT
bf [5]

:[4]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]self.msg
push.s "scr_lrecoitem_slash_scr_lrecoitem_gml_14_0"@386
conv.s.v
pushi.e -5
pushi.e 8
push.v [array]self.item
call.i string(argc=1)
push.s "* You recovered ~1 HP!/%"@388
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
add.v.v
pop.i.v [array]self.msg
b [6]

:[5]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]self.msg
push.s "scr_lrecoitem_slash_scr_lrecoitem_gml_16_0"@390
conv.s.v
push.s "* Your HP was maxed out./%"@391
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
add.v.v
pop.i.v [array]self.msg

:[6]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
push.i [function]gml_Script_scr_writetext
conv.i.v
call.i script_execute(argc=5)
popz.v
exit.i

:[7]
push.i [function]gml_Script_scr_lrecoitem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_lrecoitem
popz.v

:[end]