module Main exposing (main)

import Browser
import Browser.Navigation as Nav
import Html exposing (Html, a, div, footer, h1, header, i, img, li, nav, node, p, section, span, text, ul)
import Html.Attributes exposing (class, href, id, src, target)
import Route exposing (Route)
import Url
import View.Company exposing (viewCompany)
import View.Contact exposing (viewContact)
import View.Team exposing (viewTeam)
import View.Top exposing (viewTop)
import View.Vision exposing (viewVision)
import View.Works exposing (viewWorks)


main =
    Browser.application
        { init = init
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        , onUrlChange = UrlChanged
        , onUrlRequest = UrlRequested
        }



-- MODEL


type alias Model =
    { key : Nav.Key
    , page : Page
    }


type Page
    = NotFound
    | TopPage
    | VisionPage
    | TeamPage
    | WorksPage
    | CompanyPage
    | ContactPage


init : () -> Url.Url -> Nav.Key -> ( Model, Cmd Msg )
init flags url key =
    { key = key
    , page = TopPage
    }
        |> goTo (Route.parse url)



-- UPDATE


type Msg
    = UrlRequested Browser.UrlRequest
    | UrlChanged Url.Url


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UrlRequested urlRequest ->
            case urlRequest of
                Browser.Internal url ->
                    ( model, Nav.pushUrl model.key (Url.toString url) )

                Browser.External href ->
                    ( model, Nav.load href )

        UrlChanged url ->
            goTo (Route.parse url) model


goTo : Maybe Route -> Model -> ( Model, Cmd Msg )
goTo maybeRoute model =
    case maybeRoute of
        Nothing ->
            ( { model | page = NotFound }, Cmd.none )

        Just Route.Top ->
            ( { model | page = TopPage }, Cmd.none )

        Just Route.Vision ->
            ( { model | page = VisionPage }, Cmd.none )

        Just Route.Team ->
            ( { model | page = TeamPage }, Cmd.none )

        Just Route.Works ->
            ( { model | page = WorksPage }, Cmd.none )

        Just Route.Company ->
            ( { model | page = CompanyPage }, Cmd.none )

        Just Route.Contact ->
            ( { model | page = ContactPage }, Cmd.none )



-- VIEW


view : Model -> Browser.Document Msg
view model =
    { title = "sorano me inc."
    , body =
        [ siteHeader
        , globalNavigation
        , snsNavigation
        , node "main"
            []
            [ div []
                [ viewTop (model.page == TopPage)
                , viewVision (model.page == VisionPage)

                -- , viewTeam (model.page == TeamPage)
                -- , viewWorks (model.page == WorksPage)
                , viewCompany (model.page == CompanyPage)
                , viewContact (model.page == ContactPage)
                ]
            ]
        , siteFooter
        ]
    }


siteHeader : Html Msg
siteHeader =
    header [ class "site-header" ]
        [ h1 []
            [ a [ href "/" ]
                [ img [ src "./assets/images/logotype_dark.png" ] []
                ]
            ]
        ]


globalNavigation : Html Msg
globalNavigation =
    nav [ class "global-nav" ]
        [ ul []
            [ li [] [ a [ href "/" ] [ text "top" ] ]
            , li [] [ a [ href "/vision" ] [ text "vision" ] ]

            -- , li [] [ a [ href "/team" ] [ text "team" ] ]
            -- , li [] [ a [ href "/works" ] [ text "works" ] ]
            , li [] [ a [ href "/company" ] [ text "company" ] ]
            , li [] [ a [ href "/contact" ] [ text "contact" ] ]
            ]
        ]


snsNavigation : Html Msg
snsNavigation =
    nav [ class "sns-nav" ]
        [ ul []
            [ li []
                [ a [ href "https://twitter.com/sorano_me", target "_blank" ]
                    [ i [ class "fab fa-twitter" ] [] ]
                ]
            ]
        ]


siteFooter : Html Msg
siteFooter =
    footer [ class "site-footer" ]
        [ p [ class "copyright" ] [ text "© 2019 sorano me" ]
        ]
