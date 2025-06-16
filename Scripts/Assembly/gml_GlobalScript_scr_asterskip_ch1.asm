.localvar 2 arguments

:[0]
b [9]

> gml_Script_scr_asterskip_ch1 (locals=0, argc=0)
:[1]
push.v self.aster
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.autoaster
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v self.length
pushi.e 2
add.i.v
pop.v.v self.length
push.v self.i
push.v self.mystring
push.s "scr_asterskip_slash_scr_asterskip_gml_4_0"@12405
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_insert(argc=3)
pop.v.v self.mystring

:[6]
push.v self.aster
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.aster

:[8]
exit.i

:[9]
push.i [function]gml_Script_scr_asterskip_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_asterskip_ch1
popz.v

:[end]