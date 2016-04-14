= COMPILING GETARUN =

documentation author: Meng Weng WONG <mengwong@pobox.com>
date: gio  7 apr 2016, 14.48.13, CEST

== Initial Goal ==

The initial goal is to have a compiled binary which runs the xpce interface of
the getarun codebase.

Prof Delmonte reported that old versions of swipl knew how to compile
using qsave_program.

But newer versions of swipl wouldn't do that.

Here is a partially successful session, which does bring up the XPCE
interface and knows how to handle the story of the three little pigs.

	== Original Run ==

    server@server-ProLiant-ML350-G5 ~/mengwong/late_getarun
     % swipl
    % library(swi_hooks) compiled into pce_swi_hooks 0.00 sec, 2,224 bytes
    Welcome to SWI-Prolog (Multi-threaded, 32 bits, Version 5.10.4)
    Copyright (c) 1990-2011 University of Amsterdam, VU Amsterdam
    SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software,
    and you are welcome to redistribute it under certain conditions.
    Please visit http://www.swi-prolog.org for details.
    
    For help, use ?- help(Topic). or ?- apropos(Word).
    
    ?- [ita_inits]
    |    .
    % ita_inits compiled 0.02 sec, 216,688 bytes
    true.
    
    ?- make_demo.
    % anaphoric compiled 0.01 sec, 148 bytes
    % binding compiled 0.01 sec, 136 bytes
    ERROR: source_sink `clitsmorph' does not exist
    % interpret compiled 0.05 sec, 136 bytes
    % itlexicon compiled 0.39 sec, 136 bytes
    % main_parse compiled 0.05 sec, 136 bytes
    Warning: /home/server/mengwong/late_getarun/newGen:301:
            Clauses of diz/5 are not together in the source-file
    Warning: /home/server/mengwong/late_getarun/newGen:308:
            Clauses of diz/5 are not together in the source-file
    Warning: /home/server/mengwong/late_getarun/newGen:324:
            Clauses of diz/6 are not together in the source-file
    Warning: /home/server/mengwong/late_getarun/newGen:363:
            Clauses of diz/5 are not together in the source-file
    Warning: /home/server/mengwong/late_getarun/newGen:851:
            Clauses of s/7 are not together in the source-file
    Warning: /home/server/mengwong/late_getarun/newGen:861:
            Clauses of s/8 are not together in the source-file
    Warning: /home/server/mengwong/late_getarun/newGen:901:
            Clauses of s/9 are not together in the source-file
    Warning: /home/server/mengwong/late_getarun/newGen:918:
            Clauses of s/8 are not together in the source-file
    Warning: /home/server/mengwong/late_getarun/newGen:932:
            Clauses of s/9 are not together in the source-file
    Warning: /home/server/mengwong/late_getarun/newGen:961:
            Clauses of s/8 are not together in the source-file
    Warning: /home/server/mengwong/late_getarun/newGen:991:
            Clauses of s/8 are not together in the source-file
    % newGen compiled 0.01 sec, 136 bytes
    % newReason compiled 0.03 sec, 136 bytes
    % reference compiled 0.03 sec, 136 bytes
    % semantic compiled 0.03 sec, 136 bytes
    % standardutt compiled 0.01 sec, 136 bytes
    % tagger compiled 0.23 sec, 136 bytes
    % tagging compiled 0.01 sec, 136 bytes
    % temp_space compiled 0.01 sec, 136 bytes
    % tokeniz compiled 0.00 sec, 136 bytes
    % writemodel compiled 0.01 sec, 136 bytes
    % parsecs compiled 0.03 sec, 136 bytes
    % itaLex0 compiled 0.44 sec, 136 bytes
    % infls compiled 0.05 sec, 136 bytes
    % dizionari/matrall compiled 2.25 sec, 19,495,980 bytes
    % dizionari/trigramsdis compiled 0.02 sec, 165,392 bytes
    % dizionari/alldiss compiled 0.24 sec, 1,814,896 bytes
    % dizionari/vitlems_lowre compiled 0.51 sec, 4,411,292 bytes
    % dizionari/invars compiled 0.22 sec, 2,090,976 bytes
    % dizionari/itallem compiled 0.47 sec, 4,317,164 bytes
    % dizionari/newsemparav compiled 1.88 sec, 17,046,800 bytes
    % dizionari/indexili compiled 0.74 sec, 6,423,852 bytes
    % dizionari/newpar compiled 1.79 sec, 17,099,596 bytes
    % dizionari/vits compiled 0.25 sec, 1,744,864 bytes
    % dizionari/types_it compiled 0.24 sec, 2,043,584 bytes
    % dizionari/verbrootit compiled 0.21 sec, 1,748,208 bytes
    % dizionari/italdict1 compiled 1.05 sec, 8,879,044 bytes
    % dizionari/jrcentss compiled 5.78 sec, 52,679,248 bytes
    % dizionari/italdict compiled 0.67 sec, 4,315,212 bytes
    % dizionari/nomiwiki compiled 0.35 sec, 2,790,356 bytes
    % dizionari/roots8 compiled 0.76 sec, 6,837,860 bytes
    % dizionari/iwl8 compiled 0.41 sec, 3,271,616 bytes
    % dizionari/pisalexic compiled 2.35 sec, 19,937,500 bytes
    % dizionari/dict_old compiled 2.31 sec, 23,784,912 bytes
    % dizionari/geoitt compiled 0.75 sec, 7,303,044 bytes
    % dizionari/itwnpl compiled 1.62 sec, 11,326,396 bytes
    % dizionari/tokssortall compiled 0.81 sec, 6,069,020 bytes
    % dizionari/freqss compiled 0.32 sec, 2,193,012 bytes
    % dizionari/allsynscontrs compiled 1.13 sec, 15,931,264 bytes
    true.
    
    ?- [qgui].
    %  library(quintus) compiled into quintus 0.00 sec, 10,856 bytes
    %  library(pce) loaded into pce 0.03 sec, 352,956 bytes
    % qgui compiled 0.03 sec, 368,888 bytes
    true.
    
    ?- gui.
    true.
    
    ?- % /home/server/mengwong/late_getarun/story_porcellini_1 compiled 0,00 sec, 7,400 bytes
    ?- qsave_program(it_getarun,[stand_alone=true,goal=gui]).
    ############% /usr/lib/swi-prolog/library/date compiled into date 0,00 sec, 21,248 bytes
    % /usr/lib/swi-prolog/library/gensym compiled into gensym 0,00 sec, 2,520 bytes
    % /usr/lib/swi-prolog/library/listing compiled into prolog_listing 0,00 sec, 20,880 bytes
    % /usr/lib/swi-prolog/xpce/prolog/lib/pce_dispatch compiled into pce_dispatch 0,01 sec, 3,788 bytes
    true.
    
    ?-
    % halt
    server@server-ProLiant-ML350-G5 ~/mengwong/late_getarun
     %
    server@server-ProLiant-ML350-G5 ~/mengwong/late_getarun
     % ./it_getarun
    ERROR: /usr/lib/swi-prolog/xpce/prolog/boot/pce_principal.pl:97: Initialization goal raised exception:
    ERROR: '$open_shared_object'/3: pl2xpce: cannot open shared object file: No such file or directory
    ERROR: /usr/lib/swi-prolog/xpce/prolog/boot/pce_principal.pl:312: Initialization goal raised exception:
    ERROR: '<meta-call>'/1: Undefined procedure: pce_principal:object/1
    ERROR:   However, there are definitions for:
    ERROR:         objecto/2
    ERROR: /usr/lib/swi-prolog/xpce/prolog/boot/pce_global.pl:106: Initialization goal raised exception:
    ERROR: pce_global:register_handler/0: Undefined procedure: pce_principal:send/2
    ERROR:   However, there are definitions for:
    ERROR:         pce_principal:send/3
    ERROR:         pce_principal:send/4
    ERROR:         pce_principal:send/5
    ERROR:         pce_principal:send/6
    ERROR:         pce_principal:send/7
    ERROR:         pce_principal:send/8
    ERROR:         send/3
    ERROR:         send/4
    ERROR:         send/5
    ERROR:         send/6
    ERROR:         send/7
    ERROR:         send/8
    ERROR: /usr/lib/swi-prolog/xpce/prolog/boot/pce_autoload.pl:97: Initialization goal raised exception:
    ERROR: pce_autoload:register_handler/0: Undefined procedure: pce_principal:send/2
    ERROR:   However, there are definitions for:
    ERROR:         pce_principal:send/3
    ERROR:         pce_principal:send/4
    ERROR:         pce_principal:send/5
    ERROR:         pce_principal:send/6
    ERROR:         pce_principal:send/7
    ERROR:         pce_principal:send/8
    ERROR:         send/3
    ERROR:         send/4
    ERROR:         send/5
    ERROR:         send/6
    ERROR:         send/7
    ERROR:         send/8
    ERROR: /usr/lib/swi-prolog/xpce/prolog/boot/pce_editor.pl:130: Initialization goal raised exception:
    ERROR: pce_principal:get/4: Undefined procedure: pce_principal:get/3
    ERROR:   However, there are definitions for:
    ERROR:         pce_principal:get/4
    ERROR:         pce_principal:get/5
    ERROR:         pce_principal:get/6
    ERROR:         pce_principal:get/7
    ERROR:         pce_principal:get/8
    ERROR:         get/1
    ERROR:         get/1
    ERROR:         get0/1
    ERROR:         get0/1
    ERROR:         get/2
    ERROR:         get/2
    ERROR:         get0/2
    ERROR:         get0/2
    ERROR:         gen/2
    ERROR:         set/2
    ERROR:         get/4
    ERROR:         get/5
    ERROR:         get/6
    ERROR:         get/7
    ERROR:         get/8
    ERROR: /usr/lib/swi-prolog/xpce/prolog/boot/pce_editor.pl:133: Initialization goal raised exception:
    ERROR: editor_buttons:make_editor_recogniser/1: Undefined procedure: pce_principal:new/2
    ERROR: /usr/lib/swi-prolog/xpce/prolog/boot/pce_keybinding.pl:202: Initialization goal raised exception:
    ERROR: pce_principal:get/4: Undefined procedure: pce_principal:get/3
    ERROR:   However, there are definitions for:
    ERROR:         pce_principal:get/4
    ERROR:         pce_principal:get/5
    ERROR:         pce_principal:get/6
    ERROR:         pce_principal:get/7
    ERROR:         pce_principal:get/8
    ERROR:         get/1
    ERROR:         get/1
    ERROR:         get0/1
    ERROR:         get0/1
    ERROR:         get/2
    ERROR:         get/2
    ERROR:         get0/2
    ERROR:         get0/2
    ERROR:         gen/2
    ERROR:         set/2
    ERROR:         get/4
    ERROR:         get/5
    ERROR:         get/6
    ERROR:         get/7
    ERROR:         get/8
    ERROR: /usr/lib/swi-prolog/xpce/prolog/boot/pce_keybinding.pl:234: Initialization goal raised exception:
    ERROR: pce_principal:get/4: Undefined procedure: pce_principal:get/3
    ERROR:   However, there are definitions for:
    ERROR:         pce_principal:get/4
    ERROR:         pce_principal:get/5
    ERROR:         pce_principal:get/6
    ERROR:         pce_principal:get/7
    ERROR:         pce_principal:get/8
    ERROR:         get/1
    ERROR:         get/1
    ERROR:         get0/1
    ERROR:         get0/1
    ERROR:         get/2
    ERROR:         get/2
    ERROR:         get0/2
    ERROR:         get0/2
    ERROR:         gen/2
    ERROR:         set/2
    ERROR:         get/4
    ERROR:         get/5
    ERROR:         get/6
    ERROR:         get/7
    ERROR:         get/8
    ERROR: /usr/lib/swi-prolog/xpce/prolog/boot/pce_keybinding.pl:247: Initialization goal raised exception:
    ERROR: pce_keybinding:make_key_binding_style_type/0: Undefined procedure: pce_principal:get/3
    ERROR:   However, there are definitions for:
    ERROR:         pce_principal:get/4
    ERROR:         pce_principal:get/5
    ERROR:         pce_principal:get/6
    ERROR:         pce_principal:get/7
    ERROR:         pce_principal:get/8
    ERROR:         get/1
    ERROR:         get/1
    ERROR:         get0/1
    ERROR:         get0/1
    ERROR:         get/2
    ERROR:         get/2
    ERROR:         get0/2
    ERROR:         get0/2
    ERROR:         gen/2
    ERROR:         set/2
    ERROR:         get/4
    ERROR:         get/5
    ERROR:         get/6
    ERROR:         get/7
    ERROR:         get/8
    ERROR: /usr/lib/swi-prolog/xpce/prolog/lib/pce.pl:142: Initialization goal raised exception:
    ERROR: pce:set_version/0: Undefined procedure: pce_principal:send/2
    ERROR:   However, there are definitions for:
    ERROR:         pce_principal:send/3
    ERROR:         pce_principal:send/4
    ERROR:         pce_principal:send/5
    ERROR:         pce_principal:send/6
    ERROR:         pce_principal:send/7
    ERROR:         pce_principal:send/8
    ERROR:         send/3
    ERROR:         send/4
    ERROR:         send/5
    ERROR:         send/6
    ERROR:         send/7
    ERROR:         send/8
    ERROR: /usr/lib/swi-prolog/xpce/prolog/lib/find_file.pl:228: Initialization goal raised exception:
    ERROR: pce_principal:get/4: Undefined procedure: pce_principal:get/3
    ERROR:   However, there are definitions for:
    ERROR:         pce_principal:get/4
    ERROR:         pce_principal:get/5
    ERROR:         pce_principal:get/6
    ERROR:         pce_principal:get/7
    ERROR:         pce_principal:get/8
    ERROR:         get/1
    ERROR:         get/1
    ERROR:         get0/1
    ERROR:         get0/1
    ERROR:         get/2
    ERROR:         get/2
    ERROR:         get0/2
    ERROR:         get0/2
    ERROR:         gen/2
    ERROR:         set/2
    ERROR:         get/4
    ERROR:         get/5
    ERROR:         get/6
    ERROR:         get/7
    ERROR:         get/8
    ERROR: /usr/lib/swi-prolog/xpce/prolog/lib/file_item.pl:49: Initialization goal raised exception:
    ERROR: pce_principal:get/4: Undefined procedure: pce_principal:get/3
    ERROR:   However, there are definitions for:
    ERROR:         pce_principal:get/4
    ERROR:         pce_principal:get/5
    ERROR:         pce_principal:get/6
    ERROR:         pce_principal:get/7
    ERROR:         pce_principal:get/8
    ERROR:         get/1
    ERROR:         get/1
    ERROR:         get0/1
    ERROR:         get0/1
    ERROR:         get/2
    ERROR:         get/2
    ERROR:         get0/2
    ERROR:         get0/2
    ERROR:         gen/2
    ERROR:         set/2
    ERROR:         get/4
    ERROR:         get/5
    ERROR:         get/6
    ERROR:         get/7
    ERROR:         get/8
    ERROR: /usr/lib/swi-prolog/xpce/prolog/lib/file_item.pl:215: Initialization goal raised exception:
    ERROR: pce_principal:get/4: Undefined procedure: pce_principal:get/3
    ERROR:   However, there are definitions for:
    ERROR:         pce_principal:get/4
    ERROR:         pce_principal:get/5
    ERROR:         pce_principal:get/6
    ERROR:         pce_principal:get/7
    ERROR:         pce_principal:get/8
    ERROR:         get/1
    ERROR:         get/1
    ERROR:         get0/1
    ERROR:         get0/1
    ERROR:         get/2
    ERROR:         get/2
    ERROR:         get0/2
    ERROR:         get0/2
    ERROR:         gen/2
    ERROR:         set/2
    ERROR:         get/4
    ERROR:         get/5
    ERROR:         get/6
    ERROR:         get/7
    ERROR:         get/8
    ERROR: /usr/lib/swi-prolog/xpce/prolog/lib/file_item.pl:249: Initialization goal raised exception:
    ERROR: pce_principal:get/4: Undefined procedure: pce_principal:get/3
    ERROR:   However, there are definitions for:
    ERROR:         pce_principal:get/4
    ERROR:         pce_principal:get/5
    ERROR:         pce_principal:get/6
    ERROR:         pce_principal:get/7
    ERROR:         pce_principal:get/8
    ERROR:         get/1
    ERROR:         get/1
    ERROR:         get0/1
    ERROR:         get0/1
    ERROR:         get/2
    ERROR:         get/2
    ERROR:         get0/2
    ERROR:         get0/2
    ERROR:         gen/2
    ERROR:         set/2
    ERROR:         get/4
    ERROR:         get/5
    ERROR:         get/6
    ERROR:         get/7
    ERROR:         get/8
    ERROR: /usr/lib/swi-prolog/xpce/prolog/lib/find_file_dialog.pl:442: Initialization goal raised exception:
    ERROR: pce_principal:get/4: Undefined procedure: pce_principal:get/3
    ERROR:   However, there are definitions for:
    ERROR:         pce_principal:get/4
    ERROR:         pce_principal:get/5
    ERROR:         pce_principal:get/6
    ERROR:         pce_principal:get/7
    ERROR:         pce_principal:get/8
    ERROR:         get/1
    ERROR:         get/1
    ERROR:         get0/1
    ERROR:         get0/1
    ERROR:         get/2
    ERROR:         get/2
    ERROR:         get0/2
    ERROR:         get0/2
    ERROR:         gen/2
    ERROR:         set/2
    ERROR:         get/4
    ERROR:         get/5
    ERROR:         get/6
    ERROR:         get/7
    ERROR:         get/8
    ERROR: /usr/lib/swi-prolog/xpce/prolog/lib/find_file_dialog.pl:466: Initialization goal raised exception:
    ERROR: pce_principal:get/4: Undefined procedure: pce_principal:get/3
    ERROR:   However, there are definitions for:
    ERROR:         pce_principal:get/4
    ERROR:         pce_principal:get/5
    ERROR:         pce_principal:get/6
    ERROR:         pce_principal:get/7
    ERROR:         pce_principal:get/8
    ERROR:         get/1
    ERROR:         get/1
    ERROR:         get0/1
    ERROR:         get0/1
    ERROR:         get/2
    ERROR:         get/2
    ERROR:         get0/2
    ERROR:         get0/2
    ERROR:         gen/2
    ERROR:         set/2
    ERROR:         get/4
    ERROR:         get/5
    ERROR:         get/6
    ERROR:         get/7
    ERROR:         get/8
    ERROR: /usr/lib/swi-prolog/xpce/prolog/lib/find_file_dialog.pl:583: Initialization goal raised exception:
    ERROR: pce_principal:get/4: Undefined procedure: pce_principal:get/3
    ERROR:   However, there are definitions for:
    ERROR:         pce_principal:get/4
    ERROR:         pce_principal:get/5
    ERROR:         pce_principal:get/6
    ERROR:         pce_principal:get/7
    ERROR:         pce_principal:get/8
    ERROR:         get/1
    ERROR:         get/1
    ERROR:         get0/1
    ERROR:         get0/1
    ERROR:         get/2
    ERROR:         get/2
    ERROR:         get0/2
    ERROR:         get0/2
    ERROR:         gen/2
    ERROR:         set/2
    ERROR:         get/4
    ERROR:         get/5
    ERROR:         get/6
    ERROR:         get/7
    ERROR:         get/8
    ERROR: Prolog initialisation failed:
    ERROR: gui/0: Undefined procedure: pce_principal:new/2
    server@server-ProLiant-ML350-G5 ~/mengwong/late_getarun
     % cd
    server@server-ProLiant-ML350-G5 ~
     %

== Desired Output ==

when run against story_porcellini_1,

you get 

	tes(f3_po04),tes(f3_po01)),result,3-[4])','
	ds(to(1-0),4-3,[expected:id3:porcellino,main:id14:lupo],lavorare([id39:jimmi],1,id2),during(tes(f2_po04),tes(f3_po01)),narration,2-[3])','
	ds(down(3-2),3-3,[expected:id23:porcellino,main:id24:lupo,secondary:id25:lupo],proteggere([id23:porcellino,id28:si,id24:lupo],1,id2),during(tes(finf1_po03),tes(f3_po01)),purpose,2-[3])','
	ds(to(1-1),3-2,[expected:id23:porcellino,main:id24:lupo,secondary:id25:lupo],decidere([id23:porcellino,id30:costruire],1,id2),after(tes(f1_po03),tes(f3_po01)),inception,1-[2])','
	ds(level(1-0),2-1,[main:id14:lupo,secondary:id3:porcellino],vivere([id14:lupo,id15:luogo],1,id2),during(tes(f2_po02),tes(f3_po01)),setting,1-[1])])'.'




== New Run 1 ==
 
 Meng brought an Ubuntu Trusty instance on AWS.
 
> 20160407-13:26:11 ubuntu@ip-172-31-1-206:~/late_getarun% lsb_release -a
> No LSB modules are available.
> Distributor ID: Ubuntu
> Description:    Ubuntu 14.04.3 LTS
> Release:        14.04
> Codename:       trusty

Meng transferred late_getaruns and the dizionari folder to the AWS
instance, and compiled the gui there.

=== Compiling the GUI from the command line ===

Given load.pl:

	main :- [ita_inits],
			[anaphoric,binding,clitsmorph,interpret,itlexicon,main_parse,newGen,newReason,reference,semantic,standardutt,tagger,tagging,temp_space,tokeniz,writemodel,parsecs,itaLex0,infls],
			[qgui],
			gui.

compiling from the command line,

    20160407-13:26:06 ubuntu@ip-172-31-1-206:~/late_getarun% swipl -p library=/usr/lib/swi-prolog/xpce/prolog/lib --goal=gui --stand_alone=true -o gui -c load

The above compilation appeared to work but running the ./gui did not
produce the desired output.

It produced the following output as it ran:

    %   swi_hooks compiled into pce_swi_hooks 0.00 sec, 9 clauses
    %  library(pce) compiled into pce 0.05 sec, 2,192 clauses
    % qgui compiled 0.05 sec, 2,236 clauses
    % autoloading prolog_codewalk:must_be/2 from /usr/lib/swi-prolog/library/error
    % autoloading prolog_debug:backtrace/1 from /usr/lib/swi-prolog/library/prolog_stack
    % autoloading prolog_source:directory_file_path/3 from /usr/lib/swi-prolog/library/filesex
    % autoloading files_ex:use_foreign_library/2 from /usr/lib/swi-prolog/library/shlib
    % autoloading pce_expansion:pce_error/1 from /usr/lib/swi-prolog/xpce/prolog/lib/swi_compatibility
    % autoloading pce_expansion:pce_info/1 from /usr/lib/swi-prolog/xpce/prolog/lib/swi_compatibility
    % autoloading pce_expansion:maplist/3 from /usr/lib/swi-prolog/library/apply
    % autoloading pce_expansion:flatten/2 from /usr/lib/swi-prolog/library/lists
    % autoloading pce_realise:pce_error/1 from /usr/lib/swi-prolog/xpce/prolog/lib/swi_compatibility
    % autoloading pce_goal_expansion:pce_error/1 from /usr/lib/swi-prolog/xpce/prolog/lib/swi_compatibility
    % autoloading qsave:current_foreign_library/2 from /usr/lib/swi-prolog/library/shlib
    % autoloading oset:reverse/2 from /usr/lib/swi-prolog/library/lists
    % autoloading quintus:maplist/3 from /usr/lib/swi-prolog/library/apply
    % autoloading quintus:date_time_value/3 from /usr/lib/swi-prolog/library/date
    % autoloading pce:pce_dispatch/1 from /usr/lib/swi-prolog/xpce/prolog/lib/pce_dispatch
    % autoloading pce_host:get/3 from /usr/lib/swi-prolog/xpce/prolog/lib/pce
    % autoloading error:assertion/1 from /usr/lib/swi-prolog/library/debug
    % autoloading record:member/2 from /usr/lib/swi-prolog/library/lists
    % autoloading user:concat_atom/3 from /usr/lib/swi-prolog/library/backcomp
    % autoloading user:send_list/3 from /usr/lib/swi-prolog/xpce/prolog/lib/pce_util
    % autoloading pce_global:gensym/2 from /usr/lib/swi-prolog/library/gensym
    % autoloading pce_global:append/3 from /usr/lib/swi-prolog/library/lists
    % autoloading files_ex:permission_error/3 from /usr/lib/swi-prolog/library/error
    % autoloading files_ex:maplist/2 from /usr/lib/swi-prolog/library/apply
    % autoloading pce_util:pce_error/1 from /usr/lib/swi-prolog/xpce/prolog/lib/swi_compatibility
    % autoloading prolog_codewalk:portray_clause/1 from /usr/lib/swi-prolog/library/listing
    % autoloading prolog_codewalk:gtrace/0 from /usr/lib/swi-prolog/xpce/prolog/lib/gui_tracer
    % autoloading prolog_codewalk:clause_info/4 from /usr/lib/swi-prolog/library/prolog_clause
    % autoloading prolog_codewalk:initialization_layout/4 from /usr/lib/swi-prolog/library/prolog_clause
    % autoloading pce_messages:get/3 from /usr/lib/swi-prolog/xpce/prolog/lib/pce
    % autoloading prolog_codewalk:clause_name/2 from /usr/lib/swi-prolog/library/prolog_clause
    % autoloading pce_host:send/2 from /usr/lib/swi-prolog/xpce/prolog/lib/pce
    % autoloading pce_portray:portray_clause/1 from /usr/lib/swi-prolog/library/listing
    % autoloading pce_principal:pce_info/1 from /usr/lib/swi-prolog/xpce/prolog/lib/swi_compatibility
    % Autoloader: iteration 1 resolved 16 predicates and loaded 34 files in 0.077 seconds.  Restarting ...
    % autoloading gui_tracer:in_pce_thread_sync/1 from /usr/lib/swi-prolog/xpce/prolog/lib/pce
    % autoloading gui_tracer:send/3 from /usr/lib/swi-prolog/xpce/prolog/lib/pce
    % autoloading gui_tracer:debug/0 from /usr/lib/swi-prolog/library/edinburgh
    % autoloading backward_compatibility:maplist/3 from /usr/lib/swi-prolog/library/apply
    % Autoloader: iteration 2 resolved 1 predicates and loaded 4 files in 0.033 seconds.  Restarting ...
    % Autoloader: loaded 17 files in 3 iterations in 0.143 seconds

The gui works when run on the 64-bit ubuntu trusty.

    20160407-13:35:22 ubuntu@ip-172-31-1-206:~/late_getarun% ./gui

Copying the binary to the workstation, which is a 12.04, does not
work due to architecture differences.

	No LSB modules are available.
	Distributor ID:	Ubuntu
	Description:	Ubuntu 12.04.5 LTS
	Release:	12.04
	Codename:	precise


=== Recompiling using qsave_program ===

Let's run the gui from within swipl and then qsave_program.

	20160407-13:49:08 ubuntu@ip-172-31-1-206:~/late_getarun% swipl
	Welcome to SWI-Prolog (Multi-threaded, 64 bits, Version 6.6.4)
	Copyright (c) 1990-2013 University of Amsterdam, VU Amsterdam
	SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software,
	and you are welcome to redistribute it under certain conditions.
	Please visit http://www.swi-prolog.org for details.

	For help, use ?- help(Topic). or ?- apropos(Word).

	?- [ita_inits].
	% ita_inits compiled 0.02 sec, 782 clauses
	true.

	?- make_demo.
	...

	?- [qgui].
	%  library(pce) compiled into pce 0.05 sec, 2,098 clauses
	% qgui compiled 0.05 sec, 2,136 clauses
	true.

	?- gui.
	true.

	?- % /home/ubuntu/late_getarun/story_porcellini_1 compiled 0.00 sec, 25 clauses


	?- qsave_program(gui2,[stand_alone=true,goal=gui]).


	############% autoloading prolog_codewalk:must_be/2 from /usr/lib/swi-prolog/library/error
	% autoloading pce_expansion:pce_error/1 from /usr/lib/swi-prolog/xpce/prolog/lib/swi_compatibility

	20160407-13:54:52 ubuntu@ip-172-31-1-206:~/late_getarun% file gui2
	gui2: ELF 64-bit LSB  executable, x86-64, version 1 (SYSV), dynamically linked (uses shared libs), for GNU/Linux 2.6.24, BuildID[sha1]=a3a58e5ab74675b04f757f027043fcc58a941871, stripped

This ./gui2 does produce the desired output when run against story_porcellini_1.



== notes from meeting [2016-04-14 Thu 13:09] ==

new goal: provide an interactive GETARUNS interface over the web.

input: something like sonnet32

output: a sequence of windows showing the output to the user.

normally the X interface has a bunch of Analyzer windows and one Model window.

a single poem would decompose into a number of separate representations ... sonnet 32 by william shakespeare.

each analysis focuses on a different aspect, like phonetics; poetic devices (rhymes, metrical feet, and acoustic length)

all of these are currently done in XPCE.

it would be nice to move this to the web.

so we just need to translate XPCE widget calls to HTML5 or SVG widgets.


goal: it would be nice to make it work in an interactive manner.
but we have to set bounds on the use. we don't want users inputting entire folios of shakespeare.
so we need to limit input. to maybe 4000 bytes.

we need to impose a format as well:

POEM      ::= TITLELINE BYLINE NEWLINE BODY
TITLELINE ::= String  "\n"
BYLINE    ::= String  "\n"
NEWLINE   ::=         "\n"
BODY      ::= String "\n" | NEWLINE | BODY*


== how it works ==

under Desktop/sparsarcode/newstart

mostly in ~inits~ or in newstart

which starts with :-assert(rete(a1)).

currently the interface loads a poem from a File specified at the command line.

we should be able to compile a myexe which we can then run with
./myexe sonnet32


sometimes 7.2 has issues with unicode.






=== getaruns ===

for an inspiration, see a similar system running on the main server:

http://project.cgm.unive.it/cgi-bin/venses/venses.pl

so this an inspiration for the SPARSAR system. if we can make it interactive in the same way.

so the user types in the poem. and gets back everything they would have gotten back in the XPCE environment.



=== compiling getaruns ===

PCE NEEDS A LIBRARY PATH TO BE SPECIFIED
20160414-16:18:28 mengwong@venice2:~/foscari/sparsarcode% swipl -p library=/opt/local/lib/swipl-7.2.3/xpce/prolog/lib --stand_alone=true -o myexe -g main -c newstart

RUN THE EXECUTABLE WITH: ./myexe -- inputfilename

