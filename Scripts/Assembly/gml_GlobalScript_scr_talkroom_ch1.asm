.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_talkroom_ch1 (locals=0, argc=0)
:[1]
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.i 115050323
setowner.e
push.s "scr_talkroom_slash_scr_talkroom_gml_4_0"@6867
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.talkdg
push.v self.atalk
pushi.e 1
add.i.v
pop.v.v self.atalk
exit.i

:[2]
push.i [function]gml_Script_scr_talkroom_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_talkroom_ch1
popz.v

:[end]