{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SourceOrder
module StripeAPI.Types.SourceOrder where

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
import {-# SOURCE #-} StripeAPI.Types.Shipping
import {-# SOURCE #-} StripeAPI.Types.SourceOrderItem
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.source_order@ in the specification.
data SourceOrder = SourceOrder
  { -- | amount: A positive integer in the smallest currency unit (that is, 100 cents for \$1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount for the order.
    sourceOrderAmount :: GHC.Types.Int,
    -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    sourceOrderCurrency :: Data.Text.Internal.Text,
    -- | email: The email address of the customer placing the order.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOrderEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | items: List of items constituting the order.
    sourceOrderItems :: (GHC.Maybe.Maybe ([SourceOrderItem])),
    -- | shipping:
    sourceOrderShipping :: (GHC.Maybe.Maybe Shipping)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceOrder where
  toJSON obj = Data.Aeson.Types.Internal.object ("amount" Data.Aeson.Types.ToJSON..= sourceOrderAmount obj : "currency" Data.Aeson.Types.ToJSON..= sourceOrderCurrency obj : "email" Data.Aeson.Types.ToJSON..= sourceOrderEmail obj : "items" Data.Aeson.Types.ToJSON..= sourceOrderItems obj : "shipping" Data.Aeson.Types.ToJSON..= sourceOrderShipping obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("amount" Data.Aeson.Types.ToJSON..= sourceOrderAmount obj) GHC.Base.<> (("currency" Data.Aeson.Types.ToJSON..= sourceOrderCurrency obj) GHC.Base.<> (("email" Data.Aeson.Types.ToJSON..= sourceOrderEmail obj) GHC.Base.<> (("items" Data.Aeson.Types.ToJSON..= sourceOrderItems obj) GHC.Base.<> ("shipping" Data.Aeson.Types.ToJSON..= sourceOrderShipping obj)))))

instance Data.Aeson.Types.FromJSON.FromJSON SourceOrder where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceOrder" (\obj -> ((((GHC.Base.pure SourceOrder GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping"))

-- | Create a new 'SourceOrder' with all required fields.
mkSourceOrder ::
  -- | 'sourceOrderAmount'
  GHC.Types.Int ->
  -- | 'sourceOrderCurrency'
  Data.Text.Internal.Text ->
  SourceOrder
mkSourceOrder sourceOrderAmount sourceOrderCurrency =
  SourceOrder
    { sourceOrderAmount = sourceOrderAmount,
      sourceOrderCurrency = sourceOrderCurrency,
      sourceOrderEmail = GHC.Maybe.Nothing,
      sourceOrderItems = GHC.Maybe.Nothing,
      sourceOrderShipping = GHC.Maybe.Nothing
    }
