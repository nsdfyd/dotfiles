require'lspconfig'.pyls.setup{
    cmd={"pyls"},
    on_attach=require'completion'.on_attach
}
