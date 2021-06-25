{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema CheckoutAcssDebitPaymentMethodOptions
module StripeAPI.Types.CheckoutAcssDebitPaymentMethodOptions where

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
import {-# SOURCE #-} StripeAPI.Types.CheckoutAcssDebitMandateOptions
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.checkout_acss_debit_payment_method_options@ in the specification.
data CheckoutAcssDebitPaymentMethodOptions = CheckoutAcssDebitPaymentMethodOptions
  { -- | currency: Currency supported by the bank account. Returned when the Session is in \`setup\` mode.
    checkoutAcssDebitPaymentMethodOptionsCurrency :: (GHC.Maybe.Maybe CheckoutAcssDebitPaymentMethodOptionsCurrency'),
    -- | mandate_options:
    checkoutAcssDebitPaymentMethodOptionsMandateOptions :: (GHC.Maybe.Maybe CheckoutAcssDebitMandateOptions),
    -- | verification_method: Bank account verification method.
    checkoutAcssDebitPaymentMethodOptionsVerificationMethod :: (GHC.Maybe.Maybe CheckoutAcssDebitPaymentMethodOptionsVerificationMethod')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON CheckoutAcssDebitPaymentMethodOptions where
  toJSON obj = Data.Aeson.Types.Internal.object ("currency" Data.Aeson.Types.ToJSON..= checkoutAcssDebitPaymentMethodOptionsCurrency obj : "mandate_options" Data.Aeson.Types.ToJSON..= checkoutAcssDebitPaymentMethodOptionsMandateOptions obj : "verification_method" Data.Aeson.Types.ToJSON..= checkoutAcssDebitPaymentMethodOptionsVerificationMethod obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("currency" Data.Aeson.Types.ToJSON..= checkoutAcssDebitPaymentMethodOptionsCurrency obj) GHC.Base.<> (("mandate_options" Data.Aeson.Types.ToJSON..= checkoutAcssDebitPaymentMethodOptionsMandateOptions obj) GHC.Base.<> ("verification_method" Data.Aeson.Types.ToJSON..= checkoutAcssDebitPaymentMethodOptionsVerificationMethod obj)))

instance Data.Aeson.Types.FromJSON.FromJSON CheckoutAcssDebitPaymentMethodOptions where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "CheckoutAcssDebitPaymentMethodOptions" (\obj -> ((GHC.Base.pure CheckoutAcssDebitPaymentMethodOptions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification_method"))

-- | Create a new 'CheckoutAcssDebitPaymentMethodOptions' with all required fields.
mkCheckoutAcssDebitPaymentMethodOptions :: CheckoutAcssDebitPaymentMethodOptions
mkCheckoutAcssDebitPaymentMethodOptions =
  CheckoutAcssDebitPaymentMethodOptions
    { checkoutAcssDebitPaymentMethodOptionsCurrency = GHC.Maybe.Nothing,
      checkoutAcssDebitPaymentMethodOptionsMandateOptions = GHC.Maybe.Nothing,
      checkoutAcssDebitPaymentMethodOptionsVerificationMethod = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.checkout_acss_debit_payment_method_options.properties.currency@ in the specification.
--
-- Currency supported by the bank account. Returned when the Session is in \`setup\` mode.
data CheckoutAcssDebitPaymentMethodOptionsCurrency'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    CheckoutAcssDebitPaymentMethodOptionsCurrency'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    CheckoutAcssDebitPaymentMethodOptionsCurrency'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"cad"@
    CheckoutAcssDebitPaymentMethodOptionsCurrency'EnumCad
  | -- | Represents the JSON value @"usd"@
    CheckoutAcssDebitPaymentMethodOptionsCurrency'EnumUsd
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CheckoutAcssDebitPaymentMethodOptionsCurrency' where
  toJSON (CheckoutAcssDebitPaymentMethodOptionsCurrency'Other val) = val
  toJSON (CheckoutAcssDebitPaymentMethodOptionsCurrency'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (CheckoutAcssDebitPaymentMethodOptionsCurrency'EnumCad) = "cad"
  toJSON (CheckoutAcssDebitPaymentMethodOptionsCurrency'EnumUsd) = "usd"

instance Data.Aeson.Types.FromJSON.FromJSON CheckoutAcssDebitPaymentMethodOptionsCurrency' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "cad" -> CheckoutAcssDebitPaymentMethodOptionsCurrency'EnumCad
            | val GHC.Classes.== "usd" -> CheckoutAcssDebitPaymentMethodOptionsCurrency'EnumUsd
            | GHC.Base.otherwise -> CheckoutAcssDebitPaymentMethodOptionsCurrency'Other val
      )

-- | Defines the enum schema located at @components.schemas.checkout_acss_debit_payment_method_options.properties.verification_method@ in the specification.
--
-- Bank account verification method.
data CheckoutAcssDebitPaymentMethodOptionsVerificationMethod'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    CheckoutAcssDebitPaymentMethodOptionsVerificationMethod'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    CheckoutAcssDebitPaymentMethodOptionsVerificationMethod'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"automatic"@
    CheckoutAcssDebitPaymentMethodOptionsVerificationMethod'EnumAutomatic
  | -- | Represents the JSON value @"instant"@
    CheckoutAcssDebitPaymentMethodOptionsVerificationMethod'EnumInstant
  | -- | Represents the JSON value @"microdeposits"@
    CheckoutAcssDebitPaymentMethodOptionsVerificationMethod'EnumMicrodeposits
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CheckoutAcssDebitPaymentMethodOptionsVerificationMethod' where
  toJSON (CheckoutAcssDebitPaymentMethodOptionsVerificationMethod'Other val) = val
  toJSON (CheckoutAcssDebitPaymentMethodOptionsVerificationMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (CheckoutAcssDebitPaymentMethodOptionsVerificationMethod'EnumAutomatic) = "automatic"
  toJSON (CheckoutAcssDebitPaymentMethodOptionsVerificationMethod'EnumInstant) = "instant"
  toJSON (CheckoutAcssDebitPaymentMethodOptionsVerificationMethod'EnumMicrodeposits) = "microdeposits"

instance Data.Aeson.Types.FromJSON.FromJSON CheckoutAcssDebitPaymentMethodOptionsVerificationMethod' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "automatic" -> CheckoutAcssDebitPaymentMethodOptionsVerificationMethod'EnumAutomatic
            | val GHC.Classes.== "instant" -> CheckoutAcssDebitPaymentMethodOptionsVerificationMethod'EnumInstant
            | val GHC.Classes.== "microdeposits" -> CheckoutAcssDebitPaymentMethodOptionsVerificationMethod'EnumMicrodeposits
            | GHC.Base.otherwise -> CheckoutAcssDebitPaymentMethodOptionsVerificationMethod'Other val
      )
