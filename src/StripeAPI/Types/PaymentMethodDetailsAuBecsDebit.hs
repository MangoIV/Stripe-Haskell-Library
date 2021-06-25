{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodDetailsAuBecsDebit
module StripeAPI.Types.PaymentMethodDetailsAuBecsDebit where

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

-- | Defines the object schema located at @components.schemas.payment_method_details_au_becs_debit@ in the specification.
data PaymentMethodDetailsAuBecsDebit = PaymentMethodDetailsAuBecsDebit
  { -- | bsb_number: Bank-State-Branch number of the bank account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsAuBecsDebitBsbNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | fingerprint: Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsAuBecsDebitFingerprint :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | last4: Last four digits of the bank account number.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsAuBecsDebitLast4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | mandate: ID of the mandate used to make this payment.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsAuBecsDebitMandate :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsAuBecsDebit where
  toJSON obj = Data.Aeson.Types.Internal.object ("bsb_number" Data.Aeson.Types.ToJSON..= paymentMethodDetailsAuBecsDebitBsbNumber obj : "fingerprint" Data.Aeson.Types.ToJSON..= paymentMethodDetailsAuBecsDebitFingerprint obj : "last4" Data.Aeson.Types.ToJSON..= paymentMethodDetailsAuBecsDebitLast4 obj : "mandate" Data.Aeson.Types.ToJSON..= paymentMethodDetailsAuBecsDebitMandate obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("bsb_number" Data.Aeson.Types.ToJSON..= paymentMethodDetailsAuBecsDebitBsbNumber obj) GHC.Base.<> (("fingerprint" Data.Aeson.Types.ToJSON..= paymentMethodDetailsAuBecsDebitFingerprint obj) GHC.Base.<> (("last4" Data.Aeson.Types.ToJSON..= paymentMethodDetailsAuBecsDebitLast4 obj) GHC.Base.<> ("mandate" Data.Aeson.Types.ToJSON..= paymentMethodDetailsAuBecsDebitMandate obj))))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsAuBecsDebit where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsAuBecsDebit" (\obj -> (((GHC.Base.pure PaymentMethodDetailsAuBecsDebit GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bsb_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate"))

-- | Create a new 'PaymentMethodDetailsAuBecsDebit' with all required fields.
mkPaymentMethodDetailsAuBecsDebit :: PaymentMethodDetailsAuBecsDebit
mkPaymentMethodDetailsAuBecsDebit =
  PaymentMethodDetailsAuBecsDebit
    { paymentMethodDetailsAuBecsDebitBsbNumber = GHC.Maybe.Nothing,
      paymentMethodDetailsAuBecsDebitFingerprint = GHC.Maybe.Nothing,
      paymentMethodDetailsAuBecsDebitLast4 = GHC.Maybe.Nothing,
      paymentMethodDetailsAuBecsDebitMandate = GHC.Maybe.Nothing
    }
