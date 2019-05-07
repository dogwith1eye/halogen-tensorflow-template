{ name = "halogen-tensorflow-template"
, packages = ./packages.dhall
, dependencies =
    [ "prelude"
    , "console"
    , "effect"
    , "aff"
    , "halogen"
    , "typed-array"
    ]
}
