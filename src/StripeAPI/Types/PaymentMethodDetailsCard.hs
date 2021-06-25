{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodDetailsCard
module StripeAPI.Types.PaymentMethodDetailsCard where

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
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodDetailsCardChecks
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodDetailsCardInstallments
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodDetailsCardInstallmentsPlan
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodDetailsCardWallet
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodDetailsCardWalletMasterpass
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodDetailsCardWalletVisaCheckout
import {-# SOURCE #-} StripeAPI.Types.ThreeDSecureDetails
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_method_details_card@ in the specification.
data PaymentMethodDetailsCard = PaymentMethodDetailsCard
  { -- | brand: Card brand. Can be \`amex\`, \`diners\`, \`discover\`, \`jcb\`, \`mastercard\`, \`unionpay\`, \`visa\`, or \`unknown\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsCardBrand :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | checks: Check results by Card networks on Card address and CVC at time of payment.
    paymentMethodDetailsCardChecks :: (GHC.Maybe.Maybe PaymentMethodDetailsCardChecks'),
    -- | country: Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you\'ve collected.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsCardCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | exp_month: Two-digit number representing the card\'s expiration month.
    paymentMethodDetailsCardExpMonth :: GHC.Types.Int,
    -- | exp_year: Four-digit number representing the card\'s expiration year.
    paymentMethodDetailsCardExpYear :: GHC.Types.Int,
    -- | fingerprint: Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
    --
    -- *Starting May 1, 2021, card fingerprint in India for Connect will change to allow two fingerprints for the same card --- one for India and one for the rest of the world.*
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsCardFingerprint :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | funding: Card funding type. Can be \`credit\`, \`debit\`, \`prepaid\`, or \`unknown\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsCardFunding :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | installments: Installment details for this payment (Mexico only).
    --
    -- For more information, see the [installments integration guide](https:\/\/stripe.com\/docs\/payments\/installments).
    paymentMethodDetailsCardInstallments :: (GHC.Maybe.Maybe PaymentMethodDetailsCardInstallments'),
    -- | last4: The last four digits of the card.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsCardLast4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | network: Identifies which network this charge was processed on. Can be \`amex\`, \`cartes_bancaires\`, \`diners\`, \`discover\`, \`interac\`, \`jcb\`, \`mastercard\`, \`unionpay\`, \`visa\`, or \`unknown\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsCardNetwork :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | three_d_secure: Populated if this transaction used 3D Secure authentication.
    paymentMethodDetailsCardThreeDSecure :: (GHC.Maybe.Maybe PaymentMethodDetailsCardThreeDSecure'),
    -- | wallet: If this Card is part of a card wallet, this contains the details of the card wallet.
    paymentMethodDetailsCardWallet :: (GHC.Maybe.Maybe PaymentMethodDetailsCardWallet')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCard where
  toJSON obj = Data.Aeson.Types.Internal.object ("brand" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardBrand obj : "checks" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardChecks obj : "country" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardCountry obj : "exp_month" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardExpMonth obj : "exp_year" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardExpYear obj : "fingerprint" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardFingerprint obj : "funding" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardFunding obj : "installments" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardInstallments obj : "last4" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardLast4 obj : "network" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardNetwork obj : "three_d_secure" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardThreeDSecure obj : "wallet" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWallet obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("brand" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardBrand obj) GHC.Base.<> (("checks" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardChecks obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardCountry obj) GHC.Base.<> (("exp_month" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardExpMonth obj) GHC.Base.<> (("exp_year" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardExpYear obj) GHC.Base.<> (("fingerprint" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardFingerprint obj) GHC.Base.<> (("funding" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardFunding obj) GHC.Base.<> (("installments" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardInstallments obj) GHC.Base.<> (("last4" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardLast4 obj) GHC.Base.<> (("network" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardNetwork obj) GHC.Base.<> (("three_d_secure" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardThreeDSecure obj) GHC.Base.<> ("wallet" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWallet obj))))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCard where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCard" (\obj -> (((((((((((GHC.Base.pure PaymentMethodDetailsCard GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "brand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "checks")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "funding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "installments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "network")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "three_d_secure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "wallet"))

-- | Create a new 'PaymentMethodDetailsCard' with all required fields.
mkPaymentMethodDetailsCard ::
  -- | 'paymentMethodDetailsCardExpMonth'
  GHC.Types.Int ->
  -- | 'paymentMethodDetailsCardExpYear'
  GHC.Types.Int ->
  PaymentMethodDetailsCard
mkPaymentMethodDetailsCard paymentMethodDetailsCardExpMonth paymentMethodDetailsCardExpYear =
  PaymentMethodDetailsCard
    { paymentMethodDetailsCardBrand = GHC.Maybe.Nothing,
      paymentMethodDetailsCardChecks = GHC.Maybe.Nothing,
      paymentMethodDetailsCardCountry = GHC.Maybe.Nothing,
      paymentMethodDetailsCardExpMonth = paymentMethodDetailsCardExpMonth,
      paymentMethodDetailsCardExpYear = paymentMethodDetailsCardExpYear,
      paymentMethodDetailsCardFingerprint = GHC.Maybe.Nothing,
      paymentMethodDetailsCardFunding = GHC.Maybe.Nothing,
      paymentMethodDetailsCardInstallments = GHC.Maybe.Nothing,
      paymentMethodDetailsCardLast4 = GHC.Maybe.Nothing,
      paymentMethodDetailsCardNetwork = GHC.Maybe.Nothing,
      paymentMethodDetailsCardThreeDSecure = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWallet = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.payment_method_details_card.properties.checks.anyOf@ in the specification.
--
-- Check results by Card networks on Card address and CVC at time of payment.
data PaymentMethodDetailsCardChecks' = PaymentMethodDetailsCardChecks'
  { -- | address_line1_check: If a address line1 was provided, results of the check, one of \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsCardChecks'AddressLine1Check :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_postal_code_check: If a address postal code was provided, results of the check, one of \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsCardChecks'AddressPostalCodeCheck :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | cvc_check: If a CVC was provided, results of the check, one of \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsCardChecks'CvcCheck :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardChecks' where
  toJSON obj = Data.Aeson.Types.Internal.object ("address_line1_check" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardChecks'AddressLine1Check obj : "address_postal_code_check" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardChecks'AddressPostalCodeCheck obj : "cvc_check" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardChecks'CvcCheck obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("address_line1_check" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardChecks'AddressLine1Check obj) GHC.Base.<> (("address_postal_code_check" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardChecks'AddressPostalCodeCheck obj) GHC.Base.<> ("cvc_check" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardChecks'CvcCheck obj)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardChecks' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCardChecks'" (\obj -> ((GHC.Base.pure PaymentMethodDetailsCardChecks' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_postal_code_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_check"))

-- | Create a new 'PaymentMethodDetailsCardChecks'' with all required fields.
mkPaymentMethodDetailsCardChecks' :: PaymentMethodDetailsCardChecks'
mkPaymentMethodDetailsCardChecks' =
  PaymentMethodDetailsCardChecks'
    { paymentMethodDetailsCardChecks'AddressLine1Check = GHC.Maybe.Nothing,
      paymentMethodDetailsCardChecks'AddressPostalCodeCheck = GHC.Maybe.Nothing,
      paymentMethodDetailsCardChecks'CvcCheck = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.payment_method_details_card.properties.installments.anyOf@ in the specification.
--
-- Installment details for this payment (Mexico only).
--
-- For more information, see the [installments integration guide](https:\\\/\\\/stripe.com\\\/docs\\\/payments\\\/installments).
data PaymentMethodDetailsCardInstallments' = PaymentMethodDetailsCardInstallments'
  { -- | plan: Installment plan selected for the payment.
    paymentMethodDetailsCardInstallments'Plan :: (GHC.Maybe.Maybe PaymentMethodDetailsCardInstallments'Plan')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardInstallments' where
  toJSON obj = Data.Aeson.Types.Internal.object ("plan" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardInstallments'Plan obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("plan" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardInstallments'Plan obj)

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardInstallments' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCardInstallments'" (\obj -> GHC.Base.pure PaymentMethodDetailsCardInstallments' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan"))

-- | Create a new 'PaymentMethodDetailsCardInstallments'' with all required fields.
mkPaymentMethodDetailsCardInstallments' :: PaymentMethodDetailsCardInstallments'
mkPaymentMethodDetailsCardInstallments' = PaymentMethodDetailsCardInstallments' {paymentMethodDetailsCardInstallments'Plan = GHC.Maybe.Nothing}

-- | Defines the object schema located at @components.schemas.payment_method_details_card.properties.installments.anyOf.properties.plan.anyOf@ in the specification.
--
-- Installment plan selected for the payment.
data PaymentMethodDetailsCardInstallments'Plan' = PaymentMethodDetailsCardInstallments'Plan'
  { -- | count: For \`fixed_count\` installment plans, this is the number of installment payments your customer will make to their credit card.
    paymentMethodDetailsCardInstallments'Plan'Count :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardInstallments'Plan' where
  toJSON obj = Data.Aeson.Types.Internal.object ("count" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardInstallments'Plan'Count obj : "interval" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "month" : "type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "fixed_count" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("count" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardInstallments'Plan'Count obj) GHC.Base.<> (("interval" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "month") GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "fixed_count")))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardInstallments'Plan' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCardInstallments'Plan'" (\obj -> GHC.Base.pure PaymentMethodDetailsCardInstallments'Plan' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "count"))

-- | Create a new 'PaymentMethodDetailsCardInstallments'Plan'' with all required fields.
mkPaymentMethodDetailsCardInstallments'Plan' :: PaymentMethodDetailsCardInstallments'Plan'
mkPaymentMethodDetailsCardInstallments'Plan' = PaymentMethodDetailsCardInstallments'Plan' {paymentMethodDetailsCardInstallments'Plan'Count = GHC.Maybe.Nothing}

-- | Defines the object schema located at @components.schemas.payment_method_details_card.properties.three_d_secure.anyOf@ in the specification.
--
-- Populated if this transaction used 3D Secure authentication.
data PaymentMethodDetailsCardThreeDSecure' = PaymentMethodDetailsCardThreeDSecure'
  { -- | authentication_flow: For authenticated transactions: how the customer was authenticated by
    -- the issuing bank.
    paymentMethodDetailsCardThreeDSecure'AuthenticationFlow :: (GHC.Maybe.Maybe PaymentMethodDetailsCardThreeDSecure'AuthenticationFlow'),
    -- | result: Indicates the outcome of 3D Secure authentication.
    paymentMethodDetailsCardThreeDSecure'Result :: (GHC.Maybe.Maybe PaymentMethodDetailsCardThreeDSecure'Result'),
    -- | result_reason: Additional information about why 3D Secure succeeded or failed based
    -- on the \`result\`.
    paymentMethodDetailsCardThreeDSecure'ResultReason :: (GHC.Maybe.Maybe PaymentMethodDetailsCardThreeDSecure'ResultReason'),
    -- | version: The version of 3D Secure that was used.
    paymentMethodDetailsCardThreeDSecure'Version :: (GHC.Maybe.Maybe PaymentMethodDetailsCardThreeDSecure'Version')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardThreeDSecure' where
  toJSON obj = Data.Aeson.Types.Internal.object ("authentication_flow" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardThreeDSecure'AuthenticationFlow obj : "result" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardThreeDSecure'Result obj : "result_reason" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardThreeDSecure'ResultReason obj : "version" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardThreeDSecure'Version obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("authentication_flow" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardThreeDSecure'AuthenticationFlow obj) GHC.Base.<> (("result" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardThreeDSecure'Result obj) GHC.Base.<> (("result_reason" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardThreeDSecure'ResultReason obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardThreeDSecure'Version obj))))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardThreeDSecure' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCardThreeDSecure'" (\obj -> (((GHC.Base.pure PaymentMethodDetailsCardThreeDSecure' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "authentication_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "result")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "result_reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "version"))

-- | Create a new 'PaymentMethodDetailsCardThreeDSecure'' with all required fields.
mkPaymentMethodDetailsCardThreeDSecure' :: PaymentMethodDetailsCardThreeDSecure'
mkPaymentMethodDetailsCardThreeDSecure' =
  PaymentMethodDetailsCardThreeDSecure'
    { paymentMethodDetailsCardThreeDSecure'AuthenticationFlow = GHC.Maybe.Nothing,
      paymentMethodDetailsCardThreeDSecure'Result = GHC.Maybe.Nothing,
      paymentMethodDetailsCardThreeDSecure'ResultReason = GHC.Maybe.Nothing,
      paymentMethodDetailsCardThreeDSecure'Version = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_method_details_card.properties.three_d_secure.anyOf.properties.authentication_flow@ in the specification.
--
-- For authenticated transactions: how the customer was authenticated by
-- the issuing bank.
data PaymentMethodDetailsCardThreeDSecure'AuthenticationFlow'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodDetailsCardThreeDSecure'AuthenticationFlow'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodDetailsCardThreeDSecure'AuthenticationFlow'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"challenge"@
    PaymentMethodDetailsCardThreeDSecure'AuthenticationFlow'EnumChallenge
  | -- | Represents the JSON value @"frictionless"@
    PaymentMethodDetailsCardThreeDSecure'AuthenticationFlow'EnumFrictionless
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardThreeDSecure'AuthenticationFlow' where
  toJSON (PaymentMethodDetailsCardThreeDSecure'AuthenticationFlow'Other val) = val
  toJSON (PaymentMethodDetailsCardThreeDSecure'AuthenticationFlow'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodDetailsCardThreeDSecure'AuthenticationFlow'EnumChallenge) = "challenge"
  toJSON (PaymentMethodDetailsCardThreeDSecure'AuthenticationFlow'EnumFrictionless) = "frictionless"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardThreeDSecure'AuthenticationFlow' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "challenge" -> PaymentMethodDetailsCardThreeDSecure'AuthenticationFlow'EnumChallenge
            | val GHC.Classes.== "frictionless" -> PaymentMethodDetailsCardThreeDSecure'AuthenticationFlow'EnumFrictionless
            | GHC.Base.otherwise -> PaymentMethodDetailsCardThreeDSecure'AuthenticationFlow'Other val
      )

-- | Defines the enum schema located at @components.schemas.payment_method_details_card.properties.three_d_secure.anyOf.properties.result@ in the specification.
--
-- Indicates the outcome of 3D Secure authentication.
data PaymentMethodDetailsCardThreeDSecure'Result'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodDetailsCardThreeDSecure'Result'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodDetailsCardThreeDSecure'Result'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"attempt_acknowledged"@
    PaymentMethodDetailsCardThreeDSecure'Result'EnumAttemptAcknowledged
  | -- | Represents the JSON value @"authenticated"@
    PaymentMethodDetailsCardThreeDSecure'Result'EnumAuthenticated
  | -- | Represents the JSON value @"failed"@
    PaymentMethodDetailsCardThreeDSecure'Result'EnumFailed
  | -- | Represents the JSON value @"not_supported"@
    PaymentMethodDetailsCardThreeDSecure'Result'EnumNotSupported
  | -- | Represents the JSON value @"processing_error"@
    PaymentMethodDetailsCardThreeDSecure'Result'EnumProcessingError
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardThreeDSecure'Result' where
  toJSON (PaymentMethodDetailsCardThreeDSecure'Result'Other val) = val
  toJSON (PaymentMethodDetailsCardThreeDSecure'Result'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodDetailsCardThreeDSecure'Result'EnumAttemptAcknowledged) = "attempt_acknowledged"
  toJSON (PaymentMethodDetailsCardThreeDSecure'Result'EnumAuthenticated) = "authenticated"
  toJSON (PaymentMethodDetailsCardThreeDSecure'Result'EnumFailed) = "failed"
  toJSON (PaymentMethodDetailsCardThreeDSecure'Result'EnumNotSupported) = "not_supported"
  toJSON (PaymentMethodDetailsCardThreeDSecure'Result'EnumProcessingError) = "processing_error"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardThreeDSecure'Result' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "attempt_acknowledged" -> PaymentMethodDetailsCardThreeDSecure'Result'EnumAttemptAcknowledged
            | val GHC.Classes.== "authenticated" -> PaymentMethodDetailsCardThreeDSecure'Result'EnumAuthenticated
            | val GHC.Classes.== "failed" -> PaymentMethodDetailsCardThreeDSecure'Result'EnumFailed
            | val GHC.Classes.== "not_supported" -> PaymentMethodDetailsCardThreeDSecure'Result'EnumNotSupported
            | val GHC.Classes.== "processing_error" -> PaymentMethodDetailsCardThreeDSecure'Result'EnumProcessingError
            | GHC.Base.otherwise -> PaymentMethodDetailsCardThreeDSecure'Result'Other val
      )

-- | Defines the enum schema located at @components.schemas.payment_method_details_card.properties.three_d_secure.anyOf.properties.result_reason@ in the specification.
--
-- Additional information about why 3D Secure succeeded or failed based
-- on the \`result\`.
data PaymentMethodDetailsCardThreeDSecure'ResultReason'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodDetailsCardThreeDSecure'ResultReason'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodDetailsCardThreeDSecure'ResultReason'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"abandoned"@
    PaymentMethodDetailsCardThreeDSecure'ResultReason'EnumAbandoned
  | -- | Represents the JSON value @"bypassed"@
    PaymentMethodDetailsCardThreeDSecure'ResultReason'EnumBypassed
  | -- | Represents the JSON value @"canceled"@
    PaymentMethodDetailsCardThreeDSecure'ResultReason'EnumCanceled
  | -- | Represents the JSON value @"card_not_enrolled"@
    PaymentMethodDetailsCardThreeDSecure'ResultReason'EnumCardNotEnrolled
  | -- | Represents the JSON value @"network_not_supported"@
    PaymentMethodDetailsCardThreeDSecure'ResultReason'EnumNetworkNotSupported
  | -- | Represents the JSON value @"protocol_error"@
    PaymentMethodDetailsCardThreeDSecure'ResultReason'EnumProtocolError
  | -- | Represents the JSON value @"rejected"@
    PaymentMethodDetailsCardThreeDSecure'ResultReason'EnumRejected
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardThreeDSecure'ResultReason' where
  toJSON (PaymentMethodDetailsCardThreeDSecure'ResultReason'Other val) = val
  toJSON (PaymentMethodDetailsCardThreeDSecure'ResultReason'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodDetailsCardThreeDSecure'ResultReason'EnumAbandoned) = "abandoned"
  toJSON (PaymentMethodDetailsCardThreeDSecure'ResultReason'EnumBypassed) = "bypassed"
  toJSON (PaymentMethodDetailsCardThreeDSecure'ResultReason'EnumCanceled) = "canceled"
  toJSON (PaymentMethodDetailsCardThreeDSecure'ResultReason'EnumCardNotEnrolled) = "card_not_enrolled"
  toJSON (PaymentMethodDetailsCardThreeDSecure'ResultReason'EnumNetworkNotSupported) = "network_not_supported"
  toJSON (PaymentMethodDetailsCardThreeDSecure'ResultReason'EnumProtocolError) = "protocol_error"
  toJSON (PaymentMethodDetailsCardThreeDSecure'ResultReason'EnumRejected) = "rejected"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardThreeDSecure'ResultReason' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "abandoned" -> PaymentMethodDetailsCardThreeDSecure'ResultReason'EnumAbandoned
            | val GHC.Classes.== "bypassed" -> PaymentMethodDetailsCardThreeDSecure'ResultReason'EnumBypassed
            | val GHC.Classes.== "canceled" -> PaymentMethodDetailsCardThreeDSecure'ResultReason'EnumCanceled
            | val GHC.Classes.== "card_not_enrolled" -> PaymentMethodDetailsCardThreeDSecure'ResultReason'EnumCardNotEnrolled
            | val GHC.Classes.== "network_not_supported" -> PaymentMethodDetailsCardThreeDSecure'ResultReason'EnumNetworkNotSupported
            | val GHC.Classes.== "protocol_error" -> PaymentMethodDetailsCardThreeDSecure'ResultReason'EnumProtocolError
            | val GHC.Classes.== "rejected" -> PaymentMethodDetailsCardThreeDSecure'ResultReason'EnumRejected
            | GHC.Base.otherwise -> PaymentMethodDetailsCardThreeDSecure'ResultReason'Other val
      )

-- | Defines the enum schema located at @components.schemas.payment_method_details_card.properties.three_d_secure.anyOf.properties.version@ in the specification.
--
-- The version of 3D Secure that was used.
data PaymentMethodDetailsCardThreeDSecure'Version'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodDetailsCardThreeDSecure'Version'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodDetailsCardThreeDSecure'Version'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"1.0.2"@
    PaymentMethodDetailsCardThreeDSecure'Version'Enum1'0'2
  | -- | Represents the JSON value @"2.1.0"@
    PaymentMethodDetailsCardThreeDSecure'Version'Enum2'1'0
  | -- | Represents the JSON value @"2.2.0"@
    PaymentMethodDetailsCardThreeDSecure'Version'Enum2'2'0
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardThreeDSecure'Version' where
  toJSON (PaymentMethodDetailsCardThreeDSecure'Version'Other val) = val
  toJSON (PaymentMethodDetailsCardThreeDSecure'Version'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodDetailsCardThreeDSecure'Version'Enum1'0'2) = "1.0.2"
  toJSON (PaymentMethodDetailsCardThreeDSecure'Version'Enum2'1'0) = "2.1.0"
  toJSON (PaymentMethodDetailsCardThreeDSecure'Version'Enum2'2'0) = "2.2.0"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardThreeDSecure'Version' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "1.0.2" -> PaymentMethodDetailsCardThreeDSecure'Version'Enum1'0'2
            | val GHC.Classes.== "2.1.0" -> PaymentMethodDetailsCardThreeDSecure'Version'Enum2'1'0
            | val GHC.Classes.== "2.2.0" -> PaymentMethodDetailsCardThreeDSecure'Version'Enum2'2'0
            | GHC.Base.otherwise -> PaymentMethodDetailsCardThreeDSecure'Version'Other val
      )

-- | Defines the object schema located at @components.schemas.payment_method_details_card.properties.wallet.anyOf@ in the specification.
--
-- If this Card is part of a card wallet, this contains the details of the card wallet.
data PaymentMethodDetailsCardWallet' = PaymentMethodDetailsCardWallet'
  { -- | amex_express_checkout:
    paymentMethodDetailsCardWallet'AmexExpressCheckout :: (GHC.Maybe.Maybe PaymentMethodDetailsCardWalletAmexExpressCheckout),
    -- | apple_pay:
    paymentMethodDetailsCardWallet'ApplePay :: (GHC.Maybe.Maybe PaymentMethodDetailsCardWalletApplePay),
    -- | dynamic_last4: (For tokenized numbers only.) The last four digits of the device account number.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsCardWallet'DynamicLast4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | google_pay:
    paymentMethodDetailsCardWallet'GooglePay :: (GHC.Maybe.Maybe PaymentMethodDetailsCardWalletGooglePay),
    -- | masterpass:
    paymentMethodDetailsCardWallet'Masterpass :: (GHC.Maybe.Maybe PaymentMethodDetailsCardWalletMasterpass),
    -- | samsung_pay:
    paymentMethodDetailsCardWallet'SamsungPay :: (GHC.Maybe.Maybe PaymentMethodDetailsCardWalletSamsungPay),
    -- | type: The type of the card wallet, one of \`amex_express_checkout\`, \`apple_pay\`, \`google_pay\`, \`masterpass\`, \`samsung_pay\`, or \`visa_checkout\`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
    paymentMethodDetailsCardWallet'Type :: (GHC.Maybe.Maybe PaymentMethodDetailsCardWallet'Type'),
    -- | visa_checkout:
    paymentMethodDetailsCardWallet'VisaCheckout :: (GHC.Maybe.Maybe PaymentMethodDetailsCardWalletVisaCheckout)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardWallet' where
  toJSON obj = Data.Aeson.Types.Internal.object ("amex_express_checkout" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWallet'AmexExpressCheckout obj : "apple_pay" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWallet'ApplePay obj : "dynamic_last4" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWallet'DynamicLast4 obj : "google_pay" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWallet'GooglePay obj : "masterpass" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWallet'Masterpass obj : "samsung_pay" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWallet'SamsungPay obj : "type" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWallet'Type obj : "visa_checkout" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWallet'VisaCheckout obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("amex_express_checkout" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWallet'AmexExpressCheckout obj) GHC.Base.<> (("apple_pay" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWallet'ApplePay obj) GHC.Base.<> (("dynamic_last4" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWallet'DynamicLast4 obj) GHC.Base.<> (("google_pay" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWallet'GooglePay obj) GHC.Base.<> (("masterpass" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWallet'Masterpass obj) GHC.Base.<> (("samsung_pay" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWallet'SamsungPay obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWallet'Type obj) GHC.Base.<> ("visa_checkout" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWallet'VisaCheckout obj))))))))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardWallet' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCardWallet'" (\obj -> (((((((GHC.Base.pure PaymentMethodDetailsCardWallet' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amex_express_checkout")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "apple_pay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dynamic_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "google_pay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "masterpass")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "samsung_pay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "visa_checkout"))

-- | Create a new 'PaymentMethodDetailsCardWallet'' with all required fields.
mkPaymentMethodDetailsCardWallet' :: PaymentMethodDetailsCardWallet'
mkPaymentMethodDetailsCardWallet' =
  PaymentMethodDetailsCardWallet'
    { paymentMethodDetailsCardWallet'AmexExpressCheckout = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWallet'ApplePay = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWallet'DynamicLast4 = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWallet'GooglePay = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWallet'Masterpass = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWallet'SamsungPay = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWallet'Type = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWallet'VisaCheckout = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_method_details_card.properties.wallet.anyOf.properties.type@ in the specification.
--
-- The type of the card wallet, one of \`amex_express_checkout\`, \`apple_pay\`, \`google_pay\`, \`masterpass\`, \`samsung_pay\`, or \`visa_checkout\`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
data PaymentMethodDetailsCardWallet'Type'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodDetailsCardWallet'Type'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodDetailsCardWallet'Type'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"amex_express_checkout"@
    PaymentMethodDetailsCardWallet'Type'EnumAmexExpressCheckout
  | -- | Represents the JSON value @"apple_pay"@
    PaymentMethodDetailsCardWallet'Type'EnumApplePay
  | -- | Represents the JSON value @"google_pay"@
    PaymentMethodDetailsCardWallet'Type'EnumGooglePay
  | -- | Represents the JSON value @"masterpass"@
    PaymentMethodDetailsCardWallet'Type'EnumMasterpass
  | -- | Represents the JSON value @"samsung_pay"@
    PaymentMethodDetailsCardWallet'Type'EnumSamsungPay
  | -- | Represents the JSON value @"visa_checkout"@
    PaymentMethodDetailsCardWallet'Type'EnumVisaCheckout
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardWallet'Type' where
  toJSON (PaymentMethodDetailsCardWallet'Type'Other val) = val
  toJSON (PaymentMethodDetailsCardWallet'Type'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodDetailsCardWallet'Type'EnumAmexExpressCheckout) = "amex_express_checkout"
  toJSON (PaymentMethodDetailsCardWallet'Type'EnumApplePay) = "apple_pay"
  toJSON (PaymentMethodDetailsCardWallet'Type'EnumGooglePay) = "google_pay"
  toJSON (PaymentMethodDetailsCardWallet'Type'EnumMasterpass) = "masterpass"
  toJSON (PaymentMethodDetailsCardWallet'Type'EnumSamsungPay) = "samsung_pay"
  toJSON (PaymentMethodDetailsCardWallet'Type'EnumVisaCheckout) = "visa_checkout"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardWallet'Type' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "amex_express_checkout" -> PaymentMethodDetailsCardWallet'Type'EnumAmexExpressCheckout
            | val GHC.Classes.== "apple_pay" -> PaymentMethodDetailsCardWallet'Type'EnumApplePay
            | val GHC.Classes.== "google_pay" -> PaymentMethodDetailsCardWallet'Type'EnumGooglePay
            | val GHC.Classes.== "masterpass" -> PaymentMethodDetailsCardWallet'Type'EnumMasterpass
            | val GHC.Classes.== "samsung_pay" -> PaymentMethodDetailsCardWallet'Type'EnumSamsungPay
            | val GHC.Classes.== "visa_checkout" -> PaymentMethodDetailsCardWallet'Type'EnumVisaCheckout
            | GHC.Base.otherwise -> PaymentMethodDetailsCardWallet'Type'Other val
      )
