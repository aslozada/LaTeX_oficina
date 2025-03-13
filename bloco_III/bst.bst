ENTRY
  { address
    author
    title
    journal
    year
    volume
    number
    pages
    month
    note
    key
  }

INCLUDE { author title journal year volume number pages month note }

FUNCTION {article}
{ output.bibitem
  format.authors
  " " format.title
  " " format.journal
  " " format.year
  " " format.volume
  " " format.pages
  new.block
}

FUNCTION {format.authors}
{ author empty$
    { "" }
    { author "author" format.name$ }
  if$
}

FUNCTION {format.title}
{ title empty$
    { "" }
    { title "title" format.title$ }
  if$
}

FUNCTION {format.journal}
{ journal empty$
    { "" }
    { journal "journal" format.journal$ }
  if$
}

FUNCTION {format.year}
{ year empty$
    { "" }
    { year "year" format.year$ }
  if$
}

FUNCTION {format.volume}
{ volume empty$
    { "" }
    { volume "volume" format.volume$ }
  if$
}

FUNCTION {format.pages}
{ pages empty$
    { "" }
    { pages "pages" format.pages$ }
  if$
}

FUNCTION {output.bibitem}
{ "\bibitem{" cite$ * "}" write$
}

FUNCTION {new.block}
{ newline$
}

END

