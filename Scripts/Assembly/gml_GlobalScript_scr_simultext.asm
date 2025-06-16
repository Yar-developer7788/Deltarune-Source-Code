.localvar 2 arguments

:[0]
b [10]

> gml_Script_scr_simultext (locals=0, argc=1)
:[1]
pushi.e 0
pop.v.i self.__simulorder
push.v arg.argument0
push.s "kris"@68
cmp.s.v EQ
bf [3]

:[2]
push.v self.simulorderkri
pop.v.v self.__simulorder

:[3]
push.v arg.argument0
push.s "susie"@70
cmp.s.v EQ
bf [5]

:[4]
push.v self.simulordersus
pop.v.v self.__simulorder

:[5]
push.v arg.argument0
push.s "ralsei"@72
cmp.s.v EQ
bf [7]

:[6]
push.v self.simulorderral
pop.v.v self.__simulorder

:[7]
push.v arg.argument0
push.s "noelle"@74
cmp.s.v EQ
bf [9]

:[8]
push.v self.simulordernoe
pop.v.v self.__simulorder

:[9]
push.v self.__simulorder
pushi.e 30
mul.i.v
pop.v.v self.__yoffset
pushi.e 4
pop.v.i global.typer
pushi.e 64
conv.i.v
push.v self.yy
pushi.e 376
add.i.v
push.v self.__yoffset
add.v.v
push.v self.xx
pushi.e 30
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.battlewriter
exit.i

:[10]
push.i [function]gml_Script_scr_simultext
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_simultext
popz.v

:[end]