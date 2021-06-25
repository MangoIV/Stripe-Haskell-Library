{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodCardWalletMasterpass
module StripeAPI.Types.PaymentMethodCardWalletMasterpass where

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
import {-# SOURCE #-} StripeAPI.Types.Address
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_method_card_wallet_masterpass@ in the specification.
data PaymentMethodCardWalletMasterpass = PaymentMethodCardWalletMasterpass
  { -- | billing_address: Owner\'s verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    paymentMethodCardWalletMasterpassBillingAddress :: (GHC.Maybe.Maybe PaymentMethodCardWalletMasterpassBillingAddress'),
    -- | email: Owner\'s verified email. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletMasterpassEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | name: Owner\'s verified full name. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletMasterpassName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | shipping_address: Owner\'s verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    paymentMethodCardWalletMasterpassShippingAddress :: (GHC.Maybe.Maybe PaymentMethodCardWalletMasterpassShippingAddress')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardWalletMasterpass where
  toJSON obj = Data.Aeson.Types.Internal.object ("billing_address" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassBillingAddress obj : "email" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassEmail obj : "name" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassName obj : "shipping_address" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassShippingAddress obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("billing_address" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassBillingAddress obj) GHC.Base.<> (("email" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassEmail obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassName obj) GHC.Base.<> ("shipping_address" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassShippingAddress obj))))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardWalletMasterpass where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCardWalletMasterpass" (\obj -> (((GHC.Base.pure PaymentMethodCardWalletMasterpass GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_address"))

-- | Create a new 'PaymentMethodCardWalletMasterpass' with all required fields.
mkPaymentMethodCardWalletMasterpass :: PaymentMethodCardWalletMasterpass
mkPaymentMethodCardWalletMasterpass =
  PaymentMethodCardWalletMasterpass
    { paymentMethodCardWalletMasterpassBillingAddress = GHC.Maybe.Nothing,
      paymentMethodCardWalletMasterpassEmail = GHC.Maybe.Nothing,
      paymentMethodCardWalletMasterpassName = GHC.Maybe.Nothing,
      paymentMethodCardWalletMasterpassShippingAddress = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.payment_method_card_wallet_masterpass.properties.billing_address.anyOf@ in the specification.
--
-- Owner\\\'s verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
data PaymentMethodCardWalletMasterpassBillingAddress' = PaymentMethodCardWalletMasterpassBillingAddress'
  { -- | city: City, district, suburb, town, or village.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletMasterpassBillingAddress'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletMasterpassBillingAddress'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | line1: Address line 1 (e.g., street, PO Box, or company name).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletMasterpassBillingAddress'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletMasterpassBillingAddress'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | postal_code: ZIP or postal code.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletMasterpassBillingAddress'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | state: State, county, province, or region.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletMasterpassBillingAddress'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardWalletMasterpassBillingAddress' where
  toJSON obj = Data.Aeson.Types.Internal.object ("city" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassBillingAddress'City obj : "country" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassBillingAddress'Country obj : "line1" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassBillingAddress'Line1 obj : "line2" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassBillingAddress'Line2 obj : "postal_code" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassBillingAddress'PostalCode obj : "state" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassBillingAddress'State obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("city" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassBillingAddress'City obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassBillingAddress'Country obj) GHC.Base.<> (("line1" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassBillingAddress'Line1 obj) GHC.Base.<> (("line2" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassBillingAddress'Line2 obj) GHC.Base.<> (("postal_code" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassBillingAddress'PostalCode obj) GHC.Base.<> ("state" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassBillingAddress'State obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardWalletMasterpassBillingAddress' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCardWalletMasterpassBillingAddress'" (\obj -> (((((GHC.Base.pure PaymentMethodCardWalletMasterpassBillingAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))

-- | Create a new 'PaymentMethodCardWalletMasterpassBillingAddress'' with all required fields.
mkPaymentMethodCardWalletMasterpassBillingAddress' :: PaymentMethodCardWalletMasterpassBillingAddress'
mkPaymentMethodCardWalletMasterpassBillingAddress' =
  PaymentMethodCardWalletMasterpassBillingAddress'
    { paymentMethodCardWalletMasterpassBillingAddress'City = GHC.Maybe.Nothing,
      paymentMethodCardWalletMasterpassBillingAddress'Country = GHC.Maybe.Nothing,
      paymentMethodCardWalletMasterpassBillingAddress'Line1 = GHC.Maybe.Nothing,
      paymentMethodCardWalletMasterpassBillingAddress'Line2 = GHC.Maybe.Nothing,
      paymentMethodCardWalletMasterpassBillingAddress'PostalCode = GHC.Maybe.Nothing,
      paymentMethodCardWalletMasterpassBillingAddress'State = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.payment_method_card_wallet_masterpass.properties.shipping_address.anyOf@ in the specification.
--
-- Owner\\\'s verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
data PaymentMethodCardWalletMasterpassShippingAddress' = PaymentMethodCardWalletMasterpassShippingAddress'
  { -- | city: City, district, suburb, town, or village.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletMasterpassShippingAddress'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletMasterpassShippingAddress'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | line1: Address line 1 (e.g., street, PO Box, or company name).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletMasterpassShippingAddress'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletMasterpassShippingAddress'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | postal_code: ZIP or postal code.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletMasterpassShippingAddress'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | state: State, county, province, or region.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodCardWalletMasterpassShippingAddress'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardWalletMasterpassShippingAddress' where
  toJSON obj = Data.Aeson.Types.Internal.object ("city" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassShippingAddress'City obj : "country" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassShippingAddress'Country obj : "line1" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassShippingAddress'Line1 obj : "line2" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassShippingAddress'Line2 obj : "postal_code" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassShippingAddress'PostalCode obj : "state" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassShippingAddress'State obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("city" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassShippingAddress'City obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassShippingAddress'Country obj) GHC.Base.<> (("line1" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassShippingAddress'Line1 obj) GHC.Base.<> (("line2" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassShippingAddress'Line2 obj) GHC.Base.<> (("postal_code" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassShippingAddress'PostalCode obj) GHC.Base.<> ("state" Data.Aeson.Types.ToJSON..= paymentMethodCardWalletMasterpassShippingAddress'State obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardWalletMasterpassShippingAddress' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCardWalletMasterpassShippingAddress'" (\obj -> (((((GHC.Base.pure PaymentMethodCardWalletMasterpassShippingAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))

-- | Create a new 'PaymentMethodCardWalletMasterpassShippingAddress'' with all required fields.
mkPaymentMethodCardWalletMasterpassShippingAddress' :: PaymentMethodCardWalletMasterpassShippingAddress'
mkPaymentMethodCardWalletMasterpassShippingAddress' =
  PaymentMethodCardWalletMasterpassShippingAddress'
    { paymentMethodCardWalletMasterpassShippingAddress'City = GHC.Maybe.Nothing,
      paymentMethodCardWalletMasterpassShippingAddress'Country = GHC.Maybe.Nothing,
      paymentMethodCardWalletMasterpassShippingAddress'Line1 = GHC.Maybe.Nothing,
      paymentMethodCardWalletMasterpassShippingAddress'Line2 = GHC.Maybe.Nothing,
      paymentMethodCardWalletMasterpassShippingAddress'PostalCode = GHC.Maybe.Nothing,
      paymentMethodCardWalletMasterpassShippingAddress'State = GHC.Maybe.Nothing
    }
