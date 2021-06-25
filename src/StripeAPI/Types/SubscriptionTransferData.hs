{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SubscriptionTransferData
module StripeAPI.Types.SubscriptionTransferData where

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
import {-# SOURCE #-} StripeAPI.Types.Account
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.subscription_transfer_data@ in the specification.
data SubscriptionTransferData = SubscriptionTransferData
  { -- | amount_percent: A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice subtotal that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
    subscriptionTransferDataAmountPercent :: (GHC.Maybe.Maybe GHC.Types.Double),
    -- | destination: The account where funds from the payment will be transferred to upon payment success.
    subscriptionTransferDataDestination :: SubscriptionTransferDataDestination'Variants
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionTransferData where
  toJSON obj = Data.Aeson.Types.Internal.object ("amount_percent" Data.Aeson.Types.ToJSON..= subscriptionTransferDataAmountPercent obj : "destination" Data.Aeson.Types.ToJSON..= subscriptionTransferDataDestination obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("amount_percent" Data.Aeson.Types.ToJSON..= subscriptionTransferDataAmountPercent obj) GHC.Base.<> ("destination" Data.Aeson.Types.ToJSON..= subscriptionTransferDataDestination obj))

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionTransferData where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionTransferData" (\obj -> (GHC.Base.pure SubscriptionTransferData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "destination"))

-- | Create a new 'SubscriptionTransferData' with all required fields.
mkSubscriptionTransferData ::
  -- | 'subscriptionTransferDataDestination'
  SubscriptionTransferDataDestination'Variants ->
  SubscriptionTransferData
mkSubscriptionTransferData subscriptionTransferDataDestination =
  SubscriptionTransferData
    { subscriptionTransferDataAmountPercent = GHC.Maybe.Nothing,
      subscriptionTransferDataDestination = subscriptionTransferDataDestination
    }

-- | Defines the oneOf schema located at @components.schemas.subscription_transfer_data.properties.destination.anyOf@ in the specification.
--
-- The account where funds from the payment will be transferred to upon payment success.
data SubscriptionTransferDataDestination'Variants
  = SubscriptionTransferDataDestination'Text Data.Text.Internal.Text
  | SubscriptionTransferDataDestination'Account Account
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionTransferDataDestination'Variants where
  toJSON (SubscriptionTransferDataDestination'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (SubscriptionTransferDataDestination'Account a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionTransferDataDestination'Variants where
  parseJSON val = case (SubscriptionTransferDataDestination'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SubscriptionTransferDataDestination'Account Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
