{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodDetailsInteracPresentReceipt
module StripeAPI.Types.PaymentMethodDetailsInteracPresentReceipt where

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

-- | Defines the object schema located at @components.schemas.payment_method_details_interac_present_receipt@ in the specification.
data PaymentMethodDetailsInteracPresentReceipt = PaymentMethodDetailsInteracPresentReceipt
  { -- | account_type: The type of account being debited or credited
    paymentMethodDetailsInteracPresentReceiptAccountType :: (GHC.Maybe.Maybe PaymentMethodDetailsInteracPresentReceiptAccountType'),
    -- | application_cryptogram: EMV tag 9F26, cryptogram generated by the integrated circuit chip.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsInteracPresentReceiptApplicationCryptogram :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | application_preferred_name: Mnenomic of the Application Identifier.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsInteracPresentReceiptApplicationPreferredName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | authorization_code: Identifier for this transaction.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsInteracPresentReceiptAuthorizationCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | authorization_response_code: EMV tag 8A. A code returned by the card issuer.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsInteracPresentReceiptAuthorizationResponseCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | cardholder_verification_method: How the cardholder verified ownership of the card.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsInteracPresentReceiptCardholderVerificationMethod :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | dedicated_file_name: EMV tag 84. Similar to the application identifier stored on the integrated circuit chip.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsInteracPresentReceiptDedicatedFileName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | terminal_verification_results: The outcome of a series of EMV functions performed by the card reader.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsInteracPresentReceiptTerminalVerificationResults :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | transaction_status_information: An indication of various EMV functions performed during the transaction.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsInteracPresentReceiptTransactionStatusInformation :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsInteracPresentReceipt where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsInteracPresentReceiptAccountType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application_cryptogram" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsInteracPresentReceiptApplicationCryptogram obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application_preferred_name" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsInteracPresentReceiptApplicationPreferredName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authorization_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsInteracPresentReceiptAuthorizationCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authorization_response_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsInteracPresentReceiptAuthorizationResponseCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cardholder_verification_method" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsInteracPresentReceiptCardholderVerificationMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dedicated_file_name" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsInteracPresentReceiptDedicatedFileName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("terminal_verification_results" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsInteracPresentReceiptTerminalVerificationResults obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction_status_information" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsInteracPresentReceiptTransactionStatusInformation obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsInteracPresentReceiptAccountType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application_cryptogram" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsInteracPresentReceiptApplicationCryptogram obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application_preferred_name" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsInteracPresentReceiptApplicationPreferredName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authorization_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsInteracPresentReceiptAuthorizationCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authorization_response_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsInteracPresentReceiptAuthorizationResponseCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cardholder_verification_method" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsInteracPresentReceiptCardholderVerificationMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dedicated_file_name" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsInteracPresentReceiptDedicatedFileName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("terminal_verification_results" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsInteracPresentReceiptTerminalVerificationResults obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction_status_information" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsInteracPresentReceiptTransactionStatusInformation obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsInteracPresentReceipt where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsInteracPresentReceipt" (\obj -> ((((((((GHC.Base.pure PaymentMethodDetailsInteracPresentReceipt GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "application_cryptogram")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "application_preferred_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authorization_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authorization_response_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cardholder_verification_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "dedicated_file_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "terminal_verification_results")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transaction_status_information"))

-- | Create a new 'PaymentMethodDetailsInteracPresentReceipt' with all required fields.
mkPaymentMethodDetailsInteracPresentReceipt :: PaymentMethodDetailsInteracPresentReceipt
mkPaymentMethodDetailsInteracPresentReceipt =
  PaymentMethodDetailsInteracPresentReceipt
    { paymentMethodDetailsInteracPresentReceiptAccountType = GHC.Maybe.Nothing,
      paymentMethodDetailsInteracPresentReceiptApplicationCryptogram = GHC.Maybe.Nothing,
      paymentMethodDetailsInteracPresentReceiptApplicationPreferredName = GHC.Maybe.Nothing,
      paymentMethodDetailsInteracPresentReceiptAuthorizationCode = GHC.Maybe.Nothing,
      paymentMethodDetailsInteracPresentReceiptAuthorizationResponseCode = GHC.Maybe.Nothing,
      paymentMethodDetailsInteracPresentReceiptCardholderVerificationMethod = GHC.Maybe.Nothing,
      paymentMethodDetailsInteracPresentReceiptDedicatedFileName = GHC.Maybe.Nothing,
      paymentMethodDetailsInteracPresentReceiptTerminalVerificationResults = GHC.Maybe.Nothing,
      paymentMethodDetailsInteracPresentReceiptTransactionStatusInformation = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_method_details_interac_present_receipt.properties.account_type@ in the specification.
--
-- The type of account being debited or credited
data PaymentMethodDetailsInteracPresentReceiptAccountType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodDetailsInteracPresentReceiptAccountType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodDetailsInteracPresentReceiptAccountType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"checking"@
    PaymentMethodDetailsInteracPresentReceiptAccountType'EnumChecking
  | -- | Represents the JSON value @"savings"@
    PaymentMethodDetailsInteracPresentReceiptAccountType'EnumSavings
  | -- | Represents the JSON value @"unknown"@
    PaymentMethodDetailsInteracPresentReceiptAccountType'EnumUnknown
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsInteracPresentReceiptAccountType' where
  toJSON (PaymentMethodDetailsInteracPresentReceiptAccountType'Other val) = val
  toJSON (PaymentMethodDetailsInteracPresentReceiptAccountType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodDetailsInteracPresentReceiptAccountType'EnumChecking) = "checking"
  toJSON (PaymentMethodDetailsInteracPresentReceiptAccountType'EnumSavings) = "savings"
  toJSON (PaymentMethodDetailsInteracPresentReceiptAccountType'EnumUnknown) = "unknown"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsInteracPresentReceiptAccountType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "checking" -> PaymentMethodDetailsInteracPresentReceiptAccountType'EnumChecking
            | val GHC.Classes.== "savings" -> PaymentMethodDetailsInteracPresentReceiptAccountType'EnumSavings
            | val GHC.Classes.== "unknown" -> PaymentMethodDetailsInteracPresentReceiptAccountType'EnumUnknown
            | GHC.Base.otherwise -> PaymentMethodDetailsInteracPresentReceiptAccountType'Other val
      )
