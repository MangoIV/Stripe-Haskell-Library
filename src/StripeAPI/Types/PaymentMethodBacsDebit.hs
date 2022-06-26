{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodBacsDebit
module StripeAPI.Types.PaymentMethodBacsDebit where

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

-- | Defines the object schema located at @components.schemas.payment_method_bacs_debit@ in the specification.
data PaymentMethodBacsDebit = PaymentMethodBacsDebit
  { -- | fingerprint: Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodBacsDebitFingerprint :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | last4: Last four digits of the bank account number.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodBacsDebitLast4 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | sort_code: Sort code of the bank account. (e.g., \`10-20-30\`)
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodBacsDebitSortCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodBacsDebit where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (paymentMethodBacsDebitFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last4" Data.Aeson.Types.ToJSON..=)) (paymentMethodBacsDebitLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sort_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodBacsDebitSortCode obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (paymentMethodBacsDebitFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last4" Data.Aeson.Types.ToJSON..=)) (paymentMethodBacsDebitLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sort_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodBacsDebitSortCode obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodBacsDebit where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodBacsDebit" (\obj -> ((GHC.Base.pure PaymentMethodBacsDebit GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sort_code"))

-- | Create a new 'PaymentMethodBacsDebit' with all required fields.
mkPaymentMethodBacsDebit :: PaymentMethodBacsDebit
mkPaymentMethodBacsDebit =
  PaymentMethodBacsDebit
    { paymentMethodBacsDebitFingerprint = GHC.Maybe.Nothing,
      paymentMethodBacsDebitLast4 = GHC.Maybe.Nothing,
      paymentMethodBacsDebitSortCode = GHC.Maybe.Nothing
    }
