{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit
module StripeAPI.Types.SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit where

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

-- | Defines the object schema located at @components.schemas.setup_intent_payment_method_options_mandate_options_acss_debit@ in the specification.
data SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit = SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit
  { -- | custom_mandate_url: A URL for custom mandate text
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    setupIntentPaymentMethodOptionsMandateOptionsAcssDebitCustomMandateUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | default_for: List of Stripe products where this mandate can be selected automatically.
    setupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor :: (GHC.Maybe.Maybe ([SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor'])),
    -- | interval_description: Description of the interval. Only required if the \'payment_schedule\' parameter is \'interval\' or \'combined\'.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    setupIntentPaymentMethodOptionsMandateOptionsAcssDebitIntervalDescription :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | payment_schedule: Payment schedule for the mandate.
    setupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule'NonNullable)),
    -- | transaction_type: Transaction type of the mandate.
    setupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("custom_mandate_url" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsMandateOptionsAcssDebitCustomMandateUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_for" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval_description" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsMandateOptionsAcssDebitIntervalDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_schedule" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction_type" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("custom_mandate_url" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsMandateOptionsAcssDebitCustomMandateUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_for" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval_description" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsMandateOptionsAcssDebitIntervalDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_schedule" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction_type" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit" (\obj -> ((((GHC.Base.pure SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "custom_mandate_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "default_for")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "interval_description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "payment_schedule")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transaction_type"))

-- | Create a new 'SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit' with all required fields.
mkSetupIntentPaymentMethodOptionsMandateOptionsAcssDebit :: SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit
mkSetupIntentPaymentMethodOptionsMandateOptionsAcssDebit =
  SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit
    { setupIntentPaymentMethodOptionsMandateOptionsAcssDebitCustomMandateUrl = GHC.Maybe.Nothing,
      setupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor = GHC.Maybe.Nothing,
      setupIntentPaymentMethodOptionsMandateOptionsAcssDebitIntervalDescription = GHC.Maybe.Nothing,
      setupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule = GHC.Maybe.Nothing,
      setupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.setup_intent_payment_method_options_mandate_options_acss_debit.properties.default_for.items@ in the specification.
data SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"invoice"@
    SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor'EnumInvoice
  | -- | Represents the JSON value @"subscription"@
    SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor'EnumSubscription
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor' where
  toJSON (SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor'Other val) = val
  toJSON (SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor'EnumInvoice) = "invoice"
  toJSON (SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor'EnumSubscription) = "subscription"

instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "invoice" -> SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor'EnumInvoice
            | val GHC.Classes.== "subscription" -> SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor'EnumSubscription
            | GHC.Base.otherwise -> SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor'Other val
      )

-- | Defines the enum schema located at @components.schemas.setup_intent_payment_method_options_mandate_options_acss_debit.properties.payment_schedule@ in the specification.
--
-- Payment schedule for the mandate.
data SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"combined"@
    SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule'NonNullableEnumCombined
  | -- | Represents the JSON value @"interval"@
    SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule'NonNullableEnumInterval
  | -- | Represents the JSON value @"sporadic"@
    SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule'NonNullableEnumSporadic
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule'NonNullable where
  toJSON (SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule'NonNullableOther val) = val
  toJSON (SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule'NonNullableEnumCombined) = "combined"
  toJSON (SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule'NonNullableEnumInterval) = "interval"
  toJSON (SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule'NonNullableEnumSporadic) = "sporadic"

instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "combined" -> SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule'NonNullableEnumCombined
            | val GHC.Classes.== "interval" -> SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule'NonNullableEnumInterval
            | val GHC.Classes.== "sporadic" -> SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule'NonNullableEnumSporadic
            | GHC.Base.otherwise -> SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule'NonNullableOther val
      )

-- | Defines the enum schema located at @components.schemas.setup_intent_payment_method_options_mandate_options_acss_debit.properties.transaction_type@ in the specification.
--
-- Transaction type of the mandate.
data SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"business"@
    SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType'NonNullableEnumBusiness
  | -- | Represents the JSON value @"personal"@
    SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType'NonNullableEnumPersonal
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType'NonNullable where
  toJSON (SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType'NonNullableOther val) = val
  toJSON (SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType'NonNullableEnumBusiness) = "business"
  toJSON (SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType'NonNullableEnumPersonal) = "personal"

instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "business" -> SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType'NonNullableEnumBusiness
            | val GHC.Classes.== "personal" -> SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType'NonNullableEnumPersonal
            | GHC.Base.otherwise -> SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType'NonNullableOther val
      )
