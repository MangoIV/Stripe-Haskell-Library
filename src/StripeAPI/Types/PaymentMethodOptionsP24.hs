{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodOptionsP24
module StripeAPI.Types.PaymentMethodOptionsP24 where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
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

-- | Defines the object schema located at @components.schemas.payment_method_options_p24@ in the specification.
data PaymentMethodOptionsP24 = PaymentMethodOptionsP24
  { -- | setup_future_usage: Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
    --
    -- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
    --
    -- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
    paymentMethodOptionsP24SetupFutureUsage :: (GHC.Maybe.Maybe PaymentMethodOptionsP24SetupFutureUsage')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsP24 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsP24SetupFutureUsage obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsP24SetupFutureUsage obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsP24 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodOptionsP24" (\obj -> GHC.Base.pure PaymentMethodOptionsP24 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "setup_future_usage"))

-- | Create a new 'PaymentMethodOptionsP24' with all required fields.
mkPaymentMethodOptionsP24 :: PaymentMethodOptionsP24
mkPaymentMethodOptionsP24 = PaymentMethodOptionsP24 {paymentMethodOptionsP24SetupFutureUsage = GHC.Maybe.Nothing}

-- | Defines the enum schema located at @components.schemas.payment_method_options_p24.properties.setup_future_usage@ in the specification.
--
-- Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
--
-- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
--
-- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
data PaymentMethodOptionsP24SetupFutureUsage'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodOptionsP24SetupFutureUsage'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodOptionsP24SetupFutureUsage'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"none"@
    PaymentMethodOptionsP24SetupFutureUsage'EnumNone
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsP24SetupFutureUsage' where
  toJSON (PaymentMethodOptionsP24SetupFutureUsage'Other val) = val
  toJSON (PaymentMethodOptionsP24SetupFutureUsage'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodOptionsP24SetupFutureUsage'EnumNone) = "none"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsP24SetupFutureUsage' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "none" -> PaymentMethodOptionsP24SetupFutureUsage'EnumNone
            | GHC.Base.otherwise -> PaymentMethodOptionsP24SetupFutureUsage'Other val
      )
