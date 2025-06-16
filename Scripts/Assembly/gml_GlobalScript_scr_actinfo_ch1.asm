.localvar 2 arguments

:[0]
b [9]

> gml_Script_scr_actinfo_ch1 (locals=0, argc=1)
:[1]
pushi.e -1
pop.v.i self.actcost
pushi.e 0
pop.v.i self.acttype
pushi.e 0
pop.v.i self.actspell
pushi.e 1
pop.v.i self.actor
push.s " "@353
pop.v.s self.actname
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [5]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [6]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [7]

:[4]
b [8]

:[5]
pushi.e -1
pop.v.i self.actcost
pushi.e 0
pop.v.i self.acttype
pushi.e 0
pop.v.i self.actspell
pushi.e 1
pop.v.i self.actor
push.s " "@353
pop.v.s self.actname
b [8]

:[6]
pushi.e -1
pop.v.i self.actcost
pushi.e 0
pop.v.i self.acttype
pushi.e 0
pop.v.i self.actspell
pushi.e 1
pop.v.i self.actor
push.s "scr_actinfo_slash_scr_actinfo_gml_21_0"@13078
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.actname
b [8]

:[7]
pushi.e -1
pop.v.i self.actcost
pushi.e 1
pop.v.i self.acttype
pushi.e 2
pop.v.i self.actspell
pushi.e 2
pop.v.i self.actor
push.s "scr_actinfo_slash_scr_actinfo_gml_28_0"@13079
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.actname
b [8]

:[8]
popz.v
exit.i

:[9]
push.i [function]gml_Script_scr_actinfo_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_actinfo_ch1
popz.v

:[end]