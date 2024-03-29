module View.Contact exposing (viewContact)

import Browser
import Html exposing (Html, a, button, form, h1, input, label, li, option, p, section, select, table, td, text, textarea, th, tr, ul)
import Html.Attributes exposing (attribute, class, href, method, name, type_, value)


viewContact : Bool -> Html msg
viewContact isCurrentPage =
    section
        [ class "contact"
        , if isCurrentPage then
            class "open"

          else
            class "close"
        , name "contact"
        , method "POST"
        , attribute "netlify" ""
        ]
        [ h1 []
            [ text "contact" ]
        , p [] [ text "下記のアドレスまでお問い合わせください" ]
        , a [ href "mailTo:contact@soranome.com" ] [ text "contact@soranome.com" ]
        ]


contactForm : Html msg
contactForm =
    form
        [ name "contact"
        , method "POST"
        , attribute "data-netlify" "true"
        ]
        [ p []
            [ label []
                [ text "Your Name:"
                , input [ type_ "text", name "name" ] []
                ]
            ]
        , p []
            [ label []
                [ text "Your Email:"
                , input [ type_ "email", name "email" ] []
                ]
            ]

        -- , p []
        --     [ label []
        --         [ text "Your Role:"
        --         , select [ name "role[]" ]
        --             [ option [ value "leader" ] [ text "Leader" ]
        --             , option [ value "follower" ] [ text "Follower" ]
        --             ]
        --         ]
        --     ]
        , p []
            [ label []
                [ text "Message:"
                , textarea [ name "message" ] []
                ]
            ]
        , p []
            [ button [ type_ "submit" ] [ text "Send" ]
            ]
        ]
