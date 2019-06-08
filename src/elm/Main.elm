module Main exposing (main)

import Browser
import Html exposing (Html, a, div, footer, h1, header, img, li, nav, node, p, text, ul)
import Html.Attributes exposing (class, src)


main =
    Browser.document
        { init = init
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        }



-- MODEL


type alias Model =
    { userState : String
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( Model ""
    , Cmd.none
    )



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- VIEW


view : Model -> Browser.Document Msg
view model =
    { title = "sorano me inc."
    , body =
        [ siteHeader
        , node "main"
            []
            [ img [ src "./assets/images/logo.png" ] []
            ]
        , siteFooter
        ]
    }


siteHeader : Html Msg
siteHeader =
    header [ class "site-header" ]
        [ h1 [] [ text "sorano me inc." ]
        , img [ src "./assets/images/icon.png" ] []
        , nav []
            [ ul []
                [ li []
                    [ a [] [ text "about us" ]
                    ]
                , li []
                    [ a [] [ text "member" ]
                    ]
                , li []
                    [ a [] [ text "case" ]
                    ]
                , li []
                    [ a [] [ text "company" ]
                    ]
                ]
            ]
        ]


siteFooter : Html Msg
siteFooter =
    footer [ class "site-footer" ]
        [ p [ class "copyright" ] [ text "© 2019 sorano me" ]
        ]
