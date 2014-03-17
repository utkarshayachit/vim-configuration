if exists("loaded_kitwareCopyright")
  finish
endif
let loaded_kitwareCopyright =1

function! NewFile(afile)
  let extension = fnamemodify(a:afile, ":e") 
  let classname = fnamemodify(a:afile, ":r")
  let copyright_type = inputlist(['Select Style: ', '1. VTK', '2. ParaView', '3. ParaView 3.0 (Qt)'])
  if (copyright_type == 0)
    "echo "No copyright notices added."
    return
  endif
  if (copyright_type == 1)
    " Create a VTK style file. 
    if (extension == "h")
      :0r $HOME/.vim/plugin/vtk.h
    elseif (extension == "cxx")
      :0r $HOME/.vim/plugin/vtk.cxx
    endif
    :execute ":silent! %s%\\$CLASSNAME\\$%" . classname . "%g"
  elseif (copyright_type == 2)
    " Create a ParaView Server Manager style file.
    if (extension == "h")
      :0r $HOME/.vim/plugin/vtkPV.h
    elseif (extension == "cxx")
      :0r $HOME/.vim/plugin/vtkPV.cxx
    endif
    :execute ":silent! %s%\\$CLASSNAME\\$%" . classname . "%g"
  elseif (copyright_type == 3)
    " Create a ParaView Server Manager style file.
    if (extension == "h")
      :0r $HOME/.vim/plugin/pq.h
    elseif (extension == "cxx")
      :0r $HOME/.vim/plugin/pq.cxx
    endif
    :execute ":silent! %s%\\$CLASSNAME\\$%" . classname . "%g"
  endif
endfunction

"":autocmd BufNewFile  vtk*.h 0r $HOME/.vim/plugin/vtk.h|silent execute ":%s%\\$CLASSNAME\\$%". expand("<afile>") . "%g"

:autocmd! BufNewFile  vtk*.h ks|execute "call NewFile(\"". expand("<afile>") . "\")"|'s
:autocmd! BufNewFile  vtk*.cxx ks|execute "call NewFile(\"". expand("<afile>") . "\")"|'s
:autocmd! BufNewFile  pq*.h ks|execute "call NewFile(\"". expand("<afile>") . "\")"|'s
:autocmd! BufNewFile  pq*.cxx ks|execute "call NewFile(\"". expand("<afile>") . "\")"|'s
