{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentIntentNextActionDisplayOxxoDetails
module StripeAPI.Types.PaymentIntentNextActionDisplayOxxoDetails where

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

-- | Defines the object schema located at @components.schemas.payment_intent_next_action_display_oxxo_details@ in the specification.
data PaymentIntentNextActionDisplayOxxoDetails = PaymentIntentNextActionDisplayOxxoDetails
  { -- | expires_after: The timestamp after which the OXXO voucher expires.
    paymentIntentNextActionDisplayOxxoDetailsExpiresAfter :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | hosted_voucher_url: The URL for the hosted OXXO voucher page, which allows customers to view and print an OXXO voucher.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentIntentNextActionDisplayOxxoDetailsHostedVoucherUrl :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | number: OXXO reference number.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentIntentNextActionDisplayOxxoDetailsNumber :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentNextActionDisplayOxxoDetails where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_after" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionDisplayOxxoDetailsExpiresAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hosted_voucher_url" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionDisplayOxxoDetailsHostedVoucherUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("number" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionDisplayOxxoDetailsNumber obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_after" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionDisplayOxxoDetailsExpiresAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hosted_voucher_url" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionDisplayOxxoDetailsHostedVoucherUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("number" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionDisplayOxxoDetailsNumber obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentNextActionDisplayOxxoDetails where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentNextActionDisplayOxxoDetails" (\obj -> ((GHC.Base.pure PaymentIntentNextActionDisplayOxxoDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expires_after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "hosted_voucher_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "number"))

-- | Create a new 'PaymentIntentNextActionDisplayOxxoDetails' with all required fields.
mkPaymentIntentNextActionDisplayOxxoDetails :: PaymentIntentNextActionDisplayOxxoDetails
mkPaymentIntentNextActionDisplayOxxoDetails =
  PaymentIntentNextActionDisplayOxxoDetails
    { paymentIntentNextActionDisplayOxxoDetailsExpiresAfter = GHC.Maybe.Nothing,
      paymentIntentNextActionDisplayOxxoDetailsHostedVoucherUrl = GHC.Maybe.Nothing,
      paymentIntentNextActionDisplayOxxoDetailsNumber = GHC.Maybe.Nothing
    }
