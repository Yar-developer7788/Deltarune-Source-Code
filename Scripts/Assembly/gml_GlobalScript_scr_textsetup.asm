.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_textsetup (locals=0, argc=11)
:[1]
push.v arg.argument0
pop.v.v self.myfont
push.v arg.argument1
pop.v.v self.mycolor
push.v arg.argument2
pop.v.v self.writingx
push.v arg.argument3
pop.v.v self.writingy
push.v arg.argument4
pop.v.v self.charline
push.v arg.argument5
pop.v.v self.shake
push.v arg.argument6
pop.v.v self.rate
push.v arg.argument7
pop.v.v self.textsound
push.v arg.argument8
pop.v.v self.hspace
push.v arg.argument9
pop.v.v self.vspace
push.v arg.argument10
pop.v.v self.special
pushi.e 1
pop.v.i self.colorchange
push.v self.mycolor
pop.v.v self.xcolor
exit.i

:[2]
push.i [function]gml_Script_scr_textsetup
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_textsetup
popz.v

:[end]