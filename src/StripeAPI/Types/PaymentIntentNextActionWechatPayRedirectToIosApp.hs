{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentIntentNextActionWechatPayRedirectToIosApp
module StripeAPI.Types.PaymentIntentNextActionWechatPayRedirectToIosApp where

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

-- | Defines the object schema located at @components.schemas.payment_intent_next_action_wechat_pay_redirect_to_ios_app@ in the specification.
data PaymentIntentNextActionWechatPayRedirectToIosApp = PaymentIntentNextActionWechatPayRedirectToIosApp
  { -- | native_url: An universal link that redirect to WeChat Pay app
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentIntentNextActionWechatPayRedirectToIosAppNativeUrl :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentNextActionWechatPayRedirectToIosApp where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["native_url" Data.Aeson.Types.ToJSON..= paymentIntentNextActionWechatPayRedirectToIosAppNativeUrl obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["native_url" Data.Aeson.Types.ToJSON..= paymentIntentNextActionWechatPayRedirectToIosAppNativeUrl obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentNextActionWechatPayRedirectToIosApp where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentNextActionWechatPayRedirectToIosApp" (\obj -> GHC.Base.pure PaymentIntentNextActionWechatPayRedirectToIosApp GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "native_url"))

-- | Create a new 'PaymentIntentNextActionWechatPayRedirectToIosApp' with all required fields.
mkPaymentIntentNextActionWechatPayRedirectToIosApp ::
  -- | 'paymentIntentNextActionWechatPayRedirectToIosAppNativeUrl'
  Data.Text.Internal.Text ->
  PaymentIntentNextActionWechatPayRedirectToIosApp
mkPaymentIntentNextActionWechatPayRedirectToIosApp paymentIntentNextActionWechatPayRedirectToIosAppNativeUrl = PaymentIntentNextActionWechatPayRedirectToIosApp {paymentIntentNextActionWechatPayRedirectToIosAppNativeUrl = paymentIntentNextActionWechatPayRedirectToIosAppNativeUrl}
