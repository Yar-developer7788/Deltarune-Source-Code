.localvar 2 arguments
.localvar 38171 flush_texture 19832
.localvar 14573 _tex_array 19833
.localvar 107 i 19834

:[0]
call.i gml_Script_snd_free_all(argc=0)
popz.v
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 1649
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
pushi.e 1649
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[4]
pushi.e 1113
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[5]
pushi.e 1113
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]

:[8]
pushi.e 1134
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[9]
pushi.e 1134
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]

:[12]
pushi.e 1669
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [16]

:[13]
pushi.e 1669
pushenv [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [14]

:[16]
pushi.e 1671
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [20]

:[17]
pushi.e 1671
pushenv [19]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
popenv [18]

:[20]
push.s "chapter"@336
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [27]

:[21]
pushi.e 1
pop.v.b local.flush_texture
push.s "chapter_return"@14038
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [23]

:[22]
pushglb.v global.chapter
pushglb.v global.chapter_return
cmp.v.v NEQ
pop.v.b local.flush_texture

:[23]
pushloc.v local.flush_texture
conv.v.b
bf [27]

:[24]
push.s "chapter_0"@14631
pushglb.v global.chapter
call.i string(argc=1)
add.v.s
call.i texturegroup_get_textures(argc=1)
pop.v.v local._tex_array
pushi.e 0
pop.v.i local.i

:[25]
pushloc.v local.i
pushloc.v local._tex_array
call.i array_length(argc=1)
cmp.v.v LT
bf [27]

:[26]
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self._tex_array
call.i texture_flush(argc=1)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [25]

:[27]
push.i 68097
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]