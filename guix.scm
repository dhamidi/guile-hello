(use-modules
 (guix packages)
 (guix git-download)
 (gnu packages guile)
 (guix build-system gnu)
 (guix licenses))

(package
 (name "guile-hello")
 (version "0.1.0")
 (source (origin
          (method git-fetch)
          (uri (git-reference
                (url "https://github.com/dhamidi/guile-hello.git")
                (commit "")))
          (sha256
           (base32
            "0ssi1wpaf7plaswqqjwigppsg5fyh99vdlb9kzl7c9lng89ndq1i"))))
 (build-system gnu-build-system)
 (arguments `(#:configure-flags '("--enable-silent-rules")))
 (inputs `(("guile" ,guile-2.0)))
 (synopsis "Hello, Guile world: An example GNU Guile package")
 (description "Guess what GNU Guile hello prints!")
 (home-page "http://www.gnu.org/software/hello/")
 (license gpl3+))
