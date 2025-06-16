.localvar 2 arguments

:[0]
push.v self.firstnoise
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.firstnoise
call.i gml_Script_scr_textsound_ch1(argc=0)
popz.v

:[end]