{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SubscriptionScheduleCurrentPhase
module StripeAPI.Types.SubscriptionScheduleCurrentPhase where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.subscription_schedule_current_phase@ in the specification.
data SubscriptionScheduleCurrentPhase = SubscriptionScheduleCurrentPhase
  { -- | end_date: The end of this phase of the subscription schedule.
    subscriptionScheduleCurrentPhaseEndDate :: GHC.Types.Int,
    -- | start_date: The start of this phase of the subscription schedule.
    subscriptionScheduleCurrentPhaseStartDate :: GHC.Types.Int
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionScheduleCurrentPhase where
  toJSON obj = Data.Aeson.Types.Internal.object ("end_date" Data.Aeson.Types.ToJSON..= subscriptionScheduleCurrentPhaseEndDate obj : "start_date" Data.Aeson.Types.ToJSON..= subscriptionScheduleCurrentPhaseStartDate obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("end_date" Data.Aeson.Types.ToJSON..= subscriptionScheduleCurrentPhaseEndDate obj) GHC.Base.<> ("start_date" Data.Aeson.Types.ToJSON..= subscriptionScheduleCurrentPhaseStartDate obj))

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionScheduleCurrentPhase where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionScheduleCurrentPhase" (\obj -> (GHC.Base.pure SubscriptionScheduleCurrentPhase GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "end_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "start_date"))

-- | Create a new 'SubscriptionScheduleCurrentPhase' with all required fields.
mkSubscriptionScheduleCurrentPhase ::
  -- | 'subscriptionScheduleCurrentPhaseEndDate'
  GHC.Types.Int ->
  -- | 'subscriptionScheduleCurrentPhaseStartDate'
  GHC.Types.Int ->
  SubscriptionScheduleCurrentPhase
mkSubscriptionScheduleCurrentPhase subscriptionScheduleCurrentPhaseEndDate subscriptionScheduleCurrentPhaseStartDate =
  SubscriptionScheduleCurrentPhase
    { subscriptionScheduleCurrentPhaseEndDate = subscriptionScheduleCurrentPhaseEndDate,
      subscriptionScheduleCurrentPhaseStartDate = subscriptionScheduleCurrentPhaseStartDate
    }
