port module Ports exposing (radarChart, showError, setTitle, keycloakAuthResult, keycloakLogout, keycloakLogin, saveSurveyState)

import Keycloak exposing (Options, RawAuthenticationResult)
import Data.RadarChart exposing (RadarChartConfig)
import Json.Encode exposing (Value)


port keycloakAuthResult : (RawAuthenticationResult -> msg) -> Sub msg


port keycloakLogin : Options -> Cmd msg


port keycloakLogout : () -> Cmd msg


port setTitle : String -> Cmd msg


port showError : String -> Cmd msg


port radarChart : RadarChartConfig -> Cmd msg


port saveSurveyState : Maybe Value -> Cmd msg
