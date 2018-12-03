nnoremap [denite] <Nop>
nmap <Space>d [denite]

nnoremap <silent> [denite]l :<C-u>Denite line<CR>
nnoremap <silent> [denite]d :<C-u>Denite directory_mru<CR>
nnoremap <silent> [denite]r :<C-u>DeniteProjectDir directory_rec<CR>
nnoremap <silent> [denite]b :<C-u>Denite buffer:!<CR>
nnoremap <silent> [denite]f :<C-u>Denite dir_file -no-empty<CR>
nnoremap <silent> [denite]o :<C-u>Denite outline -auto-preview -no-empty<CR>
nnoremap <silent> [denite]c :<C-u>Denite change -auto-preview -no-empty<CR>
nnoremap <silent> [denite]; :<C-u>Denite command -no-empty<CR>
nnoremap <silent> [denite]q :<C-u>Denite command_history<CR>
nnoremap <silent> [denite]J :<C-u>Denite jump -auto-preview -no-empty<CR>
nnoremap <silent> [denite]ta :<C-u>Denite tag -no-empty<CR>
nnoremap <silent> [keyword]O :<C-u>DeniteCursorWord tag -auto-preview -no-empty -immediately-1<CR>
nnoremap <silent> [keyword]V :<C-u>DeniteCursorWord tag -default-action=vsplit -auto-preview -no-empty -immediately-1<CR>
nnoremap <silent> [keyword]H :<C-u>DeniteCursorWord tag -default-action=split -auto-preview -no-empty -immediately-1<CR>
nnoremap <silent> [keyword]T :<C-u>DeniteCursorWord tag -default-action=tabopen -auto-preview -no-empty -immediately-1<CR>
nnoremap <silent> [denite]k :<C-u>DeniteCursorWord tag -immediately -no-empty<CR>
nnoremap <silent> [denite]n :<C-u>Denite -resume -cursor-pos=+1 -immediately<CR>
nnoremap <silent> [denite]N :<C-u>Denite -resume -cursor-pos=-1 -immediately<CR>
nnoremap <silent> [denite]<CR> :<C-u>Denite -resume<CR>
nnoremap <silent> [denite]gl :<C-u>Denite grep -no-empty -immediately-1<CR>
nnoremap <silent> [denite]gg :<C-u>DeniteProjectDir grep -no-empty -immediately-1<CR>
nnoremap <silent> [denite]to :<C-u>DeniteCursorWord outline -auto-preview -no-empty -immediately-1<CR>
nnoremap <silent> [denite]h :<C-u>Denite curstr/altr/help -default-action=open<CR>
nnoremap <silent> [denite]th :<C-u>DeniteCursorWord help -no-empty -immediately-1<CR>
nnoremap <silent> [denite]u :<C-u>Denite file_mru -immediately<CR>
nnoremap <silent> [denite]v :<C-u>cd ~/dotfiles<CR>:<C-u>DeniteProjectDir file_rec<CR>
nnoremap <silent> [denite]D :<C-u>Denite grep:~/dotfiles::!<CR>
nnoremap <silent> [denite]F :<C-u>Denite grep:::!<CR>
nnoremap <silent> [denite]G :<C-u>DeniteProjectDir grep:::!<CR>
nnoremap <silent> [denite]p :<C-u>Denite dein<CR>
nnoremap <silent> [denite]U :<C-u>Denite namespace<CR>
nnoremap <silent> [denite]P :<C-u>call notomo#denite#add_php_use_statement()<CR>
nnoremap <expr> <silent> [denite]M notomo#denite#get_php_method_command()
nnoremap <silent> [denite]O :<C-u>Denite option<CR>
nnoremap <silent> [denite]L :<C-u>Denite dein_log<CR>
nnoremap <silent> [denite]A :<C-u>Denite alias<CR>
nnoremap <silent> [denite]b :<C-u>Denite url_bookmark<CR>
nnoremap <expr> <silent> [keyword]sg ":\<C-u>DeniteProjectDir file_rec -no-empty -immediately-1 -input=" . expand('<cword>') . "\<CR>"
nnoremap <expr> <silent> [keyword]sf ":\<C-u>DeniteBufferDir file_rec -no-empty -immediately-1 -input=" . expand('<cword>') . "\<CR>"
nnoremap <expr> <silent> [keyword]so ":\<C-u>DeniteBufferDir outline -no-empty -immediately-1 -input=" . expand('<cword>') . "\<CR>"
nnoremap <expr> <silent> [keyword]gg ":\<C-u>DeniteProjectDir grep:::" . expand('<cword>') . " -no-empty -immediately-1 \<CR>"
nnoremap <expr> <silent> [keyword]gl ":\<C-u>DeniteBufferDir grep:::" . expand('<cword>') . " -no-empty -immediately-1 \<CR>"
nnoremap <silent> [denite]s :<C-u>Denite denite_source<CR>
nnoremap <silent> [denite]K :<C-u>call notomo#denite#php_tag_jump()<CR>
nnoremap <expr> <silent> [denite]M ':<C-u>Denite url_substitute_pattern:' . escape(expand('<cWORD>'), ':') . ' -no-empty <CR>'
nnoremap <silent> [denite]go :<C-u>Denite go/src<CR>
nnoremap <silent> [denite]to :<C-u>Denite todo -immediately -default-action=tabopen<CR>
nnoremap <expr> <silent> [keyword]gs ":\<C-u>DeniteProjectDir file_rec -input=" . notomo#denite#get_splitted() . " -no-empty\<CR>"
nnoremap <silent> [denite]ts :<C-u>Denite proto_dir:filetype -default-action=tabvimfiler -immediately-1<CR>
nnoremap <silent> [denite]tm :<C-u>Denite file/rec:~/workspace/memo<CR>
