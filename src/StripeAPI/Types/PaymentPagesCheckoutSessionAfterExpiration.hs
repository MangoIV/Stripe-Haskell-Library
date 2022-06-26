{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentPagesCheckoutSessionAfterExpiration
module StripeAPI.Types.PaymentPagesCheckoutSessionAfterExpiration where

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
import {-# SOURCE #-} StripeAPI.Types.PaymentPagesCheckoutSessionAfterExpirationRecovery
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_pages_checkout_session_after_expiration@ in the specification.
data PaymentPagesCheckoutSessionAfterExpiration = PaymentPagesCheckoutSessionAfterExpiration
  { -- | recovery: When set, configuration used to recover the Checkout Session on expiry.
    paymentPagesCheckoutSessionAfterExpirationRecovery :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentPagesCheckoutSessionAfterExpirationRecovery'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionAfterExpiration where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("recovery" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionAfterExpirationRecovery obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("recovery" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionAfterExpirationRecovery obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionAfterExpiration where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentPagesCheckoutSessionAfterExpiration" (\obj -> GHC.Base.pure PaymentPagesCheckoutSessionAfterExpiration GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "recovery"))

-- | Create a new 'PaymentPagesCheckoutSessionAfterExpiration' with all required fields.
mkPaymentPagesCheckoutSessionAfterExpiration :: PaymentPagesCheckoutSessionAfterExpiration
mkPaymentPagesCheckoutSessionAfterExpiration = PaymentPagesCheckoutSessionAfterExpiration {paymentPagesCheckoutSessionAfterExpirationRecovery = GHC.Maybe.Nothing}

-- | Defines the object schema located at @components.schemas.payment_pages_checkout_session_after_expiration.properties.recovery.anyOf@ in the specification.
--
-- When set, configuration used to recover the Checkout Session on expiry.
data PaymentPagesCheckoutSessionAfterExpirationRecovery'NonNullable = PaymentPagesCheckoutSessionAfterExpirationRecovery'NonNullable
  { -- | allow_promotion_codes: Enables user redeemable promotion codes on the recovered Checkout Sessions. Defaults to \`false\`
    paymentPagesCheckoutSessionAfterExpirationRecovery'NonNullableAllowPromotionCodes :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | enabled: If \`true\`, a recovery url will be generated to recover this Checkout Session if it
    -- expires before a transaction is completed. It will be attached to the
    -- Checkout Session object upon expiration.
    paymentPagesCheckoutSessionAfterExpirationRecovery'NonNullableEnabled :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | expires_at: The timestamp at which the recovery URL will expire.
    paymentPagesCheckoutSessionAfterExpirationRecovery'NonNullableExpiresAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | url: URL that creates a new Checkout Session when clicked that is a copy of this expired Checkout Session
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentPagesCheckoutSessionAfterExpirationRecovery'NonNullableUrl :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionAfterExpirationRecovery'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("allow_promotion_codes" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionAfterExpirationRecovery'NonNullableAllowPromotionCodes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enabled" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionAfterExpirationRecovery'NonNullableEnabled obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionAfterExpirationRecovery'NonNullableExpiresAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("url" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionAfterExpirationRecovery'NonNullableUrl obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("allow_promotion_codes" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionAfterExpirationRecovery'NonNullableAllowPromotionCodes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enabled" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionAfterExpirationRecovery'NonNullableEnabled obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionAfterExpirationRecovery'NonNullableExpiresAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("url" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionAfterExpirationRecovery'NonNullableUrl obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionAfterExpirationRecovery'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentPagesCheckoutSessionAfterExpirationRecovery'NonNullable" (\obj -> (((GHC.Base.pure PaymentPagesCheckoutSessionAfterExpirationRecovery'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "allow_promotion_codes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expires_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "url"))

-- | Create a new 'PaymentPagesCheckoutSessionAfterExpirationRecovery'NonNullable' with all required fields.
mkPaymentPagesCheckoutSessionAfterExpirationRecovery'NonNullable :: PaymentPagesCheckoutSessionAfterExpirationRecovery'NonNullable
mkPaymentPagesCheckoutSessionAfterExpirationRecovery'NonNullable =
  PaymentPagesCheckoutSessionAfterExpirationRecovery'NonNullable
    { paymentPagesCheckoutSessionAfterExpirationRecovery'NonNullableAllowPromotionCodes = GHC.Maybe.Nothing,
      paymentPagesCheckoutSessionAfterExpirationRecovery'NonNullableEnabled = GHC.Maybe.Nothing,
      paymentPagesCheckoutSessionAfterExpirationRecovery'NonNullableExpiresAt = GHC.Maybe.Nothing,
      paymentPagesCheckoutSessionAfterExpirationRecovery'NonNullableUrl = GHC.Maybe.Nothing
    }
