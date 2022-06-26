{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodOptionsWechatPay
module StripeAPI.Types.PaymentMethodOptionsWechatPay where

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

-- | Defines the object schema located at @components.schemas.payment_method_options_wechat_pay@ in the specification.
data PaymentMethodOptionsWechatPay = PaymentMethodOptionsWechatPay
  { -- | app_id: The app ID registered with WeChat Pay. Only required when client is ios or android.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodOptionsWechatPayAppId :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | client: The client type that the end customer will pay from
    paymentMethodOptionsWechatPayClient :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodOptionsWechatPayClient'NonNullable)),
    -- | setup_future_usage: Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
    --
    -- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
    --
    -- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
    paymentMethodOptionsWechatPaySetupFutureUsage :: (GHC.Maybe.Maybe PaymentMethodOptionsWechatPaySetupFutureUsage')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsWechatPay where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("app_id" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsWechatPayAppId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("client" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsWechatPayClient obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsWechatPaySetupFutureUsage obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("app_id" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsWechatPayAppId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("client" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsWechatPayClient obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsWechatPaySetupFutureUsage obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsWechatPay where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodOptionsWechatPay" (\obj -> ((GHC.Base.pure PaymentMethodOptionsWechatPay GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "app_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "client")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "setup_future_usage"))

-- | Create a new 'PaymentMethodOptionsWechatPay' with all required fields.
mkPaymentMethodOptionsWechatPay :: PaymentMethodOptionsWechatPay
mkPaymentMethodOptionsWechatPay =
  PaymentMethodOptionsWechatPay
    { paymentMethodOptionsWechatPayAppId = GHC.Maybe.Nothing,
      paymentMethodOptionsWechatPayClient = GHC.Maybe.Nothing,
      paymentMethodOptionsWechatPaySetupFutureUsage = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_method_options_wechat_pay.properties.client@ in the specification.
--
-- The client type that the end customer will pay from
data PaymentMethodOptionsWechatPayClient'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodOptionsWechatPayClient'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodOptionsWechatPayClient'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"android"@
    PaymentMethodOptionsWechatPayClient'NonNullableEnumAndroid
  | -- | Represents the JSON value @"ios"@
    PaymentMethodOptionsWechatPayClient'NonNullableEnumIos
  | -- | Represents the JSON value @"web"@
    PaymentMethodOptionsWechatPayClient'NonNullableEnumWeb
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsWechatPayClient'NonNullable where
  toJSON (PaymentMethodOptionsWechatPayClient'NonNullableOther val) = val
  toJSON (PaymentMethodOptionsWechatPayClient'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodOptionsWechatPayClient'NonNullableEnumAndroid) = "android"
  toJSON (PaymentMethodOptionsWechatPayClient'NonNullableEnumIos) = "ios"
  toJSON (PaymentMethodOptionsWechatPayClient'NonNullableEnumWeb) = "web"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsWechatPayClient'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "android" -> PaymentMethodOptionsWechatPayClient'NonNullableEnumAndroid
            | val GHC.Classes.== "ios" -> PaymentMethodOptionsWechatPayClient'NonNullableEnumIos
            | val GHC.Classes.== "web" -> PaymentMethodOptionsWechatPayClient'NonNullableEnumWeb
            | GHC.Base.otherwise -> PaymentMethodOptionsWechatPayClient'NonNullableOther val
      )

-- | Defines the enum schema located at @components.schemas.payment_method_options_wechat_pay.properties.setup_future_usage@ in the specification.
--
-- Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
--
-- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
--
-- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
data PaymentMethodOptionsWechatPaySetupFutureUsage'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodOptionsWechatPaySetupFutureUsage'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodOptionsWechatPaySetupFutureUsage'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"none"@
    PaymentMethodOptionsWechatPaySetupFutureUsage'EnumNone
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsWechatPaySetupFutureUsage' where
  toJSON (PaymentMethodOptionsWechatPaySetupFutureUsage'Other val) = val
  toJSON (PaymentMethodOptionsWechatPaySetupFutureUsage'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodOptionsWechatPaySetupFutureUsage'EnumNone) = "none"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsWechatPaySetupFutureUsage' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "none" -> PaymentMethodOptionsWechatPaySetupFutureUsage'EnumNone
            | GHC.Base.otherwise -> PaymentMethodOptionsWechatPaySetupFutureUsage'Other val
      )
