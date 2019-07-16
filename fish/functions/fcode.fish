
function fcode --description "Fuzzy search to open in vs code"
  if fzf > $TMPDIR/fzf.result
    code (cat $TMPDIR/fzf.result)
  end
end