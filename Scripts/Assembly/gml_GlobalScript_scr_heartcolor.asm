.localvar 2 arguments

:[0]
b [16]

> gml_Script_scr_heartcolor (locals=0, argc=1)
:[1]
push.v arg.argument0
pop.v.v self.__heartcolor
push.v self.__heartcolor
push.s "red"@7911
cmp.s.v EQ
bt [3]

:[2]
push.v self.__heartcolor
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [8]

:[5]
pushi.e 631
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.color
pushi.e 2531
pop.v.i self.sprite_index

:[7]
popenv [6]

:[8]
push.v self.__heartcolor
push.s "yellow"@10317
cmp.s.v EQ
bt [10]

:[9]
push.v self.__heartcolor
pushi.e 1
cmp.i.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [15]

:[12]
pushi.e 631
pushenv [14]

:[13]
pushi.e 1
pop.v.i self.color
pushi.e 1964
pop.v.i self.sprite_index

:[14]
popenv [13]
pushi.e 1383
pop.v.i 364.sprite_index

:[15]
exit.i

:[16]
push.i [function]gml_Script_scr_heartcolor
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_heartcolor
popz.v

:[end]