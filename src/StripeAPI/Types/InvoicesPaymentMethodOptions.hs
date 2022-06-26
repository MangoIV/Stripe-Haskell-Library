{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema InvoicesPaymentMethodOptions
module StripeAPI.Types.InvoicesPaymentMethodOptions where

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
import {-# SOURCE #-} StripeAPI.Types.InvoicePaymentMethodOptionsAcssDebit
import {-# SOURCE #-} StripeAPI.Types.InvoicePaymentMethodOptionsAcssDebitMandateOptions
import {-# SOURCE #-} StripeAPI.Types.InvoicePaymentMethodOptionsBancontact
import {-# SOURCE #-} StripeAPI.Types.InvoicePaymentMethodOptionsCard
import {-# SOURCE #-} StripeAPI.Types.InvoicePaymentMethodOptionsCustomerBalance
import {-# SOURCE #-} StripeAPI.Types.InvoicePaymentMethodOptionsCustomerBalanceBankTransfer
import {-# SOURCE #-} StripeAPI.Types.InvoicePaymentMethodOptionsUsBankAccount
import {-# SOURCE #-} StripeAPI.Types.InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.invoices_payment_method_options@ in the specification.
data InvoicesPaymentMethodOptions = InvoicesPaymentMethodOptions
  { -- | acss_debit: If paying by \`acss_debit\`, this sub-hash contains details about the Canadian pre-authorized debit payment method options to pass to the invoice’s PaymentIntent.
    invoicesPaymentMethodOptionsAcssDebit :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable InvoicesPaymentMethodOptionsAcssDebit'NonNullable)),
    -- | bancontact: If paying by \`bancontact\`, this sub-hash contains details about the Bancontact payment method options to pass to the invoice’s PaymentIntent.
    invoicesPaymentMethodOptionsBancontact :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable InvoicesPaymentMethodOptionsBancontact'NonNullable)),
    -- | card: If paying by \`card\`, this sub-hash contains details about the Card payment method options to pass to the invoice’s PaymentIntent.
    invoicesPaymentMethodOptionsCard :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable InvoicesPaymentMethodOptionsCard'NonNullable)),
    -- | customer_balance: If paying by \`customer_balance\`, this sub-hash contains details about the Bank transfer payment method options to pass to the invoice’s PaymentIntent.
    invoicesPaymentMethodOptionsCustomerBalance :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable InvoicesPaymentMethodOptionsCustomerBalance'NonNullable)),
    -- | konbini: If paying by \`konbini\`, this sub-hash contains details about the Konbini payment method options to pass to the invoice’s PaymentIntent.
    invoicesPaymentMethodOptionsKonbini :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Aeson.Types.Internal.Object)),
    -- | us_bank_account: If paying by \`us_bank_account\`, this sub-hash contains details about the ACH direct debit payment method options to pass to the invoice’s PaymentIntent.
    invoicesPaymentMethodOptionsUsBankAccount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable InvoicesPaymentMethodOptionsUsBankAccount'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON InvoicesPaymentMethodOptions where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("acss_debit" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsAcssDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bancontact" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsBancontact obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsCard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer_balance" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsCustomerBalance obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("konbini" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsKonbini obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsUsBankAccount obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("acss_debit" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsAcssDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bancontact" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsBancontact obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsCard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer_balance" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsCustomerBalance obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("konbini" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsKonbini obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsUsBankAccount obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON InvoicesPaymentMethodOptions where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoicesPaymentMethodOptions" (\obj -> (((((GHC.Base.pure InvoicesPaymentMethodOptions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "acss_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bancontact")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "customer_balance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "konbini")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "us_bank_account"))

-- | Create a new 'InvoicesPaymentMethodOptions' with all required fields.
mkInvoicesPaymentMethodOptions :: InvoicesPaymentMethodOptions
mkInvoicesPaymentMethodOptions =
  InvoicesPaymentMethodOptions
    { invoicesPaymentMethodOptionsAcssDebit = GHC.Maybe.Nothing,
      invoicesPaymentMethodOptionsBancontact = GHC.Maybe.Nothing,
      invoicesPaymentMethodOptionsCard = GHC.Maybe.Nothing,
      invoicesPaymentMethodOptionsCustomerBalance = GHC.Maybe.Nothing,
      invoicesPaymentMethodOptionsKonbini = GHC.Maybe.Nothing,
      invoicesPaymentMethodOptionsUsBankAccount = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.invoices_payment_method_options.properties.acss_debit.anyOf@ in the specification.
--
-- If paying by \\\`acss_debit\\\`, this sub-hash contains details about the Canadian pre-authorized debit payment method options to pass to the invoice’s PaymentIntent.
data InvoicesPaymentMethodOptionsAcssDebit'NonNullable = InvoicesPaymentMethodOptionsAcssDebit'NonNullable
  { -- | mandate_options:
    invoicesPaymentMethodOptionsAcssDebit'NonNullableMandateOptions :: (GHC.Maybe.Maybe InvoicePaymentMethodOptionsAcssDebitMandateOptions),
    -- | verification_method: Bank account verification method.
    invoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod :: (GHC.Maybe.Maybe InvoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON InvoicesPaymentMethodOptionsAcssDebit'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mandate_options" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsAcssDebit'NonNullableMandateOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mandate_options" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsAcssDebit'NonNullableMandateOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON InvoicesPaymentMethodOptionsAcssDebit'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoicesPaymentMethodOptionsAcssDebit'NonNullable" (\obj -> (GHC.Base.pure InvoicesPaymentMethodOptionsAcssDebit'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "mandate_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verification_method"))

-- | Create a new 'InvoicesPaymentMethodOptionsAcssDebit'NonNullable' with all required fields.
mkInvoicesPaymentMethodOptionsAcssDebit'NonNullable :: InvoicesPaymentMethodOptionsAcssDebit'NonNullable
mkInvoicesPaymentMethodOptionsAcssDebit'NonNullable =
  InvoicesPaymentMethodOptionsAcssDebit'NonNullable
    { invoicesPaymentMethodOptionsAcssDebit'NonNullableMandateOptions = GHC.Maybe.Nothing,
      invoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.invoices_payment_method_options.properties.acss_debit.anyOf.properties.verification_method@ in the specification.
--
-- Bank account verification method.
data InvoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    InvoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    InvoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"automatic"@
    InvoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod'EnumAutomatic
  | -- | Represents the JSON value @"instant"@
    InvoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod'EnumInstant
  | -- | Represents the JSON value @"microdeposits"@
    InvoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod'EnumMicrodeposits
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON InvoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod' where
  toJSON (InvoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod'Other val) = val
  toJSON (InvoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (InvoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod'EnumAutomatic) = "automatic"
  toJSON (InvoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod'EnumInstant) = "instant"
  toJSON (InvoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod'EnumMicrodeposits) = "microdeposits"

instance Data.Aeson.Types.FromJSON.FromJSON InvoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "automatic" -> InvoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod'EnumAutomatic
            | val GHC.Classes.== "instant" -> InvoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod'EnumInstant
            | val GHC.Classes.== "microdeposits" -> InvoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod'EnumMicrodeposits
            | GHC.Base.otherwise -> InvoicesPaymentMethodOptionsAcssDebit'NonNullableVerificationMethod'Other val
      )

-- | Defines the object schema located at @components.schemas.invoices_payment_method_options.properties.bancontact.anyOf@ in the specification.
--
-- If paying by \\\`bancontact\\\`, this sub-hash contains details about the Bancontact payment method options to pass to the invoice’s PaymentIntent.
data InvoicesPaymentMethodOptionsBancontact'NonNullable = InvoicesPaymentMethodOptionsBancontact'NonNullable
  { -- | preferred_language: Preferred language of the Bancontact authorization page that the customer is redirected to.
    invoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage :: (GHC.Maybe.Maybe InvoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON InvoicesPaymentMethodOptionsBancontact'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_language" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_language" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON InvoicesPaymentMethodOptionsBancontact'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoicesPaymentMethodOptionsBancontact'NonNullable" (\obj -> GHC.Base.pure InvoicesPaymentMethodOptionsBancontact'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "preferred_language"))

-- | Create a new 'InvoicesPaymentMethodOptionsBancontact'NonNullable' with all required fields.
mkInvoicesPaymentMethodOptionsBancontact'NonNullable :: InvoicesPaymentMethodOptionsBancontact'NonNullable
mkInvoicesPaymentMethodOptionsBancontact'NonNullable = InvoicesPaymentMethodOptionsBancontact'NonNullable {invoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage = GHC.Maybe.Nothing}

-- | Defines the enum schema located at @components.schemas.invoices_payment_method_options.properties.bancontact.anyOf.properties.preferred_language@ in the specification.
--
-- Preferred language of the Bancontact authorization page that the customer is redirected to.
data InvoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    InvoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    InvoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"de"@
    InvoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage'EnumDe
  | -- | Represents the JSON value @"en"@
    InvoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage'EnumEn
  | -- | Represents the JSON value @"fr"@
    InvoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage'EnumFr
  | -- | Represents the JSON value @"nl"@
    InvoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage'EnumNl
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON InvoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage' where
  toJSON (InvoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage'Other val) = val
  toJSON (InvoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (InvoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage'EnumDe) = "de"
  toJSON (InvoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage'EnumEn) = "en"
  toJSON (InvoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage'EnumFr) = "fr"
  toJSON (InvoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage'EnumNl) = "nl"

instance Data.Aeson.Types.FromJSON.FromJSON InvoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "de" -> InvoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage'EnumDe
            | val GHC.Classes.== "en" -> InvoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage'EnumEn
            | val GHC.Classes.== "fr" -> InvoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage'EnumFr
            | val GHC.Classes.== "nl" -> InvoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage'EnumNl
            | GHC.Base.otherwise -> InvoicesPaymentMethodOptionsBancontact'NonNullablePreferredLanguage'Other val
      )

-- | Defines the object schema located at @components.schemas.invoices_payment_method_options.properties.card.anyOf@ in the specification.
--
-- If paying by \\\`card\\\`, this sub-hash contains details about the Card payment method options to pass to the invoice’s PaymentIntent.
data InvoicesPaymentMethodOptionsCard'NonNullable = InvoicesPaymentMethodOptionsCard'NonNullable
  { -- | request_three_d_secure: We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https:\/\/stripe.com\/docs\/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Read our guide on [manually requesting 3D Secure](https:\/\/stripe.com\/docs\/payments\/3d-secure\#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
    invoicesPaymentMethodOptionsCard'NonNullableRequestThreeDSecure :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable InvoicesPaymentMethodOptionsCard'NonNullableRequestThreeDSecure'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON InvoicesPaymentMethodOptionsCard'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("request_three_d_secure" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsCard'NonNullableRequestThreeDSecure obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("request_three_d_secure" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsCard'NonNullableRequestThreeDSecure obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON InvoicesPaymentMethodOptionsCard'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoicesPaymentMethodOptionsCard'NonNullable" (\obj -> GHC.Base.pure InvoicesPaymentMethodOptionsCard'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "request_three_d_secure"))

-- | Create a new 'InvoicesPaymentMethodOptionsCard'NonNullable' with all required fields.
mkInvoicesPaymentMethodOptionsCard'NonNullable :: InvoicesPaymentMethodOptionsCard'NonNullable
mkInvoicesPaymentMethodOptionsCard'NonNullable = InvoicesPaymentMethodOptionsCard'NonNullable {invoicesPaymentMethodOptionsCard'NonNullableRequestThreeDSecure = GHC.Maybe.Nothing}

-- | Defines the enum schema located at @components.schemas.invoices_payment_method_options.properties.card.anyOf.properties.request_three_d_secure@ in the specification.
--
-- We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https:\/\/stripe.com\/docs\/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Read our guide on [manually requesting 3D Secure](https:\/\/stripe.com\/docs\/payments\/3d-secure\#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
data InvoicesPaymentMethodOptionsCard'NonNullableRequestThreeDSecure'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    InvoicesPaymentMethodOptionsCard'NonNullableRequestThreeDSecure'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    InvoicesPaymentMethodOptionsCard'NonNullableRequestThreeDSecure'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"any"@
    InvoicesPaymentMethodOptionsCard'NonNullableRequestThreeDSecure'NonNullableEnumAny
  | -- | Represents the JSON value @"automatic"@
    InvoicesPaymentMethodOptionsCard'NonNullableRequestThreeDSecure'NonNullableEnumAutomatic
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON InvoicesPaymentMethodOptionsCard'NonNullableRequestThreeDSecure'NonNullable where
  toJSON (InvoicesPaymentMethodOptionsCard'NonNullableRequestThreeDSecure'NonNullableOther val) = val
  toJSON (InvoicesPaymentMethodOptionsCard'NonNullableRequestThreeDSecure'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (InvoicesPaymentMethodOptionsCard'NonNullableRequestThreeDSecure'NonNullableEnumAny) = "any"
  toJSON (InvoicesPaymentMethodOptionsCard'NonNullableRequestThreeDSecure'NonNullableEnumAutomatic) = "automatic"

instance Data.Aeson.Types.FromJSON.FromJSON InvoicesPaymentMethodOptionsCard'NonNullableRequestThreeDSecure'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "any" -> InvoicesPaymentMethodOptionsCard'NonNullableRequestThreeDSecure'NonNullableEnumAny
            | val GHC.Classes.== "automatic" -> InvoicesPaymentMethodOptionsCard'NonNullableRequestThreeDSecure'NonNullableEnumAutomatic
            | GHC.Base.otherwise -> InvoicesPaymentMethodOptionsCard'NonNullableRequestThreeDSecure'NonNullableOther val
      )

-- | Defines the object schema located at @components.schemas.invoices_payment_method_options.properties.customer_balance.anyOf@ in the specification.
--
-- If paying by \\\`customer_balance\\\`, this sub-hash contains details about the Bank transfer payment method options to pass to the invoice’s PaymentIntent.
data InvoicesPaymentMethodOptionsCustomerBalance'NonNullable = InvoicesPaymentMethodOptionsCustomerBalance'NonNullable
  { -- | bank_transfer:
    invoicesPaymentMethodOptionsCustomerBalance'NonNullableBankTransfer :: (GHC.Maybe.Maybe InvoicePaymentMethodOptionsCustomerBalanceBankTransfer),
    -- | funding_type: The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: \`bank_transfer\`.
    invoicesPaymentMethodOptionsCustomerBalance'NonNullableFundingType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable InvoicesPaymentMethodOptionsCustomerBalance'NonNullableFundingType'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON InvoicesPaymentMethodOptionsCustomerBalance'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_transfer" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsCustomerBalance'NonNullableBankTransfer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("funding_type" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsCustomerBalance'NonNullableFundingType obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_transfer" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsCustomerBalance'NonNullableBankTransfer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("funding_type" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsCustomerBalance'NonNullableFundingType obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON InvoicesPaymentMethodOptionsCustomerBalance'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoicesPaymentMethodOptionsCustomerBalance'NonNullable" (\obj -> (GHC.Base.pure InvoicesPaymentMethodOptionsCustomerBalance'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bank_transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "funding_type"))

-- | Create a new 'InvoicesPaymentMethodOptionsCustomerBalance'NonNullable' with all required fields.
mkInvoicesPaymentMethodOptionsCustomerBalance'NonNullable :: InvoicesPaymentMethodOptionsCustomerBalance'NonNullable
mkInvoicesPaymentMethodOptionsCustomerBalance'NonNullable =
  InvoicesPaymentMethodOptionsCustomerBalance'NonNullable
    { invoicesPaymentMethodOptionsCustomerBalance'NonNullableBankTransfer = GHC.Maybe.Nothing,
      invoicesPaymentMethodOptionsCustomerBalance'NonNullableFundingType = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.invoices_payment_method_options.properties.customer_balance.anyOf.properties.funding_type@ in the specification.
--
-- The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: \`bank_transfer\`.
data InvoicesPaymentMethodOptionsCustomerBalance'NonNullableFundingType'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    InvoicesPaymentMethodOptionsCustomerBalance'NonNullableFundingType'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    InvoicesPaymentMethodOptionsCustomerBalance'NonNullableFundingType'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"bank_transfer"@
    InvoicesPaymentMethodOptionsCustomerBalance'NonNullableFundingType'NonNullableEnumBankTransfer
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON InvoicesPaymentMethodOptionsCustomerBalance'NonNullableFundingType'NonNullable where
  toJSON (InvoicesPaymentMethodOptionsCustomerBalance'NonNullableFundingType'NonNullableOther val) = val
  toJSON (InvoicesPaymentMethodOptionsCustomerBalance'NonNullableFundingType'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (InvoicesPaymentMethodOptionsCustomerBalance'NonNullableFundingType'NonNullableEnumBankTransfer) = "bank_transfer"

instance Data.Aeson.Types.FromJSON.FromJSON InvoicesPaymentMethodOptionsCustomerBalance'NonNullableFundingType'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "bank_transfer" -> InvoicesPaymentMethodOptionsCustomerBalance'NonNullableFundingType'NonNullableEnumBankTransfer
            | GHC.Base.otherwise -> InvoicesPaymentMethodOptionsCustomerBalance'NonNullableFundingType'NonNullableOther val
      )

-- | Defines the object schema located at @components.schemas.invoices_payment_method_options.properties.us_bank_account.anyOf@ in the specification.
--
-- If paying by \\\`us_bank_account\\\`, this sub-hash contains details about the ACH direct debit payment method options to pass to the invoice’s PaymentIntent.
data InvoicesPaymentMethodOptionsUsBankAccount'NonNullable = InvoicesPaymentMethodOptionsUsBankAccount'NonNullable
  { -- | financial_connections:
    invoicesPaymentMethodOptionsUsBankAccount'NonNullableFinancialConnections :: (GHC.Maybe.Maybe InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions),
    -- | verification_method: Bank account verification method.
    invoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod :: (GHC.Maybe.Maybe InvoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON InvoicesPaymentMethodOptionsUsBankAccount'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_connections" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsUsBankAccount'NonNullableFinancialConnections obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_connections" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsUsBankAccount'NonNullableFinancialConnections obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (invoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON InvoicesPaymentMethodOptionsUsBankAccount'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoicesPaymentMethodOptionsUsBankAccount'NonNullable" (\obj -> (GHC.Base.pure InvoicesPaymentMethodOptionsUsBankAccount'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "financial_connections")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verification_method"))

-- | Create a new 'InvoicesPaymentMethodOptionsUsBankAccount'NonNullable' with all required fields.
mkInvoicesPaymentMethodOptionsUsBankAccount'NonNullable :: InvoicesPaymentMethodOptionsUsBankAccount'NonNullable
mkInvoicesPaymentMethodOptionsUsBankAccount'NonNullable =
  InvoicesPaymentMethodOptionsUsBankAccount'NonNullable
    { invoicesPaymentMethodOptionsUsBankAccount'NonNullableFinancialConnections = GHC.Maybe.Nothing,
      invoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.invoices_payment_method_options.properties.us_bank_account.anyOf.properties.verification_method@ in the specification.
--
-- Bank account verification method.
data InvoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    InvoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    InvoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"automatic"@
    InvoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod'EnumAutomatic
  | -- | Represents the JSON value @"instant"@
    InvoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod'EnumInstant
  | -- | Represents the JSON value @"microdeposits"@
    InvoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod'EnumMicrodeposits
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON InvoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod' where
  toJSON (InvoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod'Other val) = val
  toJSON (InvoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (InvoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod'EnumAutomatic) = "automatic"
  toJSON (InvoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod'EnumInstant) = "instant"
  toJSON (InvoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod'EnumMicrodeposits) = "microdeposits"

instance Data.Aeson.Types.FromJSON.FromJSON InvoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "automatic" -> InvoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod'EnumAutomatic
            | val GHC.Classes.== "instant" -> InvoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod'EnumInstant
            | val GHC.Classes.== "microdeposits" -> InvoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod'EnumMicrodeposits
            | GHC.Base.otherwise -> InvoicesPaymentMethodOptionsUsBankAccount'NonNullableVerificationMethod'Other val
      )
