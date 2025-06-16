.localvar 2 arguments
.localvar 14573 _tex_array 6390
.localvar 107 i 6391

:[0]
call.i audio_stop_all(argc=0)
popz.v
push.s ""@157
pop.v.s global.lang_loaded
push.v self.reload_textures
conv.v.b
bf [4]

:[1]
push.s "chapter_0"@14631
push.v self.chaptertoload_temp
call.i string(argc=1)
add.v.s
call.i texturegroup_get_textures(argc=1)
pop.v.v local._tex_array
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
pushloc.v local._tex_array
call.i array_length(argc=1)
cmp.v.v LT
bf [4]

:[3]
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self._tex_array
call.i texture_prefetch(argc=1)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[4]
push.v self.chaptertoload_temp
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [7]

:[5]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [8]

:[6]
b [9]

:[7]
pushi.e 281
conv.i.v
call.i room_goto(argc=1)
popz.v
b [9]

:[8]
pushi.e 11
conv.i.v
call.i room_goto(argc=1)
popz.v
b [9]

:[9]
popz.v
push.s "chapter_select"@14571
conv.s.v
call.i texturegroup_get_textures(argc=1)
pop.v.v local._tex_array
pushi.e 0
pop.v.i local.i

:[10]
pushloc.v local.i
pushloc.v local._tex_array
call.i array_length(argc=1)
cmp.v.v LT
bf [end]

:[11]
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
b [10]

:[end]