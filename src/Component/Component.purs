module App.Component where

import Prelude

import Data.Const (Const)
import Effect.Aff.Class (class MonadAff)
import Halogen as H
import Halogen.HTML as HH

data Action
  = NoOp

type State = Unit
type Input = Unit

component :: ∀ m. MonadAff m => H.Component HH.HTML (Const Void) Unit Void m
component = H.mkComponent
  { initialState
  , render
  , eval: H.mkEval $ H.defaultEval { handleAction = handleAction }
  }
  where

  initialState :: Input -> State
  initialState = const unit

  handleAction :: Action -> H.HalogenM State Action () Void m Unit
  handleAction = case _ of
    NoOp -> pure unit

  render :: State -> H.ComponentHTML Action () m
  render st = HH.div_ []