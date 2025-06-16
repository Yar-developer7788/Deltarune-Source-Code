.localvar 2 arguments

:[0]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.s "obj_npc_clamguy_slash_Other_10_gml_5_0"@18154
conv.s.v
push.s "* Oh hey hey hey hey hey./"@18155
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_clamguy_slash_Other_10_gml_6_0"@18156
conv.s.v
push.s "* Listen up. See that \\cYweird circle\\cW on the beach?/"@18157
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_clamguy_slash_Other_10_gml_7_0"@18158
conv.s.v
push.s "* Yesterday I \\cYwaited\\cW on it^1, and \\cYsomething weird\\cW came out./"@18159
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_clamguy_slash_Other_10_gml_8_0"@18160
conv.s.v
push.s "* Of course^1, it's not \\cYyesterday\\cW anymore^1, so too bad!/%"@18161
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [3]

:[2]
push.s "obj_npc_clamguy_slash_Other_10_gml_11_0"@18162
conv.s.v
push.s "* Oh hey hey hey hey hey./"@18155
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_clamguy_slash_Other_10_gml_12_0"@18163
conv.s.v
push.s "* When that thing showed up^1, I called it weird./"@18164
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_clamguy_slash_Other_10_gml_13_0"@18165
conv.s.v
push.s "* It sunk back into the water..^1. don't think it's coming back!/%"@18166
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[3]
push.v self.talked
push.e 1
add.i.v
pop.v.v self.talked
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fc
pushi.e 1
pop.v.i global.interact
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]