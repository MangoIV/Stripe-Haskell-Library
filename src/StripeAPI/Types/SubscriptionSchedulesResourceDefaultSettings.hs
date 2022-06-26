{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SubscriptionSchedulesResourceDefaultSettings
module StripeAPI.Types.SubscriptionSchedulesResourceDefaultSettings where

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
import {-# SOURCE #-} StripeAPI.Types.Account
import {-# SOURCE #-} StripeAPI.Types.InvoiceSettingSubscriptionScheduleSetting
import {-# SOURCE #-} StripeAPI.Types.PaymentMethod
import {-# SOURCE #-} StripeAPI.Types.SubscriptionBillingThresholds
import {-# SOURCE #-} StripeAPI.Types.SubscriptionSchedulesResourceDefaultSettingsAutomaticTax
import {-# SOURCE #-} StripeAPI.Types.SubscriptionTransferData
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.subscription_schedules_resource_default_settings@ in the specification.
data SubscriptionSchedulesResourceDefaultSettings = SubscriptionSchedulesResourceDefaultSettings
  { -- | application_fee_percent: A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice subtotal that will be transferred to the application owner\'s Stripe account during this phase of the schedule.
    subscriptionSchedulesResourceDefaultSettingsApplicationFeePercent :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Double)),
    -- | automatic_tax:
    subscriptionSchedulesResourceDefaultSettingsAutomaticTax :: (GHC.Maybe.Maybe SubscriptionSchedulesResourceDefaultSettingsAutomaticTax),
    -- | billing_cycle_anchor: Possible values are \`phase_start\` or \`automatic\`. If \`phase_start\` then billing cycle anchor of the subscription is set to the start of the phase when entering the phase. If \`automatic\` then the billing cycle anchor is automatically modified as needed when entering the phase. For more information, see the billing cycle [documentation](https:\/\/stripe.com\/docs\/billing\/subscriptions\/billing-cycle).
    subscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor :: SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor',
    -- | billing_thresholds: Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period
    subscriptionSchedulesResourceDefaultSettingsBillingThresholds :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SubscriptionSchedulesResourceDefaultSettingsBillingThresholds'NonNullable)),
    -- | collection_method: Either \`charge_automatically\`, or \`send_invoice\`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions.
    subscriptionSchedulesResourceDefaultSettingsCollectionMethod :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SubscriptionSchedulesResourceDefaultSettingsCollectionMethod'NonNullable)),
    -- | default_payment_method: ID of the default payment method for the subscription schedule. If not set, invoices will use the default payment method in the customer\'s invoice settings.
    subscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SubscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod'NonNullableVariants)),
    -- | invoice_settings: The subscription schedule\'s default invoice settings.
    subscriptionSchedulesResourceDefaultSettingsInvoiceSettings :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SubscriptionSchedulesResourceDefaultSettingsInvoiceSettings'NonNullable)),
    -- | transfer_data: The account (if any) the associated subscription\'s payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the subscription\'s invoices.
    subscriptionSchedulesResourceDefaultSettingsTransferData :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionSchedulesResourceDefaultSettings where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application_fee_percent" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsApplicationFeePercent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("automatic_tax" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsAutomaticTax obj) : ["billing_cycle_anchor" Data.Aeson.Types.ToJSON..= subscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_thresholds" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsBillingThresholds obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("collection_method" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsCollectionMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_payment_method" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice_settings" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsInvoiceSettings obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transfer_data" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsTransferData obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application_fee_percent" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsApplicationFeePercent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("automatic_tax" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsAutomaticTax obj) : ["billing_cycle_anchor" Data.Aeson.Types.ToJSON..= subscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_thresholds" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsBillingThresholds obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("collection_method" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsCollectionMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_payment_method" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice_settings" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsInvoiceSettings obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transfer_data" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsTransferData obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionSchedulesResourceDefaultSettings where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionSchedulesResourceDefaultSettings" (\obj -> (((((((GHC.Base.pure SubscriptionSchedulesResourceDefaultSettings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "application_fee_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "automatic_tax")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "billing_cycle_anchor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "collection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "invoice_settings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transfer_data"))

-- | Create a new 'SubscriptionSchedulesResourceDefaultSettings' with all required fields.
mkSubscriptionSchedulesResourceDefaultSettings ::
  -- | 'subscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor'
  SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor' ->
  SubscriptionSchedulesResourceDefaultSettings
mkSubscriptionSchedulesResourceDefaultSettings subscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor =
  SubscriptionSchedulesResourceDefaultSettings
    { subscriptionSchedulesResourceDefaultSettingsApplicationFeePercent = GHC.Maybe.Nothing,
      subscriptionSchedulesResourceDefaultSettingsAutomaticTax = GHC.Maybe.Nothing,
      subscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor = subscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor,
      subscriptionSchedulesResourceDefaultSettingsBillingThresholds = GHC.Maybe.Nothing,
      subscriptionSchedulesResourceDefaultSettingsCollectionMethod = GHC.Maybe.Nothing,
      subscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod = GHC.Maybe.Nothing,
      subscriptionSchedulesResourceDefaultSettingsInvoiceSettings = GHC.Maybe.Nothing,
      subscriptionSchedulesResourceDefaultSettingsTransferData = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.subscription_schedules_resource_default_settings.properties.billing_cycle_anchor@ in the specification.
--
-- Possible values are \`phase_start\` or \`automatic\`. If \`phase_start\` then billing cycle anchor of the subscription is set to the start of the phase when entering the phase. If \`automatic\` then the billing cycle anchor is automatically modified as needed when entering the phase. For more information, see the billing cycle [documentation](https:\/\/stripe.com\/docs\/billing\/subscriptions\/billing-cycle).
data SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"automatic"@
    SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor'EnumAutomatic
  | -- | Represents the JSON value @"phase_start"@
    SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor'EnumPhaseStart
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor' where
  toJSON (SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor'Other val) = val
  toJSON (SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor'EnumAutomatic) = "automatic"
  toJSON (SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor'EnumPhaseStart) = "phase_start"

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "automatic" -> SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor'EnumAutomatic
            | val GHC.Classes.== "phase_start" -> SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor'EnumPhaseStart
            | GHC.Base.otherwise -> SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor'Other val
      )

-- | Defines the object schema located at @components.schemas.subscription_schedules_resource_default_settings.properties.billing_thresholds.anyOf@ in the specification.
--
-- Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period
data SubscriptionSchedulesResourceDefaultSettingsBillingThresholds'NonNullable = SubscriptionSchedulesResourceDefaultSettingsBillingThresholds'NonNullable
  { -- | amount_gte: Monetary threshold that triggers the subscription to create an invoice
    subscriptionSchedulesResourceDefaultSettingsBillingThresholds'NonNullableAmountGte :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | reset_billing_cycle_anchor: Indicates if the \`billing_cycle_anchor\` should be reset when a threshold is reached. If true, \`billing_cycle_anchor\` will be updated to the date\/time the threshold was last reached; otherwise, the value will remain unchanged. This value may not be \`true\` if the subscription contains items with plans that have \`aggregate_usage=last_ever\`.
    subscriptionSchedulesResourceDefaultSettingsBillingThresholds'NonNullableResetBillingCycleAnchor :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Bool))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionSchedulesResourceDefaultSettingsBillingThresholds'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_gte" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsBillingThresholds'NonNullableAmountGte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reset_billing_cycle_anchor" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsBillingThresholds'NonNullableResetBillingCycleAnchor obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_gte" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsBillingThresholds'NonNullableAmountGte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reset_billing_cycle_anchor" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsBillingThresholds'NonNullableResetBillingCycleAnchor obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionSchedulesResourceDefaultSettingsBillingThresholds'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionSchedulesResourceDefaultSettingsBillingThresholds'NonNullable" (\obj -> (GHC.Base.pure SubscriptionSchedulesResourceDefaultSettingsBillingThresholds'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount_gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reset_billing_cycle_anchor"))

-- | Create a new 'SubscriptionSchedulesResourceDefaultSettingsBillingThresholds'NonNullable' with all required fields.
mkSubscriptionSchedulesResourceDefaultSettingsBillingThresholds'NonNullable :: SubscriptionSchedulesResourceDefaultSettingsBillingThresholds'NonNullable
mkSubscriptionSchedulesResourceDefaultSettingsBillingThresholds'NonNullable =
  SubscriptionSchedulesResourceDefaultSettingsBillingThresholds'NonNullable
    { subscriptionSchedulesResourceDefaultSettingsBillingThresholds'NonNullableAmountGte = GHC.Maybe.Nothing,
      subscriptionSchedulesResourceDefaultSettingsBillingThresholds'NonNullableResetBillingCycleAnchor = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.subscription_schedules_resource_default_settings.properties.collection_method@ in the specification.
--
-- Either \`charge_automatically\`, or \`send_invoice\`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions.
data SubscriptionSchedulesResourceDefaultSettingsCollectionMethod'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SubscriptionSchedulesResourceDefaultSettingsCollectionMethod'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SubscriptionSchedulesResourceDefaultSettingsCollectionMethod'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"charge_automatically"@
    SubscriptionSchedulesResourceDefaultSettingsCollectionMethod'NonNullableEnumChargeAutomatically
  | -- | Represents the JSON value @"send_invoice"@
    SubscriptionSchedulesResourceDefaultSettingsCollectionMethod'NonNullableEnumSendInvoice
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionSchedulesResourceDefaultSettingsCollectionMethod'NonNullable where
  toJSON (SubscriptionSchedulesResourceDefaultSettingsCollectionMethod'NonNullableOther val) = val
  toJSON (SubscriptionSchedulesResourceDefaultSettingsCollectionMethod'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SubscriptionSchedulesResourceDefaultSettingsCollectionMethod'NonNullableEnumChargeAutomatically) = "charge_automatically"
  toJSON (SubscriptionSchedulesResourceDefaultSettingsCollectionMethod'NonNullableEnumSendInvoice) = "send_invoice"

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionSchedulesResourceDefaultSettingsCollectionMethod'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "charge_automatically" -> SubscriptionSchedulesResourceDefaultSettingsCollectionMethod'NonNullableEnumChargeAutomatically
            | val GHC.Classes.== "send_invoice" -> SubscriptionSchedulesResourceDefaultSettingsCollectionMethod'NonNullableEnumSendInvoice
            | GHC.Base.otherwise -> SubscriptionSchedulesResourceDefaultSettingsCollectionMethod'NonNullableOther val
      )

-- | Defines the oneOf schema located at @components.schemas.subscription_schedules_resource_default_settings.properties.default_payment_method.anyOf@ in the specification.
--
-- ID of the default payment method for the subscription schedule. If not set, invoices will use the default payment method in the customer\'s invoice settings.
data SubscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod'NonNullableVariants
  = SubscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod'NonNullableText Data.Text.Internal.Text
  | SubscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod'NonNullablePaymentMethod PaymentMethod
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod'NonNullableVariants where
  toJSON (SubscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (SubscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod'NonNullablePaymentMethod a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod'NonNullableVariants where
  parseJSON val = case (SubscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SubscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod'NonNullablePaymentMethod Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the object schema located at @components.schemas.subscription_schedules_resource_default_settings.properties.invoice_settings.anyOf@ in the specification.
--
-- The subscription schedule\\\'s default invoice settings.
data SubscriptionSchedulesResourceDefaultSettingsInvoiceSettings'NonNullable = SubscriptionSchedulesResourceDefaultSettingsInvoiceSettings'NonNullable
  { -- | days_until_due: Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be \`null\` for subscription schedules where \`billing=charge_automatically\`.
    subscriptionSchedulesResourceDefaultSettingsInvoiceSettings'NonNullableDaysUntilDue :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionSchedulesResourceDefaultSettingsInvoiceSettings'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("days_until_due" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsInvoiceSettings'NonNullableDaysUntilDue obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("days_until_due" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsInvoiceSettings'NonNullableDaysUntilDue obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionSchedulesResourceDefaultSettingsInvoiceSettings'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionSchedulesResourceDefaultSettingsInvoiceSettings'NonNullable" (\obj -> GHC.Base.pure SubscriptionSchedulesResourceDefaultSettingsInvoiceSettings'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "days_until_due"))

-- | Create a new 'SubscriptionSchedulesResourceDefaultSettingsInvoiceSettings'NonNullable' with all required fields.
mkSubscriptionSchedulesResourceDefaultSettingsInvoiceSettings'NonNullable :: SubscriptionSchedulesResourceDefaultSettingsInvoiceSettings'NonNullable
mkSubscriptionSchedulesResourceDefaultSettingsInvoiceSettings'NonNullable = SubscriptionSchedulesResourceDefaultSettingsInvoiceSettings'NonNullable {subscriptionSchedulesResourceDefaultSettingsInvoiceSettings'NonNullableDaysUntilDue = GHC.Maybe.Nothing}

-- | Defines the object schema located at @components.schemas.subscription_schedules_resource_default_settings.properties.transfer_data.anyOf@ in the specification.
--
-- The account (if any) the associated subscription\\\'s payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the subscription\\\'s invoices.
data SubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullable = SubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullable
  { -- | amount_percent: A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice subtotal that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
    subscriptionSchedulesResourceDefaultSettingsTransferData'NonNullableAmountPercent :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Double)),
    -- | destination: The account where funds from the payment will be transferred to upon payment success.
    subscriptionSchedulesResourceDefaultSettingsTransferData'NonNullableDestination :: (GHC.Maybe.Maybe SubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullableDestination'Variants)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_percent" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsTransferData'NonNullableAmountPercent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("destination" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsTransferData'NonNullableDestination obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_percent" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsTransferData'NonNullableAmountPercent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("destination" Data.Aeson.Types.ToJSON..=)) (subscriptionSchedulesResourceDefaultSettingsTransferData'NonNullableDestination obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullable" (\obj -> (GHC.Base.pure SubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "destination"))

-- | Create a new 'SubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullable' with all required fields.
mkSubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullable :: SubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullable
mkSubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullable =
  SubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullable
    { subscriptionSchedulesResourceDefaultSettingsTransferData'NonNullableAmountPercent = GHC.Maybe.Nothing,
      subscriptionSchedulesResourceDefaultSettingsTransferData'NonNullableDestination = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.subscription_schedules_resource_default_settings.properties.transfer_data.anyOf.properties.destination.anyOf@ in the specification.
--
-- The account where funds from the payment will be transferred to upon payment success.
data SubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullableDestination'Variants
  = SubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullableDestination'Text Data.Text.Internal.Text
  | SubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullableDestination'Account Account
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullableDestination'Variants where
  toJSON (SubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullableDestination'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (SubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullableDestination'Account a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullableDestination'Variants where
  parseJSON val = case (SubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullableDestination'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SubscriptionSchedulesResourceDefaultSettingsTransferData'NonNullableDestination'Account Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
