{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema ExchangeRate
module StripeAPI.Types.ExchangeRate where

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

-- | Defines the object schema located at @components.schemas.exchange_rate@ in the specification.
--
-- \`Exchange Rate\` objects allow you to determine the rates that Stripe is
-- currently using to convert from one currency to another. Since this number is
-- variable throughout the day, there are various reasons why you might want to
-- know the current rate (for example, to dynamically price an item for a user
-- with a default payment in a foreign currency).
--
-- If you want a guarantee that the charge is made with a certain exchange rate
-- you expect is current, you can pass in \`exchange_rate\` to charges endpoints.
-- If the value is no longer up to date, the charge won\'t go through. Please
-- refer to our [Exchange Rates API](https:\/\/stripe.com\/docs\/exchange-rates) guide for more
-- details.
data ExchangeRate = ExchangeRate
  { -- | id: Unique identifier for the object. Represented as the three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html) in lowercase.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    exchangeRateId :: Data.Text.Internal.Text,
    -- | rates: Hash where the keys are supported currencies and the values are the exchange rate at which the base id currency converts to the key currency.
    exchangeRateRates :: Data.Aeson.Types.Internal.Object
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON ExchangeRate where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["id" Data.Aeson.Types.ToJSON..= exchangeRateId obj] : ["rates" Data.Aeson.Types.ToJSON..= exchangeRateRates obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "exchange_rate"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["id" Data.Aeson.Types.ToJSON..= exchangeRateId obj] : ["rates" Data.Aeson.Types.ToJSON..= exchangeRateRates obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "exchange_rate"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON ExchangeRate where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "ExchangeRate" (\obj -> (GHC.Base.pure ExchangeRate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "rates"))

-- | Create a new 'ExchangeRate' with all required fields.
mkExchangeRate ::
  -- | 'exchangeRateId'
  Data.Text.Internal.Text ->
  -- | 'exchangeRateRates'
  Data.Aeson.Types.Internal.Object ->
  ExchangeRate
mkExchangeRate exchangeRateId exchangeRateRates =
  ExchangeRate
    { exchangeRateId = exchangeRateId,
      exchangeRateRates = exchangeRateRates
    }
