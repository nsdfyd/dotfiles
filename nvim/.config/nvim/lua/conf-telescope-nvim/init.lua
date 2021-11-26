require('telescope').setup{
  defaults = {
    sorting_strategy = 'ascending',
    layout_strategy = "vertical",
    layout_config={prompt_position='top'},
    layout_defaults = {
       vertical = {
         preview_height = 0.9,
         preview_width = 0.9,
      }
   }
  }
}
