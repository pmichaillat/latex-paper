% ==== Customization ====

% ---- Index number ----

% Attach number index
FUNCTION {bst.use.number.index}
{ #0 }    % Do not use number index
% { #1 }  % Use number index

% String before number index
FUNCTION {bst.number.index.pre}
{ "[" }

% String after number index (adjustment is recommended)
FUNCTION {bst.number.index.post}
{ "]\hskip1.0em " }

% Maximum digit of number index
FUNCTION {bst.number.index.digit}
% { "1" }  % If the number of reference items < 10
{ "2" }    % If the number of reference items < 100
% { "3" }  % If the number of reference items >= 100

% ---- Adjust space & postion (for fonts other than Computer Modern) ----

% Setting for bst.number.index.digit = 1
FUNCTION {bst.number.index.bibhang.one}
{ "2.05em" }

% Setting for bst.number.index.digit = 2
FUNCTION {bst.number.index.bibhang.ten}
{ "2.55em" } 

% Setting for bst.number.index.digit = 3
FUNCTION {bst.number.index.bibhang.hund}
{ "3.05em" }

% ---- Order of references ----

% Sorting of references by authors or years
FUNCTION {bst.sort.year}
{ #0 }    % Author sorting: year is used as the sorting key after author
% { #1 }  % Chronological sorting: year is used as the sorting key before author

% Chronological order
FUNCTION {bst.reverse.year}
{ #0 }    % Normal order: from old documents to recent documents
% { #1 }  % Reverse order: from recent documents to old documents

% Sorting of references by citation order
FUNCTION {bst.no.sort}
{ #0 }      % References listed in author order
% { #1 }    % References listed in citation order

% Sorting of references by entry type (article, book, incollection etc.)
FUNCTION {bst.sort.entry.type}
{ #0 }    % References listed in author order
% { #1 }  % References listed by entry type

% Use absorder field to sort items
% Order of priority to sort items: absorder -> author -> year -> order -> month -> title, where absorder and order fields are specific to econ.bst.
FUNCTION {bst.notuse.absorder.field}
{ #0 }    % Use absorder field to sort items
% { #1 }  % Do not use absorder field to sort items

% Use order field to sort items (order field is specific to econ.bst)
FUNCTION {bst.notuse.order.field}
{ #0 }    % Use order field to sort items
% { #1 }  % Do not use order field to sort items

% ---- Author ----

% String before author
FUNCTION {bst.author.pre}
{ "" }

% String after author
FUNCTION {bst.author.post}
{ "." }

% Abbreviation of a succession of the same author's name by ----
FUNCTION {bst.use.bysame}
{ #0 }    % Abbreviation is not used
% { #1 }    % Abbreviation is used
% { #2 }    % Abbreviation is used with alternative style

% Definition of abbreviation command
FUNCTION {bst.bysame.definition}
{ "\hskip.3em \leavevmode\rule[.5ex]{3em}{.3pt}\hskip0.5em" }
% { "\leavevmode\hbox to\leftmargin{\hrulefill\,\,}" } % If you set #2 to bst.use.bysame, use this option

% Order of fist & last names of authors
FUNCTION {bst.author.name}
{ #0 }    % First author: last-first | other authors: first-last
% { #1 }	% All authors: last-first
% { #2 } % All authors: first-last

% Abbreviate first name of authors & editors
FUNCTION {bst.first.name.initial}
{ #0 }    % Full letters
% { #1 }    % Initial letter only

% String used to separate author names in references (two authors)
% String replacing _ in "Prof. A _ Prof. B "
FUNCTION {bst.and}
{ ", and " }

% String used to separate author names in references (more than two authors)
% String replacing _ in "Prof. A, Prof. B _ Prof. C"
FUNCTION {bst.ands}
{ ", and " }

% String used to separate author names in citations (two authors)
% String replacing _ in "Prof. A _ Prof. B "
FUNCTION {bst.cite.and}
{ " and " }

% String used to separate author names in citations (more than two authors)
% String replacing _ in "Prof. A, Prof. B _ Prof. C"
FUNCTION {bst.cite.ands}
{ ", and " }

% Author names in citations are abbreviated if the number of authors >= bst.and.others.num
FUNCTION {bst.and.others.num}
{ #4 }

% Strings used when abbreviating multiple authors in citations
FUNCTION {bst.and.others}
{ " et~al." }

% ---- Title ----

% Decapitalize strings in title
FUNCTION {bst.title.lower.case}
{ #0 }    % Do not decapitalize title
% { #1 }   % Decapitalize title

% Hide title filed
FUNCTION {bst.hide.title}
{ #0 }    % Title field is displayed
% { #1 }  % Title field is hidden 

% String before title
FUNCTION {bst.title.pre}
{ "``" }

% String after title
FUNCTION {bst.title.post}
{ ".''" }

% String before book title
FUNCTION {bst.book.pre}
{ " \textit{" }

% String after book title
FUNCTION {bst.book.post}
{ "}." }

% ---- Year ----

% Position of year
FUNCTION {bst.year.position}
{ #0 }    % Right after author
% { #1 }  % Article: at the end | Nonarticle: at the end, before note field
% { #2 }  % Article: after journal name | Nonarticle: at the end, before note field
% { #3 }  % Article: after volume | Nonarticle: at the end, before note field

% String before year only for articles
FUNCTION {bst.year.pre}
{ " " }

% String after year only for articles
FUNCTION {bst.year.post}
{ ". " }

% String after year for nonarticles (book, incollection)
FUNCTION {bst.year.na.pre}
{ " " }

% String after year for nonarticles (book, incollection)
FUNCTION {bst.year.na.post}
{ ". " }

% ---- Month ----

% Hide month
FUNCTION {bst.hide.month}
% { #0 }  % Show month field
{ #1 }    % Hide month field

% String before month
FUNCTION {bst.month.pre}
{ ", " }

% String after month
FUNCTION {bst.month.post}
{ "" }

% ---- Booktitle & collection ----

% String before booktitle
FUNCTION {bst.btitle.pre}
{ " \textit{" }

% String after booktitle
FUNCTION {bst.btitle.post}
{ "}," }

% String for "in" collection
FUNCTION {bst.in}
{ " In " }

% ---- Journal name ----

% String before journal name
FUNCTION {bst.journal.pre}
{ " \textit{" }

% String after journal name
FUNCTION {bst.journal.post}
{ "}" }

% ---- Editor ----

% String used to separate editor names in references (two editors)
% String replacing _ in "Prof. A _ Prof. B "
FUNCTION {bst.editor.and}
{ " and " }

% String used to separate editor names in references (more than two editors)
% String replacing _ in "Prof. A, Prof. B _ Prof. C"
FUNCTION {bst.editor.ands}
{ ", and " }

% String that indicates multiple editors
FUNCTION {bst.editors}
{ " edited " }

% String that indicates single editor
FUNCTION {bst.editor}
{ " edited " }

% Order of editor & booktitle in incollection & inproceedings
FUNCTION {bst.editor.btitle.order}
{ #1 }		% booktitle -> editors 
% { #0 }    % editors -> booktitle

% ---- Edition ----

% String before edition
FUNCTION {bst.edition.pre}
{ " " }

% String after edition
FUNCTION {bst.edition.post}
{ " ed." }

% ---- Volume ----

% String before journal volume
FUNCTION {bst.volume.pre}
{ " " }

% String before book volume
FUNCTION {bst.bvolume.pre}
{ ", vol. " }

% String after volume
FUNCTION {bst.volume.post}
{ "" }

% ---- Issue number ----

% Hide issue number
FUNCTION {bst.hide.number}
{ #0 }    % Show issue number
% { #1 }    % Hide issue number

% String before issue number
FUNCTION {bst.number.pre}
{ " (" }

% String after issue number
FUNCTION {bst.number.post}
{ ")" }

% ---- Chapter ----

% String before chapter
FUNCTION {bst.chapter.pre}
{ ", chap." }

% String after chapter
FUNCTION {bst.chapter.post}
{ "" }

% ---- Page ----

% String before page (multiple pages)
FUNCTION {bst.pages.pre}
{ ": " }

% String before page (single page)
FUNCTION {bst.page.pre}
{ ": " }

% String before page in books & collections (multiple pages)
FUNCTION {bst.bpages.pre}
{ ", " }

% String before page in books & collections (single page)
FUNCTION {bst.bpage.pre}
{ ", " }

% String after page (multiple pages)
FUNCTION {bst.pages.post}
{ "" }

% String after page (single page)
FUNCTION {bst.page.post}
{ "" }

% ---- Address ----

% String before address
FUNCTION {bst.address.pre}
{ ". " }

% String after address
FUNCTION {bst.address.post}
{ "" }

% Order of address & publisher
FUNCTION {bst.address.position}
{ #0 }    % Address before publisher
% { #1 }    % Address after publisher 

% ---- Publisher ----

% String before publisher
FUNCTION {bst.publisher.pre}
{ ": " }

% String after publisher
FUNCTION {bst.publisher.post}
{ "" }

% ---- Series ----

% String before series
FUNCTION {bst.series.pre}
{ ", " }

% String after series
FUNCTION {bst.series.post}
{ "" }

% ---- Organization ----

% String before organization
FUNCTION {bst.organization.pre}
{ ", " }

% String after organization
FUNCTION {bst.organization.post}
{ "" }

% ---- School ----

% String before school
FUNCTION {bst.school.pre}
{ ", " }

% String after school
FUNCTION {bst.school.post}
{ "" }

% ---- Institution ----

% String before institution
FUNCTION {bst.institution.pre}
{ ", " }

% String after institution
FUNCTION {bst.institution.post}
{ "" }

% ---- Howpublished ----

% String before howpublished
FUNCTION {bst.howpublished.pre}
{ " " }

% String after howpublished
FUNCTION {bst.howpublished.post}
{ "" }

% ---- URL ----

% Show or hide url
FUNCTION {bst.show.url}
% { #0 }    % Do not show url field
{ #1 }    % Show url field

% String before url
FUNCTION {bst.url.pre}
{ ". \url{" }

% String after url
FUNCTION {bst.url.post}
{ "}" }

% ---- Access date for URL (if "access" field is present) ----

% String before access
FUNCTION {bst.access.pre}
{ ", accessed on " }

% String after access
FUNCTION {bst.access.post}
{ "" }

% ----  DOI (if "doi" field is present) ----

% Show or hide DOI
FUNCTION {bst.show.doi}
{ #0 }    % Do not show DOI field
% { #1 }    % Show DOI field

% String before DOI
FUNCTION {bst.doi.pre}
{ ". \url{https://doi.org/" }
% { ", \href{https://doi.org/" doi * "}{\urlstyle{rm} \nolinkurl{" * }  % Original string in econ.bst

% String after DOI
FUNCTION {bst.doi.post}
{ "}" }
% { "}}" }    % Original string in econ.bst


% ---- Other functions ----

% String before note
FUNCTION {bst.note.pre}
{ ". " }

% String after note
FUNCTION {bst.note.post}
{ "" }

% String that represents Technical report
FUNCTION {bst.techrep}
{ "Technical report" }

% String that represents master thesis
FUNCTION {bst.mthesis}
{ " Master's thesis" }

% String that represents phd thesis
FUNCTION {bst.phdthesis}
{ " PhD dissertation" }

% ==== .BST code ====

FUNCTION {bst.first}
{ "1st" }

FUNCTION {bst.second}
{ "2nd" }

FUNCTION {bst.third}
{ "3rd" }

FUNCTION {bst.fourth}
{ "4th" }

FUNCTION {bst.fifth}
{ "5th" }

FUNCTION {bst.st}
{ "st" }

FUNCTION {bst.nd}
{ "nd" }

FUNCTION {bst.rd}
{ "rd" }

FUNCTION {bst.th}
{ "th" }


% ---- Memo about function definition ----
%
% "a" 'b := indicates substituting string "a" for variable b.
% Note that integer number is expressed as # + integer in bst file.
%
% FUNCTION {name}
% { 's :=
%
% }
%
% This is the definition of a function named "name".   The function "name" is
% used in the following way 
%
% "foo" name
% "foo" is an argument for the function "name".
%
% About the definition of a function with more than two arguments, see the
% definition of "chop.word".
%


ENTRY

% Declaration of field
{ access address author booktitle chapter doi edition editor howpublished
  institution journal key month note number organization pages publisher
  school series title type url volume year

  % Fields specific to econ.bst
  order absorder
}

% Definition of entry variable.  The entry variable is a variable which has different values according to different entries.

% Integer entry variable:
{ order.cited }

% String entry variable
{ label cyear flabel alabel extra.label sort.label sort.label.abb
  extra.label.bysame }

% ---- Explanation of variables ----
%
% alabel: author (editor) name (abbreviated form) used for citation part.
% Not used for reference part.
%
% flabel: author (editor) name (full name form) used for citation part.
% Not used for reference part.
%
% sort.label: author (editor) name (full name form) used for sorting
% entries (NB: this is not used for sorting in the current code).
%
% sort.label.abb: author (editor) name (abbreviated form) used for sorting
% entries.
%
% sort.key$: key used for sorting entries.
% It usually has the string of author - year - title - month.
% 

% ---- Declaration of variables ----

% String global variables:
STRINGS { s t tt }
STRINGS { year.num }
STRINGS { preone preten }
STRINGS { last.sort.label next.extra prev.author prev.author.aer this.author }
STRINGS { hang }
STRINGS { item.type }
STRINGS { tempa tempb }

% Integer global variables:
INTEGERS { nameptr namesleft numnames name.num }
INTEGERS { multiresult }
INTEGERS { index }
INTEGERS { len }
INTEGERS { last.extra.num }
INTEGERS { output.state before.all mid.sentence after.sentence after.block }
INTEGERS { last.period.comma }
INTEGERS { len1.aer len2.aer i.aer }

% ---- Definition of functions ----

FUNCTION {not}
{   { #0 }
    { #1 }
  if$
}

FUNCTION {and}
{   'skip$
    { pop$ #0 }
  if$
}

FUNCTION {or}
{   { pop$ #1 }
    'skip$
  if$
}

% ---- Initialize variables ----

FUNCTION {init.state.consts}
{ #0 'before.all :=
  #1 'mid.sentence :=
  #2 'after.sentence :=
  #3 'after.block :=
}

% ---- Remove comma and add period ----

FUNCTION {add.period.x}
{ duplicate$
  #-1 #1 substring$ "," =
    { #-2 global.max$ substring$ "." * }
    { duplicate$
      #-1 #2 substring$ ". " =
        { #-3 global.max$ substring$ "." * }
        { duplicate$
          #-1 #2 substring$ ", " =
            { #-3 global.max$ substring$ "." * }
            { duplicate$
              #-1 #2 substring$ ",'" =
                { #-3 global.max$ substring$ ".'" * }
                { duplicate$
                  #-1 #2 substring$ ".'" =
                    { #-3 global.max$ substring$ ".'" * }
                    { duplicate$
                      #-1 #2 substring$ ".~" =
                        { #-3 global.max$ substring$ ".~" * }
                        { duplicate$
                          #-1 #2 substring$ ",~" =
                            { #-3 global.max$ substring$ ".~" * }
                            { duplicate$
                              #-1 #3 substring$ ",''" =
                                { #-4 global.max$ substring$ ".''" * }
                                { duplicate$
                                  #-1 #3 substring$ ".''" =
                                    { #-4 global.max$ substring$ ".''" * }
                                    { add.period$ }
                                  if$
                                }
                              if$
                            }
                          if$
                        }
                      if$
                    }
                  if$
                }
              if$
            }
          if$
        }
      if$
    }
  if$
}

FUNCTION {output.nonnull}
{ 's :=
  % mid.sentence
  output.state mid.sentence =
    { ", " * write$ }
    % not mid.sentence
    { output.state after.block =
        % after.block
        { add.period.x " " * write$ }
        % before.all
        { output.state before.all =
            'write$
            { add.period.x " " * write$ }
          if$
        }
      if$
      % not mid.sentence, set to mid.sentence
      mid.sentence 'output.state :=
    }
  if$
  s
}

% If the last character is period or comma, set non-zero to last.period.comma
FUNCTION {period.comma.p}
{ duplicate$ 't :=
  t #-1 #1 substring$ "." = 
  t #-1 #1 substring$ "," = or
  t #-1 #1 substring$ ":" = or 
  t #-1 #2 substring$ ".'" = or
  t #-1 #2 substring$ ",'" = or
  t #-1 #3 substring$ ".''" = or
  t #-1 #3 substring$ ",''" = or
  t #-1 #2 substring$ ".~" = or
  t #-1 #2 substring$ ",~" = or
    { #1 'last.period.comma := }
    { #0 'last.period.comma := }
  if$
}

% Remove unnecessary comma
FUNCTION {remove.pre.comma}
{ 's :=
  s empty$
    { "" }
    { s #1 #1 substring$ "," = 
       { s #2 global.max$ substring$ }
       { s #1 #1 substring$ "." = 
          { s #2 global.max$ substring$ }
          's
         if$
       }
      if$
    }
  if$
}

% Output.nonnull.nocomma is the same as output.nonnull except that it does not add commas even in mid.sentence
FUNCTION {output.nonnull.nocomma}
{ 's :=
  output.state mid.sentence =
    % mid.sentence
    { period.comma.p "" * write$ }

    % not mid.sentence
    { output.state after.block =
        % after.block
        { add.period.x " " * write$ }
        % before.all
        { output.state before.all =
            'write$
            { add.period$ " " * write$ }
          if$
        }
      if$
      mid.sentence 'output.state :=
    }
  if$
  last.period.comma #0 =
    { s }
    { s remove.pre.comma }
  if$
}

FUNCTION {output.nocomma}
{ duplicate$ empty$
    'pop$
    'output.nonnull.nocomma
  if$
}

FUNCTION {output.check.nocomma}
{ 't :=
  duplicate$ empty$
    { pop$ "empty " t * " in " * cite$ * warning$ }
    'output.nonnull.nocomma
  if$
}

% ---- Add period and newline ----

FUNCTION {fin.entry}
{ add.period.x
  write$
  newline$
}

FUNCTION {new.block}
{ output.state before.all =
    'skip$
    { after.block 'output.state := }
  if$
}

FUNCTION {new.sentence}
{ output.state after.block =
    'skip$
    { output.state before.all =
        'skip$
        { after.sentence 'output.state := }
      if$
    }
  if$
}

FUNCTION {new.block.check}
{ empty$
    'skip$
    'new.block
  if$
}

FUNCTION {field.or.null}
{ duplicate$ empty$
    { pop$ "" }
    'skip$
  if$
}

% ---- Booktitle ----

FUNCTION {format.btitle}
{ booktitle empty$
    { "" }
    { bst.btitle.pre booktitle * bst.btitle.post * }
  if$
}

% ---- Journal ----

FUNCTION {format.journal}
{ journal empty$
    { "" }
    { bst.journal.pre journal * bst.journal.post * }
  if$
}

% ---- Title for book ----

FUNCTION {format.book}
{ title empty$
    { "" }
    { bst.book.pre title * bst.book.post * }
  if$
}

% ---- URL ----

FUNCTION {format.url}
{ url empty$
    { "" }
    { type$ "online" = bst.show.url or
        { bst.url.pre * url * bst.url.post *
          access empty$
             { "" * }
             { bst.access.pre * access * bst.access.post * }
          if$
        }
        { "" }
      if$
    }
  if$
}

% ---- DOI ----

FUNCTION {format.doi}
{ doi empty$ bst.show.doi not or
    { "" }
    { bst.doi.pre doi * bst.doi.post * }
  if$
}

% ---- Author and editor ----

% Name
FUNCTION {format.names}
{ 's :=
  % insert 1 to nameptr.
  #1 'nameptr :=
  % Set the number of authors to numnames
  s num.names$ 'numnames :=
  numnames 'namesleft :=
  % Repeat if namesleft > 0
  { namesleft #0 > }
  {  nameptr #1 =
     % First author
     { bst.author.name #0 =
       bst.author.name #1 =
       or
          { bst.first.name.initial #0 = 
  	   { s nameptr "{vv~}{ll}{, ff}{, jj}" format.name$ 't := }
  	   { s nameptr "{vv~}{ll}{, f.}{, jj}" format.name$ 't := }
  	  if$
  	}
          { bst.first.name.initial #0 = 
             { s nameptr "{ff~}{vv~}{ll}{, jj}" format.name$ 't := }
             { s nameptr "{f.~}{vv~}{ll}{, jj}" format.name$ 't := }
  	  if$
  	}
       if$
     }
     % Second or later authors
     { bst.author.name #0 =
       bst.author.name #2 =
       or
          { bst.first.name.initial #0 = 
             { s nameptr "{ff~}{vv~}{ll}{, jj}" format.name$ 't := }
             { s nameptr "{f.~}{vv~}{ll}{, jj}" format.name$ 't := }
  	 if$
          }
          { bst.first.name.initial #0 = 
               { s nameptr "{vv~}{ll}{, ff}{, jj}" format.name$ 't := }
               { s nameptr "{vv~}{ll}{, f.}{, jj}" format.name$ 't := }
  	 if$
          }
       if$
     }
    if$

    nameptr #1 >
      % Second or later authors
      { namesleft #1 >
          { ", " * t * }
          { t "others" =
              { bst.and.others * }
              { numnames #2 =
		   { bst.and * t * }
		   { bst.ands * t * }
      	  if$
      	}
            if$
          }
        if$
      }
      't
    if$
    nameptr #1 + 'nameptr :=
    namesleft #1 - 'namesleft :=
  }
  while$
}

% Editor
FUNCTION {format.editornames}
{ 's :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { bst.first.name.initial #0 = 
        { s nameptr "{ff~}{vv~}{ll}{, jj}" format.name$ 't := }
        { s nameptr "{f.~}{vv~}{ll}{, jj}" format.name$ 't := }
      if$
      nameptr #1 >
        % If there are multiple editors
        { namesleft #1 >
            { ", " * t * }
            { t "others" =
                { bst.and.others * }
                { numnames #2 =
                    { bst.editor.and  * t * }
                    { bst.editor.ands * t * }
                  if$
                }
              if$
            }
          if$
        }
        't
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
}

% Remove successive periods (commas) from author
FUNCTION {remove.ss.period.auth}
{ 's :=
  s format.names 'tempa :=
  bst.author.post 'tempb :=
  tempb #1 #1 substring$ "}" =
    { tempa tempb * }
    { tempa #-1 #1 substring$ tempb #1 #1 substring$ = 
        { tempa tempb #2 global.max$ substring$ * }
        { tempa tempb * }
      if$
    }
  if$
}

% <prev name list> <new name list> compare.names <modified name list>
FUNCTION {compare.names.aer}
{ 's :=
  'tempa :=
  tempa num.names$ 'len1.aer :=  % len1 = the number of previous authors
  s num.names$ 'len2.aer :=         % len2 = the number of current authors
% len1.aer := min(len1.aer,len2.aer)
% len1 -> min{ the number of previous authors, the number of current authors }
  len1.aer len2.aer >
    { len2.aer 'len1.aer := }
    { }
  if$

% Start with an empty string, then while the components are the same add "\bysame"
  ""
  #1 'i.aer :=

  { i.aer len1.aer > not }
    { tempa i.aer "{ff }{vv }{ll}{ jj}" format.name$
      s i.aer "{ff }{vv }{ll}{ jj}" format.name$
      =
        { #1 i.aer <
            { " and " * }       % \bysame ‚ÅÈ—ª‚·‚é’˜ŽÒ‚Ì‘O‚É‚Â‚­ and 
            { }
          if$
          "\bysame{}" *
          i.aer #1 + 'i.aer := } 
        { #-1 'len1.aer := }
      if$
    }
  while$

% Add the rest of the second string
  { i.aer len2.aer > not }
    { #1 i.aer <
        { " and " * }
        { }
      if$
      s i.aer "{ff }{vv }{ll}{ jj}" format.name$ *
      i.aer #1 + 'i.aer :=
    }
  while$
}

% Author
FUNCTION {format.authors}
{ author empty$
    { "" }
    { bst.use.bysame #2 =
        { prev.author.aer author compare.names.aer 's :=
          author 'prev.author.aer := }
        { author 's := }
      if$
      extra.label.bysame "bysame" =
        { "\bysame " }
        { bst.author.pre s remove.ss.period.auth * }
      if$
    }
  if$
}

% Editor
FUNCTION {format.editors}
{ editor empty$
    { "" }
    { bst.use.bysame #2 =
        { prev.author.aer editor compare.names.aer 's :=
          editor 'prev.author.aer := }
        { editor 's := }
      if$
      extra.label.bysame "bysame" =
        { "\bysame " }
        { bst.author.pre s remove.ss.period.auth * }
      if$
      s num.names$ #1 >
       { bst.editors * }
       { bst.editor * }
      if$
    }
  if$
}

% Author (alternative)
FUNCTION {format.authors.alt}
{ author empty$
    { "" }
    { extra.label.bysame "bysame" =
        {"\bysame "}
        { bst.author.pre author remove.ss.period.auth * }
      if$
    }
  if$
}

% Editor (alternative)
FUNCTION {format.editors.alt}
{ editor empty$
    { "" }
    { extra.label.bysame "bysame" =
        { "\bysame " }
        { bst.author.pre editor remove.ss.period.auth * }
      if$
      editor num.names$ #1 >
       { bst.editors * }
       { bst.editor * }
      if$
    }
  if$
}

% Format.in.ed.booktitle
FUNCTION {format.editors.x}
{ editor empty$
    { "" }
    { bst.editor.btitle.order #0 =
        { "" }
        { editor num.names$ #1 >
           { bst.editors " by " * }
           { bst.editor  " by " * }
          if$
        }
      if$
      editor format.editornames *
      bst.editor.btitle.order #0 =
        { editor num.names$ #1 >
           { bst.editors * }
           { bst.editor * }
          if$
        }
        { "" * }
      if$
    }
  if$
}

% Remove commas in the cases like "?." and "?,".
FUNCTION {remove.irrelevant.period.comma}
{ 's :=
  s empty$
    { "" }
    { s #-1 #3 substring$ "?,'" =
      s #-1 #3 substring$ "?.'" = or
        { s #-3 global.max$ substring$ "'" * }
	{ s #-1 #4 substring$ "?,''" =
          s #-1 #4 substring$ "?.''" = or
            { s #-4 global.max$ substring$ "''" * }
	    { s #-1 #2 substring$ "?," =
              s #-1 #2 substring$ "?." = or
                { s #-2 global.max$ substring$ "" * }
                { s #-1 #3 substring$ "?,~" =
                  s #-1 #3 substring$ "?.~" = or
                    { s #-4 global.max$ substring$ "?~" * }
                    's
                  if$
                }
	      if$
            }
          if$
        }
      if$
    }
  if$
}


% ---- Title ----

% Title
FUNCTION {format.title.sub}
{ bst.title.lower.case #0 =
     { bst.title.pre title * bst.title.post * }
     { bst.title.pre title "t" change.case$ * bst.title.post * }
  if$
}

% Title
FUNCTION {format.title}
{ title empty$
  bst.hide.title #0 = not or
    { "" }
    { format.title.sub remove.irrelevant.period.comma }
  if$
}

% Title for misc.
FUNCTION {format.misc.title}
{ title empty$
    { "" }
    { bst.title.pre title * bst.title.post * remove.irrelevant.period.comma}
  if$
}

% ---- Year ----

FUNCTION {format.year}
{ year empty$
    { "there's no year in " cite$ * warning$
      ", " }
    { type$ "article" =
        { bst.year.pre year * extra.label * bst.year.post * }
        { bst.year.na.pre year * extra.label * bst.year.na.post * }
      if$
    }
  if$
}

% ---- Pages ----

% Convert "-" to "--" (for pages field)
FUNCTION {n.dashify}
{ 't :=
  ""
  { t empty$ not }
  { t #1 #1 substring$ "-" =
      { t #1 #2 substring$ "--" = not
          { "--" *
            t #2 global.max$ substring$ 't :=
          }
          { { t #1 #1 substring$ "-" = }
            { "-" *
              t #2 global.max$ substring$ 't :=
            }
            while$
          }
        if$
      }
      { t #1 #1 substring$ *
       t #2 global.max$ substring$ 't :=
      }
    if$
  }
  while$
}

% Page for book
FUNCTION {format.book.pages}
{ pages empty$
    { "" }
    { bst.pages.pre pages * bst.pages.post * }
  if$
}

% Attach tie for the string with two or less characters.
FUNCTION {tie.or.space.connect}
{ duplicate$ text.length$ #3 <
    { "~" }
    { " " }
  if$
  swap$ * *
}

FUNCTION {either.or.check}
{ empty$
    'pop$
    { "can't use both " swap$ * " fields in " * cite$ * warning$ }
  if$
}

% ---- Volume, number, series ----

% Volume for book
FUNCTION {format.bvolume}
{ volume empty$
    { "" }
    { bst.bvolume.pre volume * bst.volume.post *
      series empty$
        'skip$
        % If there is series field
        { " of " * series * bst.series.post * }
      if$
% "volume and number" number either.or.check
    }
  if$
}

% Series
FUNCTION {output.series}
{ series empty$
    { "" }
    { bst.series.pre series * bst.series.post * }
 if$
}

% Number and series
FUNCTION {format.number.series}
{ volume empty$
    { number empty$
      bst.hide.month #0 = not or
        % number is empty
        { series empty$
            { "" }
            % series is not empty.
            { output.series }
          if$
        }
        % number is not empty$
        { series empty$
            { bst.number.pre number * bst.number.post * }
            % series is not empty.
            { bst.in bst.series.pre * series * bst.series.post *
              bst.number.pre * number * bst.number.post * }
          if$
        }
      if$
    }
    { "" }
  if$
}

% Number or not.
FUNCTION {is.num}
{ chr.to.int$
  duplicate$ "0" chr.to.int$ < not
  swap$ "9" chr.to.int$ > not and
}

FUNCTION {extract.num}
{ duplicate$ 't :=
  "" 's :=
  { t empty$ not }
  { t #1 #1 substring$
    t #2 global.max$ substring$ 't :=
    duplicate$ is.num
      { s swap$ * 's := }
      { pop$ "" 't := }
    if$
  }
  while$
  s empty$
    'skip$
    { pop$ s }
  if$
}

% ---- Edition ----

% Convert edition to 1st, 2nd, 3rd, 4th etc
FUNCTION {eng.ord}
{ duplicate$ "1" swap$ *
  #-2 #1 substring$ "1" =
     { bst.th * }
     { duplicate$ #-1 #1 substring$
       duplicate$ "1" =
         { pop$ bst.st * }
         { duplicate$ "2" =
             { pop$ bst.nd * }
             { "3" =
                 { bst.rd * }
                 { bst.th * }
               if$
             }
           if$
          }
       if$
     }
   if$
}

% Convert first, second etc in edition field to 1st, 2nd (from jfm.bst)
FUNCTION {convert.edition}
{ edition extract.num "l" change.case$ 's :=
  s "first" = s "1" = or
    { bst.first }
    { s "second" = s "2" = or
        { bst.second }
        { s "third" = s "3" = or
            { bst.third }
            { s "fourth" = s "4" = or
                { bst.fourth }
                { s "fifth" = s "5" = or
                    { bst.fifth }
                    { s #1 #1 substring$ is.num
                        { s eng.ord }
                        { edition }
                      if$
                    }
                  if$
                }
              if$
            }
          if$
        }
      if$
    }
  if$
}

% Edition
FUNCTION {format.edition}
{ edition empty$
    { "" }
    { output.state mid.sentence =
        { bst.edition.pre convert.edition "l" change.case$ * bst.edition.post * }
        { bst.edition.pre convert.edition "t" change.case$ * bst.edition.post * }
      if$
    }
  if$
}

% ---- Dates ----

% Month
FUNCTION {format.month}
{ month empty$
  bst.hide.month #0 = not or
    { "" }
    { bst.month.pre month * bst.month.post * }
  if$
}

% Year and month
FUNCTION {format.date}
{ format.month format.year *
}

% ---- Pages ----

% Is multiple pages like 1-100?
FUNCTION { multi.page.check }
{ 't :=
  #0 'multiresult :=
    { multiresult not
      t empty$ not
      and
    }
    { t #1 #1 substring$
      duplicate$ "-" =
      swap$ duplicate$ "," =
      swap$ "+" =
      or or
        { #1 'multiresult := }
        { t #2 global.max$ substring$ 't := }
      if$
    }
  while$
  multiresult
}

% Pages
FUNCTION {format.pages}
{ pages empty$
    { "" }
    { pages multi.page.check
      { bst.pages.pre pages n.dashify tie.or.space.connect * bst.pages.post }
      { bst.page.pre pages tie.or.space.connect * bst.page.post }
     if$
    }
 if$
}

FUNCTION {format.bpages}
{ pages empty$
    { "" }
    { pages multi.page.check
      { bst.bpages.pre pages n.dashify tie.or.space.connect * bst.pages.post }
      { bst.bpage.pre pages tie.or.space.connect * bst.page.post }
     if$
    }
 if$
}

% Number
FUNCTION {format.number}
{ number empty$
  bst.hide.number #0 = not or
    { "" }
    { bst.number.pre number * bst.number.post * }
  if$
}

% Volume
FUNCTION {format.volume}
{ volume empty$
    'skip$
    { bst.volume.pre volume * bst.volume.post *
      bst.year.position #3 =
        { format.year * }
        'skip$
      if$
    }
  if$
}

% Number, page
FUNCTION {format.number.pages}
{ format.number format.pages * }

% Volume, page
FUNCTION {format.volume.pages}
{ format.volume format.pages * }

% Volume, number, page
FUNCTION {format.volume.number.pages}
{ format.volume format.number * format.pages * }

% volume, number, page
FUNCTION {format.vol.num.pages}
{ volume empty$
    % Volume is empty
    { number empty$
        % Number is empty
        { pages empty$
            % warning
            { "there is no volume, number, and pages in " cite$ * warning$ "" } 
            { "" format.pages * }
         if$
        }
        % Number is not empty
        % warning
        { "there's a number but no volume in " cite$ * warning$
          format.number.pages }
     if$
    }
    % Volume is not empty
    { number empty$
        % Number is empty
        { format.volume.pages }
        % Number is not empty
        { format.volume.number.pages }
     if$
    }
  if$
}

% Chapter
FUNCTION {format.chapter}
{ chapter empty$
    { "" }
    { type empty$
        { bst.chapter.pre chapter tie.or.space.connect * bst.chapter.post }
        { ", " * type " " * chapter * }
      if$
    }
  if$
}

% Chapter, pages
FUNCTION {format.chapter.pages}
{ chapter empty$
    { pages empty$
        { "" }
        { "" format.bpages * }
      if$
    }
    { pages empty$
        { "" format.chapter * }
        { "" format.chapter * format.bpages * }
      if$
    }
  if$
}

% Editor and booktitle
FUNCTION {format.in.ed.booktitle}
{ booktitle empty$
    { "" }
    { editor empty$
        { bst.in format.btitle * }
        { bst.editor.btitle.order #0 =
            { bst.in format.editors.x * " " * format.btitle * }
            { bst.in format.btitle * " " * format.editors.x * }
          if$
        }
      if$
    }
  if$
}

% Howpublished
FUNCTION {format.howpublished}
{ howpublished empty$
    { "" }
    { bst.howpublished.pre howpublished * bst.howpublished.post * }
  if$
}

% Address
FUNCTION {format.address}
{ address empty$
    { "" }
    { bst.address.pre address * bst.address.post * }
  if$
}

% Publisher
FUNCTION {format.publisher}
{ publisher empty$
    { "" }
    { bst.publisher.pre publisher * bst.publisher.post * }
  if$
}

% Organization
FUNCTION {format.organization}
{ organization empty$
    { "" }
    { bst.organization.pre organization * bst.organization.post * }
  if$
}

% Publisher and address
FUNCTION {output.publisher.address}
{ address empty$
    { format.publisher "publisher" output.check.nocomma }
    { bst.address.position #0 = 
        { format.address output.nocomma
          format.publisher "publisher" output.check.nocomma }
        { format.publisher "publisher" output.check.nocomma
          format.address output.nocomma }
      if$
    }
  if$
}

% Address, organization, publisher
FUNCTION {output.address.organization.publisher}
{ address empty$
    % Address is empty
    { organization empty$
        % Organization is empty
        { publisher empty$
            'skip$
            { format.publisher "publisher" output.check.nocomma }
          if$
        }
        % Organization is not empty
        { publisher empty$
            { format.organization "organization" output.check.nocomma }
            { format.organization "organization" output.check.nocomma
              format.publisher "publisher" output.check.nocomma }
          if$
        }
     if$
    }
    % Address is not empty
    { organization empty$
        % Organization is empty
        { publisher empty$
            % Publisher is empty
            { format.address output.nocomma }
            % Publisher is not empty
            { bst.address.position #0 =
                { format.address output.nocomma
                  format.publisher "publisher" output.check.nocomma }
                { format.publisher "publisher" output.check.nocomma
                  format.address output.nocomma }
              if$
            }
         if$
        }
        % Organization is not empty
        { publisher empty$
            % Publisher is empty
            { format.organization "organization" output.check.nocomma
              format.address output.nocomma }
            % Publisher is not empty
            { format.organization "organization" output.check.nocomma
              bst.address.position #0 = 
                { format.address output.nocomma
                  format.publisher "publisher" output.check.nocomma }
                { format.publisher "publisher" output.check.nocomma
                  format.address output.nocomma }
              if$
            }
         if$
        }
     if$
    }
  if$
}

% Misc
FUNCTION {empty.misc.check}
{ author empty$ title empty$ howpublished empty$
  month empty$ year empty$ note empty$
  and and and and and
  key empty$ not and
    { "all relevant fields are empty in " cite$ * warning$ }
    'skip$
  if$
}

FUNCTION {format.thesis.type}
{ type empty$
    'skip$
    { pop$ " " type * }
  if$
}

FUNCTION {format.tr.number}
{ type empty$
    { "" }
    % { bst.techrep }
    { " " type * }
  if$
  number empty$
    { "t" change.case$ }
    { number tie.or.space.connect }
  if$
}

% Phdthesis
FUNCTION {format.phd}
{ bst.phdthesis }

% Mastersthesis
FUNCTION {format.mthesis}
{ bst.mthesis }

% School
FUNCTION {format.school}
{ school empty$
    { "" }
    { bst.school.pre school * bst.school.post * }
  if$
}

% Institution
FUNCTION {format.institution}
{ institution empty$
    { "" }
    { bst.institution.pre institution * bst.institution.post * }
  if$
}

% Remove first ? characters.
FUNCTION {chop.word}
{ 's :=
  'len :=
  s #1 len substring$ =
    { s len #1 + global.max$ substring$ }
    's
  if$
}

FUNCTION {format.note}
{ note empty$
    { "" }
    { bst.note.pre note * bst.note.post * }
  if$
}

% ---- \havarditem ----

FUNCTION {output.bibitem}
{ newline$
  "\harvarditem[" write$
  alabel write$                 % alabel <- abbreviated citation
  "]{" write$
  flabel write$                 % flabel <- full citation
  "}{" write$
  cyear write$
  % cyear = year
  "}{" write$
  cite$ write$                  % cite$ -> pusch keyword
  "}" write$
  % If number index is on
  bst.use.number.index #0 =
     'skip$
     { index #1 + 'index :=
       "" 'preone :=
       "" 'preten :=
       bst.number.index.digit "1" =
         'skip$
         { bst.number.index.digit "2" =
           { "\hskip0.5em" 'preone := }
           { bst.number.index.digit "3" =
              { "\hskip1em" 'preone :=
                "\hskip0.5em" 'preten := }
              'skip$
             if$
           }
         if$
         }
       if$  
     }
  if$
  newline$
  before.all 'output.state :=
  ""
  % number index
  bst.use.number.index #0 =
     'skip$
     { index #10 <
         % Insert spaces according to digit of number index.
         { preone }
         { index #100 <
             { preten }
             { "" }
           if$
         }
       if$
       bst.number.index.pre * index int.to.str$ * bst.number.index.post * write$
     }
 if$
}

% ---- Article ----

FUNCTION {article}
{ output.bibitem
  format.authors "author" output.check.nocomma
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.title "title" output.check.nocomma

  format.journal "journal" output.check.nocomma
  bst.year.position #2 =
    { format.date output.nocomma }
    'skip$
  if$
  format.vol.num.pages output.nocomma

  bst.year.position #1 =
    { format.date output.nocomma }
    'skip$
  if$

  format.url output.nocomma
  format.doi output.nocomma

  format.note output.nocomma
  fin.entry
}

% ----  Book ----

FUNCTION {book}
{ output.bibitem
  author empty$
    { format.editors "author and editor" output.check.nocomma }
    { format.authors output.nonnull.nocomma
      "author and editor" editor either.or.check 
    }
  if$
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.book "title" output.check.nocomma

  format.edition output.nocomma
  format.bvolume output.nocomma
  format.number.series output.nocomma
  format.book.pages output.nocomma
  output.publisher.address

  bst.year.position #0 = not
    { format.year "year" output.check.nocomma }
    'skip$
  if$

  format.url output.nocomma
  format.doi output.nocomma

  format.note output.nocomma
  fin.entry
}

% ----  Booklet ----

FUNCTION {booklet}
{ output.bibitem
  format.authors output.nocomma
  format.year output.nocomma
  format.misc.title "title" output.check.nocomma
  format.howpublished output.nocomma
  format.address output.nocomma

  format.url output.nocomma
  format.doi output.nocomma

  format.note output.nocomma
  fin.entry
}

% ---- In book ----

FUNCTION {inbook}
{ output.bibitem
  author empty$
    { format.editors "author and editor" output.check.nocomma }
    { format.authors output.nonnull.nocomma
      "author and editor" editor either.or.check
    }
  if$
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.book "title" output.check.nocomma
  format.edition output.nocomma

  format.bvolume output.nocomma
  format.chapter.pages "chapter and pages" output.check.nocomma
  format.number.series output.nocomma
  output.publisher.address

  bst.year.position #0 = not
    { format.year "year" output.check.nocomma }
    'skip$
  if$

  format.url output.nocomma
  format.doi output.nocomma

  format.note output.nocomma
  fin.entry
}

% ---- In collection ----

FUNCTION {incollection}
{ output.bibitem
  format.authors "author" output.check.nocomma
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.title "title" output.check.nocomma

 format.in.ed.booktitle "booktitle" output.check.nocomma
 format.bvolume output.nocomma
 format.edition output.nocomma
 format.chapter.pages output.nocomma
 output.address.organization.publisher

  bst.year.position #0 = not
    { format.year "year" output.check.nocomma }
    'skip$
  if$

  format.url output.nocomma
  format.doi output.nocomma

  format.note output.nocomma
  fin.entry
}

% ---- In proceedings ----

FUNCTION {inproceedings}
{ output.bibitem
  format.authors "author" output.check.nocomma
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.title "title" output.check.nocomma

  format.in.ed.booktitle "booktitle" output.check.nocomma
  format.bvolume output.nocomma
  format.number.series output.nocomma
  format.pages output.nocomma
  output.address.organization.publisher

  bst.year.position #0 = not
    { format.date output.nocomma }
    { format.month output.nocomma }
  if$

  format.url output.nocomma
  format.doi output.nocomma

  format.note output.nocomma
  fin.entry
}

% ---- Conference ----

FUNCTION {conference}
{ inproceedings }

% ---- Manual ----

FUNCTION {manual}
{ output.bibitem
  author empty$
    { organization empty$
        'skip$
        { organization output.nonnull.nocomma
          address output.nocomma
        }
      if$
    }
    { format.authors output.nonnull.nocomma }
  if$
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.book "title" output.check.nocomma
  author empty$
    { organization empty$
        { format.address new.block.check
          format.address output.nocomma
        }
        'skip$
      if$
    }
    { output.address.organization.publisher }
  if$
  format.edition output.nocomma

  bst.year.position #0 = not
    { format.year "year" output.check.nocomma }
    'skip$
  if$

  format.url output.nocomma
  format.doi output.nocomma

  format.note output.nocomma
  fin.entry
}

% ---- Master's thesis ----

FUNCTION {mastersthesis}
{ output.bibitem
  format.authors "author" output.check.nocomma
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.title "title" output.check.nocomma
  format.mthesis format.thesis.type output.nonnull.nocomma
  format.school "school" output.check.nocomma
  format.address output.nocomma

  bst.year.position #0 = not
    { format.year "year" output.check.nocomma }
    'skip$
  if$

  format.url output.nocomma
  format.doi output.nocomma

  format.note output.nocomma
  fin.entry
}

% ---- Miscellaneous ----

FUNCTION {misc}
{ output.bibitem
  format.authors "author" output.check.nocomma
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.misc.title output.nocomma
  format.howpublished output.nocomma

  bst.year.position #0 = not
    { format.date output.nocomma }
    { format.month output.nocomma }
  if$

  format.url output.nocomma
  format.doi output.nocomma
  
  format.note output.nocomma
  fin.entry
  empty.misc.check
}

% ---- Online ----

FUNCTION {online}
{ output.bibitem
  format.authors "author" output.check.nocomma
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.misc.title output.nocomma
  format.howpublished output.nocomma

  bst.year.position #0 = not
    { format.date output.nocomma }
    { format.month output.nocomma }
  if$

  format.url output.nocomma
  format.doi output.nocomma
  
  format.note output.nocomma
  fin.entry
  empty.misc.check
}

% ---- Phd thesis ----

FUNCTION {phdthesis}
{ output.bibitem
  format.authors "author" output.check.nocomma
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.title "title" output.check.nocomma
  format.phd
  format.thesis.type output.nonnull.nocomma
  format.school "school" output.check.nocomma
  address empty$
    'skip$
    { format.address output.nocomma }
  if$

  bst.year.position #0 = not
    { format.year "year" output.check.nocomma }
    'skip$
  if$

  format.url output.nocomma
  format.doi output.nocomma

  format.note output.nocomma
  fin.entry
}

% ---- Proceedings ----

FUNCTION {proceedings}
{ output.bibitem
  editor empty$
    { organization output.nocomma }
    { format.editors output.nonnull.nocomma }
  if$
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.btitle remove.pre.comma "title" output.check.nocomma
  format.bvolume output.nocomma
  format.number.series output.nocomma
  output.address.organization.publisher

  bst.year.position #0 = not
    { format.year "year" output.check.nocomma }
    'skip$
  if$

  format.url output.nocomma
  format.doi output.nocomma

  format.note output.nocomma
  fin.entry
}

% ---- Technical report ----

FUNCTION {techreport}
{ output.bibitem
  format.authors "author" output.check.nocomma
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.title "title" output.check.nocomma
  format.tr.number output.nonnull.nocomma
  format.institution "institution" output.check.nocomma
  format.address output.nocomma

  bst.year.position #0 = not
    { format.year "year" output.check.nocomma }
    'skip$
  if$

  format.url output.nocomma
  format.doi output.nocomma

  format.note output.nocomma
  fin.entry
}

% ---- Unpublished ----

FUNCTION {unpublished}
{ output.bibitem
  format.authors "author" output.check.nocomma
  bst.year.position #0 =
    { format.year "year" output.check.nocomma }
    'skip$
  if$
  format.title "title" output.check.nocomma

  bst.year.position #0 = not
    { format.date remove.pre.comma output.nocomma }
    { month empty$
        'skip$
        { format.month remove.pre.comma output.nocomma }
      if$
    }
  if$

  format.url output.nocomma
  format.doi output.nocomma

  format.note "note" output.check.nocomma
  fin.entry
}

FUNCTION {default.type}
{ misc }

% ---- Alias for month names ----

MACRO {jan} {"January"}
MACRO {feb} {"February"}
MACRO {mar} {"March"}
MACRO {apr} {"April"}
MACRO {may} {"May"}
MACRO {jun} {"June"}
MACRO {jul} {"July"}
MACRO {aug} {"August"}
MACRO {sep} {"September"}
MACRO {oct} {"October"}
MACRO {nov} {"November"}
MACRO {dec} {"December"}

% ==== Execute commands ====

% Read entries
READ

% Variable for remembering the order of citation
INTEGERS { order.num }
FUNCTION {initialize.order.num}
{
  #1 'order.num :=
}
% Initialize a variables
EXECUTE {initialize.order.num}

% Variable for remembering the order of citation
FUNCTION {set.order.cited}
{
  order.num 'order.cited :=
  #1 order.num + 'order.num :=
}
% Iterate for all entries:
ITERATE {set.order.cited}
  
% Remove symbols and convert to lowercase.
FUNCTION {sortify}
{ purify$ "l" change.case$ }

% names for sorting
FUNCTION {sort.format.names}
{ 's :=
  #1 'nameptr :=
  ""
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { nameptr #1 >
        { ", " * }
	'skip$
      if$
      s nameptr "{ll}{ f}{ j}" format.name$ 't :=
      nameptr numnames = t "others" = and
 	{ bst.and.others *}
	{ t sortify * }
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
}

FUNCTION {sort.format.names.abb}
{ 's :=
  s num.names$ 'numnames :=
  numnames bst.and.others.num <
     { s sort.format.names }
     { s #1 "{ll}{ f}{ j}" format.name$ " zz " * }
  if$
}

% Label for full author name.
FUNCTION {format.lab.names.full}
{ 's :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
  { namesleft #0 > }
      { s nameptr "{vv~}{ll}" format.name$ 't :=
        nameptr #1 >
          { namesleft #1 >
              { ", " * t * }
              { t "others" =
                  { bst.and.others * }
                  { numnames #2 > 
                      { bst.cite.ands * t * }
                      { bst.cite.and * t * }
                    if$
                  }
                if$
              }   
            if$
          }
          't
        if$
        nameptr #1 + 'nameptr :=
        namesleft #1 - 'namesleft :=
      }
  while$
  numnames #1 > #1 #2 = and {", eds" *} {} if$
  numnames #1 = #1 #2 = and {", ed" *} {} if$
}

% laberl for abbreviated author name
FUNCTION {format.lab.names.abb}
{ 's :=
   s num.names$ 'numnames :=
   numnames bst.and.others.num <
     % if the number of authors is less than bst.and.others.num, full name.
     { s format.lab.names.full }
     % if the number of authors is equal or more than bst.and.others.num, abbreviated name.
     { s #1 "{ll}" format.name$ bst.and.others * }
   if$
}

% Abbreviated author
FUNCTION {author.key.label.abb}
{ author empty$
    { key empty$
        { cite$ #1 #3 substring$ }
        { key #3 text.prefix$ }
      if$
    }
    { author format.lab.names.abb }
  if$
}

% Full author
FUNCTION {author.key.label.full}
{ author empty$
    { key empty$
        { cite$ #1 #3 substring$ }
        { key #3 text.prefix$ }
      if$
    }
    { author format.lab.names.full }
  if$
}

FUNCTION {format.names.full.wo.and}
{ 's :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
  { namesleft #0 > }
      { s nameptr "{ll}{, ff}{, jj}" format.name$ 't :=
        nameptr #1 >
          { namesleft #1 >
              { " " * t * }
              { t "others" =
                  { " " * }
                  { numnames #2 > 
                      { " " * t * }
                      { " " * t * }
                    if$
                  }
                if$
              }   
            if$
          }
          't
        if$
        nameptr #1 + 'nameptr :=
        namesleft #1 - 'namesleft :=
      }
  while$
}

FUNCTION {author.key.full.wo.and}
{ author empty$
    { key empty$
        { cite$ #1 #3 substring$ }
        { key #3 text.prefix$ }
      if$
    }
    { author format.names.full.wo.and }
  if$
}

FUNCTION {author.editor.key.full.wo.and}
{ author empty$
    { editor empty$
        { key empty$
            { cite$ #1 #3 substring$ }
            { key #3 text.prefix$ }
          if$
        }
        { editor format.names.full.wo.and }
      if$
    }
    { author format.names.full.wo.and }
  if$
}

FUNCTION {editor.key.organization.key.full.wo.and}
{ editor empty$
    { key empty$
        { organization empty$
            { cite$ #1 #3 substring$ }
            { "The " #4 organization chop.word #3 text.prefix$ }
          if$
        }
        { key #3 text.prefix$ }
      if$
    }
    { editor format.names.full.wo.and }
  if$
}

FUNCTION {author.key.organization.key.full.wo.and}
{ author empty$
    { key empty$
        { organization empty$
            { cite$ #1 #3 substring$ }
            { "The " #4 organization chop.word #3 text.prefix$ }
          if$
        }
        { key #3 text.prefix$ }
      if$
    }
    { author format.names.full.wo.and }
  if$
}

% Abbreviated author
FUNCTION {author.editor.key.label.abb}
{ author empty$
    { editor empty$
        { key empty$
            { cite$ #1 #3 substring$ }
            { key #3 text.prefix$ }
          if$
        }
        { editor format.lab.names.abb }
      if$
    }
    { author format.lab.names.abb }
  if$
}

% Full author
FUNCTION {author.editor.key.label.full}
{ author empty$
    { editor empty$
        { key empty$
            { cite$ #1 #3 substring$ }
            { key #3 text.prefix$ }
          if$
        }
        { editor format.lab.names.full }
      if$
    }
    { author format.lab.names.full }
  if$
}

FUNCTION {author.key.organization.label.full}
{ author empty$
    { key empty$
        { organization empty$
            { cite$ #1 #3 substring$ }
            { "The " #4 organization chop.word #3 text.prefix$ }
          if$
        }
        { key #3 text.prefix$ }
      if$
    }
    { author format.lab.names.full }
  if$
}

FUNCTION {author.key.organization.label.abb}
{ author empty$
    { key empty$
        { organization empty$
            { cite$ #1 #3 substring$ }
            { "The " #4 organization chop.word #3 text.prefix$ }
          if$
        }
        { key #3 text.prefix$ }
      if$
    }
    { author format.lab.names.abb }
  if$
}

FUNCTION {editor.key.organization.label.full}
{ editor empty$
    { key empty$
        { organization empty$
            { cite$ #1 #3 substring$ }
            { "The " #4 organization chop.word #3 text.prefix$ }
          if$
        }
        { key #3 text.prefix$ }
      if$
    }
    { editor format.lab.names.full }
  if$
}

FUNCTION {editor.key.organization.label.abb}
{ editor empty$
    { key empty$
        { organization empty$
            { cite$ #1 #3 substring$ }
            { "The " #4 organization chop.word #3 text.prefix$ }
          if$
        }
        { key #3 text.prefix$ }
      if$
    }
    { editor format.lab.names.abb }
  if$
}

% Convert numbers: 0->9, 1->8, 2->7,..., 9->0
FUNCTION {reverse.num}
{ 's :=
  s "1" =
    { "8" 'year.num := }
    { s "2" =
        { "7" 'year.num := }
        { s "3" =
            { "6" 'year.num := }
            { s "4" =
                { "5" 'year.num := }
                { s "5" =
                    { "4" 'year.num := }
                    { s "6" =
                        { "3" 'year.num := }
                        { s "7" =
                            { "2" 'year.num := }
                            { s "8" =
                                { "1" 'year.num := }
                                { s "9" =
                                    { "0" 'year.num := }
                                    { s "0" =
                                        { "9" 'year.num := }
                                        { "9" 'year.num := }
                                    if$
                                    }
                                if$
                                }
                            if$
                            }
                        if$
                        }
                    if$
                    }
                if$
                }
            if$
            }
        if$
        }
    if$
    }
  if$
  year.num
}

% Convert year (large number -> small number)
FUNCTION {convert.year}
{ 't := 
  bst.reverse.year #0 =
    { t 'tt := }
    { t #1 #1 substring$ reverse.num 
      t #2 #1 substring$ reverse.num *
      t #3 #1 substring$ reverse.num *
      t #4 #1 substring$ reverse.num * 'tt := }
  if$
  tt
}

% cyear
FUNCTION {calc.cyear}
{ type$ "book" =
  type$ "inbook" =
  or
    'author.editor.key.full.wo.and
    { type$ "proceedings" =
        'editor.key.organization.key.full.wo.and
        { type$ "manual" =
            'author.key.organization.key.full.wo.and
            'author.key.full.wo.and
          if$
        }
      if$
    }
  if$
  duplicate$
  year empty$
    { "2199" 'cyear := }
    { year 'cyear := }
  if$
  year empty$
    { " " "2199" convert.year * field.or.null * }
    { " " year convert.year * field.or.null * }
  if$
  sortify 'sort.label :=
 pop$
}

FUNCTION {calc.sort.label.abb}
{ author empty$
    { editor empty$
       { "" }
       { editor 's := }
      if$
    }
    { author 's := }
  if$
  s sort.format.names.abb 't :=
  year empty$
    { t sortify " " * "2199" convert.year * 'sort.label.abb := }
    { t sortify " " * year convert.year * 'sort.label.abb := }
  if$
}

% flabel
FUNCTION {calc.flabel}
{ type$ "book" =
  type$ "inbook" =
  or
    'author.editor.key.label.full
    { type$ "proceedings" =
        'editor.key.organization.label.full
        { type$ "manual" =
            'author.key.organization.label.full
            'author.key.label.full
          if$
        }
      if$
    }
  if$
  'flabel :=
}

% alabel
FUNCTION {calc.alabel}
{ type$ "book" =
  type$ "inbook" =
  or
    'author.editor.key.label.abb
    { type$ "proceedings" =
        'editor.key.organization.label.abb
        { type$ "manual" =
            'author.key.organization.label.abb
            'author.key.label.abb
          if$
        }
      if$
    }
  if$
  'alabel :=
}

% Title for sorting
FUNCTION {sort.format.title}
{ 't :=
  "A " #2
    "An " #3
      "The " #4 t chop.word
    chop.word
  chop.word
  sortify
  #1 global.max$ substring$
}

% Author for sorting
FUNCTION {author.sort}
{ author empty$
    { key empty$
        { "to sort, need author or key in " cite$ * warning$
          ""
        }
        { key sortify }
      if$
    }
    { author sort.format.names }
  if$
}

% Editor for sorting
FUNCTION {author.editor.sort}
{ author empty$
    { editor empty$
        { key empty$
            { "to sort, need author, editor, or key in " cite$ * warning$
              ""
            }
            { key sortify }
          if$
        }
        { editor sort.format.names }
      if$
    }
    { author sort.format.names }
  if$
}

FUNCTION {author.organization.sort}
{ author empty$
    { organization empty$
        { key empty$
            { "to sort, need author, organization, or key in " cite$ * warning$
              ""
            }
            { key sortify }
          if$
        }
        { "The " #4 organization chop.word sortify }
      if$
    }
    { author sort.format.names }
  if$
}

FUNCTION {editor.organization.sort}
{ editor empty$
    { organization empty$
        { key empty$
            { "to sort, need editor, organization, or key in " cite$ * warning$
              ""
            }
            { key sortify }
          if$
        }
        { "The " #4 organization chop.word sortify }
      if$
    }
    { editor sort.format.names }
  if$
}

% 1,...,9 -> 001,...,009
% 10,...,99 -> 010,...,099
FUNCTION {add.zero.to.number}
{ 's :=
    s text.length$ #1 =
      { "00" s * }
      { s text.length$ #2 =
          { "0" s * }
          { s }
        if$
      }
   if$
}

% Entry type
FUNCTION {bst.sort.entry.type.order}
{ 'item.type :=
  item.type "article" =
    { "01" }
    { item.type "book" =
        { "02" }
        { item.type "booklet" =
            { "03" }
            { item.type "comment" =
                { "04" }
                { item.type "conference" =
                    { "05" }
                    { item.type "inbook" =
                        { "06" }
                        { item.type "incollection" =
                            { "07" }
                            { item.type "inproceedings" =
                                { "08" }
                                { item.type "manual" =
                                    { "09" }
                                    { item.type "masterthesis" =
                                        { "10" }
                                        { item.type "misc" =
                                           { "11" }
                                           { item.type "phdthesis" =
                                              { "12" }
                                              { item.type "proceedings" =
                                                 { "13" }
                                                 { item.type "techreport" =
                                                    { "14" }
                                                    { item.type "unpublished" =
                                                       { "15" }
                                                       { "16" }
                                                      if$
                                                    }
                                                   if$
                                                 }
                                                if$
                                              }
                                             if$
                                           }
                                          if$
                                        }
                                      if$
                                    }
                                if$
                                }
                            if$
                            }
                        if$
                        }
                    if$
                    }
                if$
                }
            if$
            }
        if$
        }
    if$
    }
  if$
}

% Create sort.key$: absorder -> author -> year -> order -> month -> title.
FUNCTION {presort.one}
{
  bst.no.sort #0 = not
    { order.cited int.to.str$ add.zero.to.number " " * }
    { "" }
  if$
  bst.sort.year #0 = not
    % Use year field as the primary sorting key.
    { year convert.year * }
    'skip$
  if$
  bst.sort.entry.type #0 = not
    { type$ bst.sort.entry.type.order * " " * }
    'skip$
  if$
  absorder empty$
    { "/// " * }
    { bst.notuse.absorder.field #0 =
       { absorder "999" =
          { "zzz " * }
          { absorder add.zero.to.number "000" =
             { "/// " * }
             { absorder add.zero.to.number * " " * }
            if$
          }
         if$
       }
       { "/// " * }
      if$
    }
  if$
  " " *
  sort.label.abb *
  " " *  
  type$ "book" = type$ "inbook" = or
    'author.editor.sort
    { type$ "proceedings" =
        'editor.organization.sort
        { type$ "manual" =
            'author.organization.sort
            'author.sort
          if$
        }
      if$
    }
  if$
  * " " *
  " "
  order empty$
    { "/// " * }
    { bst.notuse.order.field #0 =
       { order "999" =
          { "zzz " * }
          { order add.zero.to.number "000" =
             { "/// " * }
             { order add.zero.to.number * " " * }
            if$
          }
         if$
       }
       { "/// " * }
      if$
    }
  if$
  month empty$
    { * "/// " * }
       { month "999" =
          { * month add.zero.to.number * "zzz " * }
          { month add.zero.to.number "000" =
             { * month add.zero.to.number * "/// " * }
             { * month add.zero.to.number * " " * }
            if$
          }
         if$
       }
  if$
  title field.or.null sort.format.title
  *
  #1 entry.max$ substring$
  'sort.key$ :=
}

FUNCTION {presort.two}
{
  bst.no.sort #0 = not
    { order.cited int.to.str$ add.zero.to.number " " * }
    { "" }
  if$
  bst.sort.year #0 = not
    % Use year field as the primary sorting key.
    { year convert.year * }
    'skip$
  if$
  bst.sort.entry.type #0 = not
    { type$ bst.sort.entry.type.order * " " * }
    'skip$
  if$
  absorder empty$
    { "/// " * }
    { bst.notuse.absorder.field #0 =
       { absorder "999" =
          { "zzz " * }
          { absorder add.zero.to.number "000" =
             { "/// " * }
             { absorder add.zero.to.number * " " * }
            if$
          }
         if$
       }
       { "/// " * }
      if$
    }
  if$
  " " * sort.label * " "
  order empty$
    { "/// " * }
    { bst.notuse.order.field #0 =
       { order "999" =
          { "zzz " * }
          { order add.zero.to.number "000" =
             { "/// " * }
             { order add.zero.to.number * " " * }
            if$
          }
         if$
       }
       { "/// " * }
      if$
    }
  if$
  month empty$
    { * "/// " * }
       { month "999" =
          { * month add.zero.to.number * "zzz " * }
          { month add.zero.to.number "000" =
             { * month add.zero.to.number * "/// " * }
             { * month add.zero.to.number * " " * }
            if$
          }
         if$
       }
  if$
  title field.or.null sort.format.title
  *
  #1 entry.max$ substring$
  'sort.key$ :=
}

% alabel
ITERATE {calc.alabel}

% flabel
ITERATE {calc.flabel}

% cyear and sort.label
ITERATE {calc.cyear}
ITERATE {calc.sort.label.abb}

% Sorting by $sort.key (first time)
% Sorting is done in two times. This is the first time.

ITERATE {presort.one}
SORT

FUNCTION {forward.pass}
{ bst.use.bysame #0 = bst.use.bysame #2 = or
    % Not use \bysame
    { last.sort.label sort.label.abb =
        { last.extra.num #1 + 'last.extra.num :=
          last.extra.num int.to.chr$ 'extra.label :=
        }
        { "a" chr.to.int$ 'last.extra.num :=
          "" 'extra.label :=
          sort.label.abb 'last.sort.label :=
        }
      if$
    }
    % Use \bysame
    { last.sort.label sort.label.abb =
        { last.extra.num #1 + 'last.extra.num :=
          last.extra.num int.to.chr$ 'extra.label :=
        }
        { "a" chr.to.int$ 'last.extra.num :=
          "" 'extra.label :=
          sort.label.abb 'last.sort.label :=
        }
      if$
      author empty$
        { editor empty$
          { "" }
          'format.editors.alt
          if$
        }
        'format.authors.alt
      if$
      'this.author :=
      % format.names 'this.author :=
      this.author prev.author =
        { "bysame" 'extra.label.bysame := }
        { this.author "" =
            { "abcxyz" }
            'this.author
          if$
          'prev.author :=
        }
      if$
    }
  if$
}

FUNCTION {reverse.pass}
{ next.extra "b" =
    { "a" 'extra.label := }
    'skip$
  if$
  extra.label empty$ not
    { cyear extra.label * }
    { cyear "" * }
  if$
  "" field.or.null *
  'cyear :=
  extra.label 'next.extra :=
}

% \bysame
ITERATE {forward.pass}

REVERSE {reverse.pass}

% Sorting by sort.key$ (second time)
ITERATE {presort.two}
SORT

FUNCTION {reset.prev.author}
{ "xxyyzz" 'prev.author := }

EXECUTE {reset.prev.author}

FUNCTION {forward.pass.two}
{ bst.use.bysame #1 = 
    { author empty$
        { editor empty$
          { "" }
          'format.editors.alt
          if$
        }
        'format.authors.alt
     if$
     'this.author :=
     this.author prev.author =
        { "bysame" 'extra.label.bysame := }
        { this.author "" =
            { "abcxyz" }
            'this.author
          if$
          'prev.author :=
        }
     if$
    }
   'skip$
  if$
}

ITERATE {forward.pass.two}

FUNCTION {begin.bib}
{
  preamble$ empty$
    'skip$
    { preamble$ write$ newline$ }
  if$
  bst.use.bysame #0 =
     % Not use \bysame
     'skip$
     % Use \bysame
     { "% Definition of \bysame" write$ newline$
       "\ifx\undefined\bysame" write$ newline$
       "\newcommand{\bysame}{" bst.bysame.definition * "}" *
       write$ newline$
       "\fi" write$ newline$ newline$ }
  if$
  % When number index is attached to the beginning of each item.
  bst.use.number.index #0 =
     'skip$
     { bst.number.index.digit "1" =
         % one digit
         { bst.number.index.bibhang.one }
         { bst.number.index.digit "2" =
            % two digits
            { bst.number.index.bibhang.ten }
            % three or more digits
            { bst.number.index.bibhang.hund }
           if$
         }
       if$
       'hang :=
       "% Redefinition of \bibhang" write$ newline$
       "\ifx\undefined\bibhang" write$ newline$
       "\relax" write$ newline$
       "\else" write$ newline$
       "\setlength{\bibhang}{"
       hang * "}" * write$ newline$ 
       "\fi" write$ newline$ newline$
       }
  if$
  "\begin{thebibliography}{xxx}" write$ newline$

  % Initialize the variable `index'.
  #0 'index :=
}

FUNCTION {end.bib}
{ newline$ "\end{thebibliography}" write$ newline$ }

EXECUTE {begin.bib}
EXECUTE {init.state.consts}
ITERATE {call.type$}
EXECUTE {end.bib}