{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SourceOrderItem
module StripeAPI.Types.SourceOrderItem where

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

-- | Defines the object schema located at @components.schemas.source_order_item@ in the specification.
data SourceOrderItem = SourceOrderItem
  { -- | amount: The amount (price) for this order item.
    sourceOrderItemAmount :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | currency: This currency of this order item. Required when \`amount\` is present.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOrderItemCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | description: Human-readable description for this order item.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOrderItemDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | parent: The ID of the associated object for this line item. Expandable if not null (e.g., expandable to a SKU).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOrderItemParent :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | quantity: The quantity of this order item. When type is \`sku\`, this is the number of instances of the SKU to be ordered.
    sourceOrderItemQuantity :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | type: The type of this order item. Must be \`sku\`, \`tax\`, or \`shipping\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOrderItemType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceOrderItem where
  toJSON obj = Data.Aeson.Types.Internal.object ("amount" Data.Aeson.Types.ToJSON..= sourceOrderItemAmount obj : "currency" Data.Aeson.Types.ToJSON..= sourceOrderItemCurrency obj : "description" Data.Aeson.Types.ToJSON..= sourceOrderItemDescription obj : "parent" Data.Aeson.Types.ToJSON..= sourceOrderItemParent obj : "quantity" Data.Aeson.Types.ToJSON..= sourceOrderItemQuantity obj : "type" Data.Aeson.Types.ToJSON..= sourceOrderItemType obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("amount" Data.Aeson.Types.ToJSON..= sourceOrderItemAmount obj) GHC.Base.<> (("currency" Data.Aeson.Types.ToJSON..= sourceOrderItemCurrency obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= sourceOrderItemDescription obj) GHC.Base.<> (("parent" Data.Aeson.Types.ToJSON..= sourceOrderItemParent obj) GHC.Base.<> (("quantity" Data.Aeson.Types.ToJSON..= sourceOrderItemQuantity obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= sourceOrderItemType obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON SourceOrderItem where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceOrderItem" (\obj -> (((((GHC.Base.pure SourceOrderItem GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))

-- | Create a new 'SourceOrderItem' with all required fields.
mkSourceOrderItem :: SourceOrderItem
mkSourceOrderItem =
  SourceOrderItem
    { sourceOrderItemAmount = GHC.Maybe.Nothing,
      sourceOrderItemCurrency = GHC.Maybe.Nothing,
      sourceOrderItemDescription = GHC.Maybe.Nothing,
      sourceOrderItemParent = GHC.Maybe.Nothing,
      sourceOrderItemQuantity = GHC.Maybe.Nothing,
      sourceOrderItemType = GHC.Maybe.Nothing
    }
