{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema CreditNoteLineItem
module StripeAPI.Types.CreditNoteLineItem where

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
import {-# SOURCE #-} StripeAPI.Types.CreditNoteTaxAmount
import {-# SOURCE #-} StripeAPI.Types.DiscountsResourceDiscountAmount
import {-# SOURCE #-} StripeAPI.Types.TaxRate
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.credit_note_line_item@ in the specification.
data CreditNoteLineItem = CreditNoteLineItem
  { -- | amount: The integer amount in %s representing the gross amount being credited for this line item, excluding (exclusive) tax and discounts.
    creditNoteLineItemAmount :: GHC.Types.Int,
    -- | description: Description of the item being credited.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    creditNoteLineItemDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | discount_amount: The integer amount in %s representing the discount being credited for this line item.
    creditNoteLineItemDiscountAmount :: GHC.Types.Int,
    -- | discount_amounts: The amount of discount calculated per discount for this line item
    creditNoteLineItemDiscountAmounts :: ([DiscountsResourceDiscountAmount]),
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    creditNoteLineItemId :: Data.Text.Internal.Text,
    -- | invoice_line_item: ID of the invoice line item being credited
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    creditNoteLineItemInvoiceLineItem :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    creditNoteLineItemLivemode :: GHC.Types.Bool,
    -- | quantity: The number of units of product being credited.
    creditNoteLineItemQuantity :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | tax_amounts: The amount of tax calculated per tax rate for this line item
    creditNoteLineItemTaxAmounts :: ([CreditNoteTaxAmount]),
    -- | tax_rates: The tax rates which apply to the line item.
    creditNoteLineItemTaxRates :: ([TaxRate]),
    -- | type: The type of the credit note line item, one of \`invoice_line_item\` or \`custom_line_item\`. When the type is \`invoice_line_item\` there is an additional \`invoice_line_item\` property on the resource the value of which is the id of the credited line item on the invoice.
    creditNoteLineItemType :: CreditNoteLineItemType',
    -- | unit_amount: The cost of each unit of product being credited.
    creditNoteLineItemUnitAmount :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | unit_amount_decimal: Same as \`unit_amount\`, but contains a decimal value with at most 12 decimal places.
    creditNoteLineItemUnitAmountDecimal :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON CreditNoteLineItem where
  toJSON obj = Data.Aeson.Types.Internal.object ("amount" Data.Aeson.Types.ToJSON..= creditNoteLineItemAmount obj : "description" Data.Aeson.Types.ToJSON..= creditNoteLineItemDescription obj : "discount_amount" Data.Aeson.Types.ToJSON..= creditNoteLineItemDiscountAmount obj : "discount_amounts" Data.Aeson.Types.ToJSON..= creditNoteLineItemDiscountAmounts obj : "id" Data.Aeson.Types.ToJSON..= creditNoteLineItemId obj : "invoice_line_item" Data.Aeson.Types.ToJSON..= creditNoteLineItemInvoiceLineItem obj : "livemode" Data.Aeson.Types.ToJSON..= creditNoteLineItemLivemode obj : "quantity" Data.Aeson.Types.ToJSON..= creditNoteLineItemQuantity obj : "tax_amounts" Data.Aeson.Types.ToJSON..= creditNoteLineItemTaxAmounts obj : "tax_rates" Data.Aeson.Types.ToJSON..= creditNoteLineItemTaxRates obj : "type" Data.Aeson.Types.ToJSON..= creditNoteLineItemType obj : "unit_amount" Data.Aeson.Types.ToJSON..= creditNoteLineItemUnitAmount obj : "unit_amount_decimal" Data.Aeson.Types.ToJSON..= creditNoteLineItemUnitAmountDecimal obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "credit_note_line_item" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("amount" Data.Aeson.Types.ToJSON..= creditNoteLineItemAmount obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= creditNoteLineItemDescription obj) GHC.Base.<> (("discount_amount" Data.Aeson.Types.ToJSON..= creditNoteLineItemDiscountAmount obj) GHC.Base.<> (("discount_amounts" Data.Aeson.Types.ToJSON..= creditNoteLineItemDiscountAmounts obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= creditNoteLineItemId obj) GHC.Base.<> (("invoice_line_item" Data.Aeson.Types.ToJSON..= creditNoteLineItemInvoiceLineItem obj) GHC.Base.<> (("livemode" Data.Aeson.Types.ToJSON..= creditNoteLineItemLivemode obj) GHC.Base.<> (("quantity" Data.Aeson.Types.ToJSON..= creditNoteLineItemQuantity obj) GHC.Base.<> (("tax_amounts" Data.Aeson.Types.ToJSON..= creditNoteLineItemTaxAmounts obj) GHC.Base.<> (("tax_rates" Data.Aeson.Types.ToJSON..= creditNoteLineItemTaxRates obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= creditNoteLineItemType obj) GHC.Base.<> (("unit_amount" Data.Aeson.Types.ToJSON..= creditNoteLineItemUnitAmount obj) GHC.Base.<> (("unit_amount_decimal" Data.Aeson.Types.ToJSON..= creditNoteLineItemUnitAmountDecimal obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "credit_note_line_item"))))))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON CreditNoteLineItem where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "CreditNoteLineItem" (\obj -> ((((((((((((GHC.Base.pure CreditNoteLineItem GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "discount_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "discount_amounts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_line_item")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tax_amounts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_amount_decimal"))

-- | Create a new 'CreditNoteLineItem' with all required fields.
mkCreditNoteLineItem ::
  -- | 'creditNoteLineItemAmount'
  GHC.Types.Int ->
  -- | 'creditNoteLineItemDiscountAmount'
  GHC.Types.Int ->
  -- | 'creditNoteLineItemDiscountAmounts'
  [DiscountsResourceDiscountAmount] ->
  -- | 'creditNoteLineItemId'
  Data.Text.Internal.Text ->
  -- | 'creditNoteLineItemLivemode'
  GHC.Types.Bool ->
  -- | 'creditNoteLineItemTaxAmounts'
  [CreditNoteTaxAmount] ->
  -- | 'creditNoteLineItemTaxRates'
  [TaxRate] ->
  -- | 'creditNoteLineItemType'
  CreditNoteLineItemType' ->
  CreditNoteLineItem
mkCreditNoteLineItem creditNoteLineItemAmount creditNoteLineItemDiscountAmount creditNoteLineItemDiscountAmounts creditNoteLineItemId creditNoteLineItemLivemode creditNoteLineItemTaxAmounts creditNoteLineItemTaxRates creditNoteLineItemType =
  CreditNoteLineItem
    { creditNoteLineItemAmount = creditNoteLineItemAmount,
      creditNoteLineItemDescription = GHC.Maybe.Nothing,
      creditNoteLineItemDiscountAmount = creditNoteLineItemDiscountAmount,
      creditNoteLineItemDiscountAmounts = creditNoteLineItemDiscountAmounts,
      creditNoteLineItemId = creditNoteLineItemId,
      creditNoteLineItemInvoiceLineItem = GHC.Maybe.Nothing,
      creditNoteLineItemLivemode = creditNoteLineItemLivemode,
      creditNoteLineItemQuantity = GHC.Maybe.Nothing,
      creditNoteLineItemTaxAmounts = creditNoteLineItemTaxAmounts,
      creditNoteLineItemTaxRates = creditNoteLineItemTaxRates,
      creditNoteLineItemType = creditNoteLineItemType,
      creditNoteLineItemUnitAmount = GHC.Maybe.Nothing,
      creditNoteLineItemUnitAmountDecimal = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.credit_note_line_item.properties.type@ in the specification.
--
-- The type of the credit note line item, one of \`invoice_line_item\` or \`custom_line_item\`. When the type is \`invoice_line_item\` there is an additional \`invoice_line_item\` property on the resource the value of which is the id of the credited line item on the invoice.
data CreditNoteLineItemType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    CreditNoteLineItemType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    CreditNoteLineItemType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"custom_line_item"@
    CreditNoteLineItemType'EnumCustomLineItem
  | -- | Represents the JSON value @"invoice_line_item"@
    CreditNoteLineItemType'EnumInvoiceLineItem
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CreditNoteLineItemType' where
  toJSON (CreditNoteLineItemType'Other val) = val
  toJSON (CreditNoteLineItemType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (CreditNoteLineItemType'EnumCustomLineItem) = "custom_line_item"
  toJSON (CreditNoteLineItemType'EnumInvoiceLineItem) = "invoice_line_item"

instance Data.Aeson.Types.FromJSON.FromJSON CreditNoteLineItemType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "custom_line_item" -> CreditNoteLineItemType'EnumCustomLineItem
            | val GHC.Classes.== "invoice_line_item" -> CreditNoteLineItemType'EnumInvoiceLineItem
            | GHC.Base.otherwise -> CreditNoteLineItemType'Other val
      )
