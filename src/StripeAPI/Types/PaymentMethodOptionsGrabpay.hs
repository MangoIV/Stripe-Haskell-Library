{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodOptionsGrabpay
module StripeAPI.Types.PaymentMethodOptionsGrabpay where

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

-- | Defines the object schema located at @components.schemas.payment_method_options_grabpay@ in the specification.
data PaymentMethodOptionsGrabpay = PaymentMethodOptionsGrabpay
  { -- | setup_future_usage: Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
    --
    -- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
    --
    -- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
    paymentMethodOptionsGrabpaySetupFutureUsage :: (GHC.Maybe.Maybe PaymentMethodOptionsGrabpaySetupFutureUsage')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsGrabpay where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsGrabpaySetupFutureUsage obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsGrabpaySetupFutureUsage obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsGrabpay where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodOptionsGrabpay" (\obj -> GHC.Base.pure PaymentMethodOptionsGrabpay GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "setup_future_usage"))

-- | Create a new 'PaymentMethodOptionsGrabpay' with all required fields.
mkPaymentMethodOptionsGrabpay :: PaymentMethodOptionsGrabpay
mkPaymentMethodOptionsGrabpay = PaymentMethodOptionsGrabpay {paymentMethodOptionsGrabpaySetupFutureUsage = GHC.Maybe.Nothing}

-- | Defines the enum schema located at @components.schemas.payment_method_options_grabpay.properties.setup_future_usage@ in the specification.
--
-- Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
--
-- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
--
-- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
data PaymentMethodOptionsGrabpaySetupFutureUsage'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodOptionsGrabpaySetupFutureUsage'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodOptionsGrabpaySetupFutureUsage'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"none"@
    PaymentMethodOptionsGrabpaySetupFutureUsage'EnumNone
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsGrabpaySetupFutureUsage' where
  toJSON (PaymentMethodOptionsGrabpaySetupFutureUsage'Other val) = val
  toJSON (PaymentMethodOptionsGrabpaySetupFutureUsage'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodOptionsGrabpaySetupFutureUsage'EnumNone) = "none"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsGrabpaySetupFutureUsage' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "none" -> PaymentMethodOptionsGrabpaySetupFutureUsage'EnumNone
            | GHC.Base.otherwise -> PaymentMethodOptionsGrabpaySetupFutureUsage'Other val
      )
