set macligatures

set guifont=JetBrainsMonoRegularNerdFontComplete:h10
"set guifont=FiraCodeNerdFontComplete-Retina:h10
"set guifont=FiraCode-Regular:h10
"set guifont=Ubuntu\ Mono:h14

"set linespace=2
set antialias

" Don't beep
set visualbell

" Start without the toolbar
set guioptions-=T

if has("gui_macvim")
  " Fullscreen takes up entire screen
  set fuoptions=maxhorz,maxvert
end
