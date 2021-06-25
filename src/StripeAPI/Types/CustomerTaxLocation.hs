{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema CustomerTaxLocation
module StripeAPI.Types.CustomerTaxLocation where

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

-- | Defines the object schema located at @components.schemas.customer_tax_location@ in the specification.
data CustomerTaxLocation = CustomerTaxLocation
  { -- | country: The customer\'s country as identified by Stripe Tax.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    customerTaxLocationCountry :: Data.Text.Internal.Text,
    -- | source: The data source used to infer the customer\'s location.
    customerTaxLocationSource :: CustomerTaxLocationSource',
    -- | state: The customer\'s state, county, province, or region as identified by Stripe Tax.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    customerTaxLocationState :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON CustomerTaxLocation where
  toJSON obj = Data.Aeson.Types.Internal.object ("country" Data.Aeson.Types.ToJSON..= customerTaxLocationCountry obj : "source" Data.Aeson.Types.ToJSON..= customerTaxLocationSource obj : "state" Data.Aeson.Types.ToJSON..= customerTaxLocationState obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("country" Data.Aeson.Types.ToJSON..= customerTaxLocationCountry obj) GHC.Base.<> (("source" Data.Aeson.Types.ToJSON..= customerTaxLocationSource obj) GHC.Base.<> ("state" Data.Aeson.Types.ToJSON..= customerTaxLocationState obj)))

instance Data.Aeson.Types.FromJSON.FromJSON CustomerTaxLocation where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "CustomerTaxLocation" (\obj -> ((GHC.Base.pure CustomerTaxLocation GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))

-- | Create a new 'CustomerTaxLocation' with all required fields.
mkCustomerTaxLocation ::
  -- | 'customerTaxLocationCountry'
  Data.Text.Internal.Text ->
  -- | 'customerTaxLocationSource'
  CustomerTaxLocationSource' ->
  CustomerTaxLocation
mkCustomerTaxLocation customerTaxLocationCountry customerTaxLocationSource =
  CustomerTaxLocation
    { customerTaxLocationCountry = customerTaxLocationCountry,
      customerTaxLocationSource = customerTaxLocationSource,
      customerTaxLocationState = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.customer_tax_location.properties.source@ in the specification.
--
-- The data source used to infer the customer\'s location.
data CustomerTaxLocationSource'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    CustomerTaxLocationSource'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    CustomerTaxLocationSource'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"billing_address"@
    CustomerTaxLocationSource'EnumBillingAddress
  | -- | Represents the JSON value @"ip_address"@
    CustomerTaxLocationSource'EnumIpAddress
  | -- | Represents the JSON value @"payment_method"@
    CustomerTaxLocationSource'EnumPaymentMethod
  | -- | Represents the JSON value @"shipping_destination"@
    CustomerTaxLocationSource'EnumShippingDestination
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CustomerTaxLocationSource' where
  toJSON (CustomerTaxLocationSource'Other val) = val
  toJSON (CustomerTaxLocationSource'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (CustomerTaxLocationSource'EnumBillingAddress) = "billing_address"
  toJSON (CustomerTaxLocationSource'EnumIpAddress) = "ip_address"
  toJSON (CustomerTaxLocationSource'EnumPaymentMethod) = "payment_method"
  toJSON (CustomerTaxLocationSource'EnumShippingDestination) = "shipping_destination"

instance Data.Aeson.Types.FromJSON.FromJSON CustomerTaxLocationSource' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "billing_address" -> CustomerTaxLocationSource'EnumBillingAddress
            | val GHC.Classes.== "ip_address" -> CustomerTaxLocationSource'EnumIpAddress
            | val GHC.Classes.== "payment_method" -> CustomerTaxLocationSource'EnumPaymentMethod
            | val GHC.Classes.== "shipping_destination" -> CustomerTaxLocationSource'EnumShippingDestination
            | GHC.Base.otherwise -> CustomerTaxLocationSource'Other val
      )
