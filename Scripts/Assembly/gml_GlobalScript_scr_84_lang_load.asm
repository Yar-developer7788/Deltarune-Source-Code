.localvar 2 arguments
.localvar 3439 name 3709
.localvar 12060 orig_filename 3711
.localvar 12062 new_filename 3712
.localvar 11885 filename 3713
.localvar 4672 type 3714
.localvar 12064 orig_map 3715
.localvar 12066 new_map 3716
.localvar 12068 new_date 3717
.localvar 12069 orig_date 3718

:[0]
b [10]

> gml_Script_scr_84_lang_load (locals=9, argc=0)
:[1]
push.s "lang_"@12056
pushglb.v global.lang
add.v.s
push.s ".json"@12057
add.s.v
pop.v.v local.name
pushbltn.v builtin.working_directory
push.s "lang/"@12059
add.s.v
pushloc.v local.name
add.v.v
pop.v.v local.orig_filename
pushbltn.v builtin.working_directory
push.s "lang-new/"@12061
add.s.v
pushloc.v local.name
add.v.v
pop.v.v local.new_filename
pushloc.v local.orig_filename
pop.v.v local.filename
push.s "orig"@12063
pop.v.s local.type
push.s "{}"@12044
conv.s.v
call.i json_decode(argc=1)
pop.v.v local.orig_map
call.i gml_Script_is_english(argc=0)
conv.v.b
not.b
bf [8]

:[2]
push.s "loading lang: "@12065
pushloc.v local.orig_filename
add.v.s
call.i show_debug_message(argc=1)
popz.v
pushloc.v local.orig_filename
call.i gml_Script_scr_84_load_map_json(argc=1)
pop.v.v local.orig_map
pushloc.v local.new_filename
call.i file_exists(argc=1)
conv.v.b
bf [6]

:[3]
pushloc.v local.new_filename
call.i gml_Script_scr_84_load_map_json(argc=1)
pop.v.v local.new_map
push.s "date"@12067
conv.s.v
pushloc.v local.new_map
call.i ds_map_find_value(argc=2)
call.i real(argc=1)
pop.v.v local.new_date
push.s "date"@12067
conv.s.v
pushloc.v local.orig_map
call.i ds_map_find_value(argc=2)
call.i real(argc=1)
pop.v.v local.orig_date
push.s "orig_date: "@12070
pushloc.v local.orig_date
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
push.s " new_date: "@12071
pushloc.v local.new_date
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
pushloc.v local.new_date
pushloc.v local.orig_date
cmp.v.v GT
bf [5]

:[4]
push.s "using new language file"@12072
conv.s.v
call.i show_debug_message(argc=1)
popz.v
pushloc.v local.orig_map
call.i ds_map_destroy(argc=1)
popz.v
pushloc.v local.new_map
pop.v.v local.orig_map
pushloc.v local.new_filename
pop.v.v local.filename
push.s "new("@12073
pushloc.v local.new_date
call.i string(argc=1)
add.v.s
push.s ")"@12074
add.s.v
pop.v.v local.type
b [6]

:[5]
push.s "using orig language file"@12075
conv.s.v
call.i show_debug_message(argc=1)
popz.v

:[6]
pushglb.v global.lang_map
call.i ds_map_destroy(argc=1)
popz.v
pushloc.v local.orig_map
pop.v.v global.lang_map
call.i gml_Script_is_english(argc=0)
conv.v.b
not.b
bf [8]

:[7]
pushi.e 1
pop.v.b global.jp_data_loaded
push.s "loaded: "@12077
pushloc.v local.filename
add.v.s
push.s ", entries: "@12078
add.s.v
pushglb.v global.lang_map
call.i ds_map_size(argc=1)
call.i string(argc=1)
add.v.v
call.i show_debug_message(argc=1)
popz.v

:[8]
pushloc.v local.type
ret.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_scr_84_lang_load
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_84_lang_load
popz.v

:[end]