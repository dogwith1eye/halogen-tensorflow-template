module Main where

import Prelude

import App.AppM (runAppM)
import App.Component as Component
import App.Env (Env)
import Data.Const (Const)
import Effect (Effect)
import Effect.Aff (Aff)
import Halogen as H
import Halogen.Aff as HA
import Halogen.HTML as HH
import Halogen.VDom.Driver (runUI)

main :: Effect Unit
main = HA.runHalogenAff do
  body <- HA.awaitBody

  let
    environment :: Env
    environment = { }

    rootComponent :: H.Component HH.HTML (Const Void) Unit Void Aff
    rootComponent = H.hoist (runAppM environment) Component.component

  halogenIO <- runUI rootComponent unit body
  pure unit
