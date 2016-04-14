(TeX-add-style-hook
 "Computer_Orginization_review"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art11"
    "inputenc"
    "fontenc"
    "fixltx2e"
    "graphicx"
    "grffile"
    "longtable"
    "wrapfig"
    "rotating"
    "ulem"
    "amsmath"
    "textcomp"
    "amssymb"
    "capt-of"
    "hyperref")
   (LaTeX-add-labels
    "sec:orgheadline61"
    "sec:orgheadline1"
    "sec:orgheadline2"
    "sec:orgheadline3"
    "sec:orgheadline6"
    "sec:orgheadline4"
    "sec:orgheadline5"
    "sec:orgheadline7"
    "sec:orgheadline8"
    "sec:orgheadline9"
    "sec:orgheadline10"
    "sec:orgheadline12"
    "sec:orgheadline11"
    "sec:orgheadline15"
    "sec:orgheadline13"
    "sec:orgheadline14"
    "sec:orgheadline19"
    "sec:orgheadline16"
    "sec:orgheadline17"
    "sec:orgheadline18"
    "sec:orgheadline20"
    "sec:orgheadline25"
    "sec:orgheadline21"
    "sec:orgheadline22"
    "sec:orgheadline23"
    "sec:orgheadline24"
    "sec:orgheadline60"
    "sec:orgheadline26"
    "sec:orgheadline27"
    "sec:orgheadline28"
    "sec:orgheadline29"
    "sec:orgheadline32"
    "sec:orgheadline30"
    "sec:orgheadline31"
    "sec:orgheadline33"
    "sec:orgheadline36"
    "sec:orgheadline34"
    "sec:orgheadline35"
    "sec:orgheadline37"
    "sec:orgheadline40"
    "sec:orgheadline38"
    "sec:orgheadline39"
    "sec:orgheadline42"
    "sec:orgheadline41"
    "sec:orgheadline43"
    "sec:orgheadline46"
    "sec:orgheadline44"
    "sec:orgheadline45"
    "sec:orgheadline50"
    "sec:orgheadline47"
    "sec:orgheadline48"
    "sec:orgheadline49"
    "sec:orgheadline51"
    "sec:orgheadline56"
    "sec:orgheadline52"
    "sec:orgheadline53"
    "sec:orgheadline54"
    "sec:orgheadline55"
    "sec:orgheadline59"
    "sec:orgheadline57"
    "sec:orgheadline58")))

