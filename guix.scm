(use-modules
 (guix packages)
 (guix download)
 (gnu packages guile)
 (gnu packages autotools)
 (gnu packages pkg-config)
 (guix build-system gnu)
 (guix licenses))

(package
 (name "guile-hello")
 (version "0.1.0")
 (source (origin
          (method url-fetch)
          (uri "https://github.com/dhamidi/guile-hello/releases/download/v0.1.0/guile-hello-0.1.0.tar.gz")
          (sha256
           (base32
            "1q27bp30z194f09dq125r7q5wxrnymzrbsnh8dlh92gcqwcykh3h"))))
 (build-system gnu-build-system)
 (arguments `(#:configure-flags '("--enable-silent-rules")))
 (native-inputs
  `(("autoconf" ,autoconf)
    ("automake" ,automake)
    ("pkg-config" ,pkg-config)))
 (inputs `(("guile" ,guile-2.0)))
 (synopsis "Hello, Guile world: An example GNU Guile package")
 (description "Guess what GNU Guile hello prints!")
 (home-page "http://www.gnu.org/software/hello/")
 (license gpl3+))
