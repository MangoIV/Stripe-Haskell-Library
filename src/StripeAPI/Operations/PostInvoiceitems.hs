{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postInvoiceitems
module StripeAPI.Operations.PostInvoiceitems where

import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified StripeAPI.Common
import StripeAPI.Types
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | > POST /v1/invoiceitems
--
-- \<p>Creates an item to be added to a draft invoice (up to 250 items per invoice). If no invoice is specified, the item will be on the next invoice created for the customer specified.\<\/p>
postInvoiceitems ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | The request body to send
  PostInvoiceitemsRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostInvoiceitemsResponse)
postInvoiceitems body =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostInvoiceitemsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostInvoiceitemsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Invoiceitem
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostInvoiceitemsResponseDefault
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                         )
                response_0
          )
          response_0
    )
    (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/invoiceitems") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/invoiceitems.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostInvoiceitemsRequestBody = PostInvoiceitemsRequestBody
  { -- | amount: The integer amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. Passing in a negative \`amount\` will reduce the \`amount_due\` on the invoice.
    postInvoiceitemsRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    postInvoiceitemsRequestBodyCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | customer: The ID of the customer who will be billed when this invoice item is billed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postInvoiceitemsRequestBodyCustomer :: Data.Text.Internal.Text,
    -- | description: An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postInvoiceitemsRequestBodyDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | discountable: Controls whether discounts apply to this invoice item. Defaults to false for prorations or negative invoice items, and true for all other invoice items.
    postInvoiceitemsRequestBodyDiscountable :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | discounts: The coupons to redeem into discounts for the invoice item or invoice line item.
    postInvoiceitemsRequestBodyDiscounts :: (GHC.Maybe.Maybe PostInvoiceitemsRequestBodyDiscounts'Variants),
    -- | expand: Specifies which fields in the response should be expanded.
    postInvoiceitemsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | invoice: The ID of an existing invoice to add this invoice item to. When left blank, the invoice item will be added to the next upcoming scheduled invoice. This is useful when adding invoice items in response to an invoice.created webhook. You can only add invoice items to draft invoices and there is a maximum of 250 items per invoice.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postInvoiceitemsRequestBodyInvoice :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postInvoiceitemsRequestBodyMetadata :: (GHC.Maybe.Maybe PostInvoiceitemsRequestBodyMetadata'Variants),
    -- | period: The period associated with this invoice item. When set to different values, the period will be rendered on the invoice.
    postInvoiceitemsRequestBodyPeriod :: (GHC.Maybe.Maybe PostInvoiceitemsRequestBodyPeriod'),
    -- | price: The ID of the price object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postInvoiceitemsRequestBodyPrice :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | price_data: Data used to generate a new [Price](https:\/\/stripe.com\/docs\/api\/prices) object inline.
    postInvoiceitemsRequestBodyPriceData :: (GHC.Maybe.Maybe PostInvoiceitemsRequestBodyPriceData'),
    -- | quantity: Non-negative integer. The quantity of units for the invoice item.
    postInvoiceitemsRequestBodyQuantity :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | subscription: The ID of a subscription to add this invoice item to. When left blank, the invoice item will be be added to the next upcoming scheduled invoice. When set, scheduled invoices for subscriptions other than the specified subscription will ignore the invoice item. Use this when you want to express that an invoice item has been accrued within the context of a particular subscription.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postInvoiceitemsRequestBodySubscription :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | tax_rates: The tax rates which apply to the invoice item. When set, the \`default_tax_rates\` on the invoice do not apply to this invoice item.
    postInvoiceitemsRequestBodyTaxRates :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | unit_amount: The integer unit amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. This \`unit_amount\` will be multiplied by the quantity to get the full amount. Passing in a negative \`unit_amount\` will reduce the \`amount_due\` on the invoice.
    postInvoiceitemsRequestBodyUnitAmount :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | unit_amount_decimal: Same as \`unit_amount\`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of \`unit_amount\` and \`unit_amount_decimal\` can be set.
    postInvoiceitemsRequestBodyUnitAmountDecimal :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostInvoiceitemsRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyCurrency obj) : ["customer" Data.Aeson.Types.ToJSON..= postInvoiceitemsRequestBodyCustomer obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("discountable" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyDiscountable obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("discounts" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyDiscounts obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyInvoice obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("period" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyPeriod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("price" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyPrice obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("price_data" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyPriceData obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("quantity" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyQuantity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subscription" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodySubscription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_rates" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyTaxRates obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyUnitAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount_decimal" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyUnitAmountDecimal obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyCurrency obj) : ["customer" Data.Aeson.Types.ToJSON..= postInvoiceitemsRequestBodyCustomer obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("discountable" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyDiscountable obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("discounts" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyDiscounts obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyInvoice obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("period" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyPeriod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("price" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyPrice obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("price_data" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyPriceData obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("quantity" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyQuantity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subscription" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodySubscription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_rates" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyTaxRates obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyUnitAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount_decimal" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyUnitAmountDecimal obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostInvoiceitemsRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoiceitemsRequestBody" (\obj -> ((((((((((((((((GHC.Base.pure PostInvoiceitemsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "discountable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "discounts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "invoice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "period")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "price")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "price_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "subscription")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "unit_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "unit_amount_decimal"))

-- | Create a new 'PostInvoiceitemsRequestBody' with all required fields.
mkPostInvoiceitemsRequestBody ::
  -- | 'postInvoiceitemsRequestBodyCustomer'
  Data.Text.Internal.Text ->
  PostInvoiceitemsRequestBody
mkPostInvoiceitemsRequestBody postInvoiceitemsRequestBodyCustomer =
  PostInvoiceitemsRequestBody
    { postInvoiceitemsRequestBodyAmount = GHC.Maybe.Nothing,
      postInvoiceitemsRequestBodyCurrency = GHC.Maybe.Nothing,
      postInvoiceitemsRequestBodyCustomer = postInvoiceitemsRequestBodyCustomer,
      postInvoiceitemsRequestBodyDescription = GHC.Maybe.Nothing,
      postInvoiceitemsRequestBodyDiscountable = GHC.Maybe.Nothing,
      postInvoiceitemsRequestBodyDiscounts = GHC.Maybe.Nothing,
      postInvoiceitemsRequestBodyExpand = GHC.Maybe.Nothing,
      postInvoiceitemsRequestBodyInvoice = GHC.Maybe.Nothing,
      postInvoiceitemsRequestBodyMetadata = GHC.Maybe.Nothing,
      postInvoiceitemsRequestBodyPeriod = GHC.Maybe.Nothing,
      postInvoiceitemsRequestBodyPrice = GHC.Maybe.Nothing,
      postInvoiceitemsRequestBodyPriceData = GHC.Maybe.Nothing,
      postInvoiceitemsRequestBodyQuantity = GHC.Maybe.Nothing,
      postInvoiceitemsRequestBodySubscription = GHC.Maybe.Nothing,
      postInvoiceitemsRequestBodyTaxRates = GHC.Maybe.Nothing,
      postInvoiceitemsRequestBodyUnitAmount = GHC.Maybe.Nothing,
      postInvoiceitemsRequestBodyUnitAmountDecimal = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/invoiceitems.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.discounts.anyOf.items@ in the specification.
data PostInvoiceitemsRequestBodyDiscounts'OneOf1 = PostInvoiceitemsRequestBodyDiscounts'OneOf1
  { -- | coupon
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postInvoiceitemsRequestBodyDiscounts'OneOf1Coupon :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | discount
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postInvoiceitemsRequestBodyDiscounts'OneOf1Discount :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostInvoiceitemsRequestBodyDiscounts'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("coupon" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyDiscounts'OneOf1Coupon obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("discount" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyDiscounts'OneOf1Discount obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("coupon" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyDiscounts'OneOf1Coupon obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("discount" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyDiscounts'OneOf1Discount obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostInvoiceitemsRequestBodyDiscounts'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoiceitemsRequestBodyDiscounts'OneOf1" (\obj -> (GHC.Base.pure PostInvoiceitemsRequestBodyDiscounts'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "discount"))

-- | Create a new 'PostInvoiceitemsRequestBodyDiscounts'OneOf1' with all required fields.
mkPostInvoiceitemsRequestBodyDiscounts'OneOf1 :: PostInvoiceitemsRequestBodyDiscounts'OneOf1
mkPostInvoiceitemsRequestBodyDiscounts'OneOf1 =
  PostInvoiceitemsRequestBodyDiscounts'OneOf1
    { postInvoiceitemsRequestBodyDiscounts'OneOf1Coupon = GHC.Maybe.Nothing,
      postInvoiceitemsRequestBodyDiscounts'OneOf1Discount = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/invoiceitems.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.discounts.anyOf@ in the specification.
--
-- The coupons to redeem into discounts for the invoice item or invoice line item.
data PostInvoiceitemsRequestBodyDiscounts'Variants
  = -- | Represents the JSON value @""@
    PostInvoiceitemsRequestBodyDiscounts'EmptyString
  | PostInvoiceitemsRequestBodyDiscounts'ListTPostInvoiceitemsRequestBodyDiscounts'OneOf1 ([PostInvoiceitemsRequestBodyDiscounts'OneOf1])
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostInvoiceitemsRequestBodyDiscounts'Variants where
  toJSON (PostInvoiceitemsRequestBodyDiscounts'ListTPostInvoiceitemsRequestBodyDiscounts'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostInvoiceitemsRequestBodyDiscounts'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostInvoiceitemsRequestBodyDiscounts'Variants where
  parseJSON val =
    if
        | val GHC.Classes.== "" -> GHC.Base.pure PostInvoiceitemsRequestBodyDiscounts'EmptyString
        | GHC.Base.otherwise -> case (PostInvoiceitemsRequestBodyDiscounts'ListTPostInvoiceitemsRequestBodyDiscounts'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
          Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
          Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @paths.\/v1\/invoiceitems.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
--
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostInvoiceitemsRequestBodyMetadata'Variants
  = -- | Represents the JSON value @""@
    PostInvoiceitemsRequestBodyMetadata'EmptyString
  | PostInvoiceitemsRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostInvoiceitemsRequestBodyMetadata'Variants where
  toJSON (PostInvoiceitemsRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostInvoiceitemsRequestBodyMetadata'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostInvoiceitemsRequestBodyMetadata'Variants where
  parseJSON val =
    if
        | val GHC.Classes.== "" -> GHC.Base.pure PostInvoiceitemsRequestBodyMetadata'EmptyString
        | GHC.Base.otherwise -> case (PostInvoiceitemsRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
          Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
          Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the object schema located at @paths.\/v1\/invoiceitems.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.period@ in the specification.
--
-- The period associated with this invoice item. When set to different values, the period will be rendered on the invoice.
data PostInvoiceitemsRequestBodyPeriod' = PostInvoiceitemsRequestBodyPeriod'
  { -- | end
    postInvoiceitemsRequestBodyPeriod'End :: GHC.Types.Int,
    -- | start
    postInvoiceitemsRequestBodyPeriod'Start :: GHC.Types.Int
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostInvoiceitemsRequestBodyPeriod' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["end" Data.Aeson.Types.ToJSON..= postInvoiceitemsRequestBodyPeriod'End obj] : ["start" Data.Aeson.Types.ToJSON..= postInvoiceitemsRequestBodyPeriod'Start obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["end" Data.Aeson.Types.ToJSON..= postInvoiceitemsRequestBodyPeriod'End obj] : ["start" Data.Aeson.Types.ToJSON..= postInvoiceitemsRequestBodyPeriod'Start obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostInvoiceitemsRequestBodyPeriod' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoiceitemsRequestBodyPeriod'" (\obj -> (GHC.Base.pure PostInvoiceitemsRequestBodyPeriod' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "start"))

-- | Create a new 'PostInvoiceitemsRequestBodyPeriod'' with all required fields.
mkPostInvoiceitemsRequestBodyPeriod' ::
  -- | 'postInvoiceitemsRequestBodyPeriod'End'
  GHC.Types.Int ->
  -- | 'postInvoiceitemsRequestBodyPeriod'Start'
  GHC.Types.Int ->
  PostInvoiceitemsRequestBodyPeriod'
mkPostInvoiceitemsRequestBodyPeriod' postInvoiceitemsRequestBodyPeriod'End postInvoiceitemsRequestBodyPeriod'Start =
  PostInvoiceitemsRequestBodyPeriod'
    { postInvoiceitemsRequestBodyPeriod'End = postInvoiceitemsRequestBodyPeriod'End,
      postInvoiceitemsRequestBodyPeriod'Start = postInvoiceitemsRequestBodyPeriod'Start
    }

-- | Defines the object schema located at @paths.\/v1\/invoiceitems.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.price_data@ in the specification.
--
-- Data used to generate a new [Price](https:\/\/stripe.com\/docs\/api\/prices) object inline.
data PostInvoiceitemsRequestBodyPriceData' = PostInvoiceitemsRequestBodyPriceData'
  { -- | currency
    postInvoiceitemsRequestBodyPriceData'Currency :: Data.Text.Internal.Text,
    -- | product
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postInvoiceitemsRequestBodyPriceData'Product :: Data.Text.Internal.Text,
    -- | tax_behavior
    postInvoiceitemsRequestBodyPriceData'TaxBehavior :: (GHC.Maybe.Maybe PostInvoiceitemsRequestBodyPriceData'TaxBehavior'),
    -- | unit_amount
    postInvoiceitemsRequestBodyPriceData'UnitAmount :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | unit_amount_decimal
    postInvoiceitemsRequestBodyPriceData'UnitAmountDecimal :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostInvoiceitemsRequestBodyPriceData' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["currency" Data.Aeson.Types.ToJSON..= postInvoiceitemsRequestBodyPriceData'Currency obj] : ["product" Data.Aeson.Types.ToJSON..= postInvoiceitemsRequestBodyPriceData'Product obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_behavior" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyPriceData'TaxBehavior obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyPriceData'UnitAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount_decimal" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyPriceData'UnitAmountDecimal obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["currency" Data.Aeson.Types.ToJSON..= postInvoiceitemsRequestBodyPriceData'Currency obj] : ["product" Data.Aeson.Types.ToJSON..= postInvoiceitemsRequestBodyPriceData'Product obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_behavior" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyPriceData'TaxBehavior obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyPriceData'UnitAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount_decimal" Data.Aeson.Types.ToJSON..=)) (postInvoiceitemsRequestBodyPriceData'UnitAmountDecimal obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostInvoiceitemsRequestBodyPriceData' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoiceitemsRequestBodyPriceData'" (\obj -> ((((GHC.Base.pure PostInvoiceitemsRequestBodyPriceData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "product")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tax_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "unit_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "unit_amount_decimal"))

-- | Create a new 'PostInvoiceitemsRequestBodyPriceData'' with all required fields.
mkPostInvoiceitemsRequestBodyPriceData' ::
  -- | 'postInvoiceitemsRequestBodyPriceData'Currency'
  Data.Text.Internal.Text ->
  -- | 'postInvoiceitemsRequestBodyPriceData'Product'
  Data.Text.Internal.Text ->
  PostInvoiceitemsRequestBodyPriceData'
mkPostInvoiceitemsRequestBodyPriceData' postInvoiceitemsRequestBodyPriceData'Currency postInvoiceitemsRequestBodyPriceData'Product =
  PostInvoiceitemsRequestBodyPriceData'
    { postInvoiceitemsRequestBodyPriceData'Currency = postInvoiceitemsRequestBodyPriceData'Currency,
      postInvoiceitemsRequestBodyPriceData'Product = postInvoiceitemsRequestBodyPriceData'Product,
      postInvoiceitemsRequestBodyPriceData'TaxBehavior = GHC.Maybe.Nothing,
      postInvoiceitemsRequestBodyPriceData'UnitAmount = GHC.Maybe.Nothing,
      postInvoiceitemsRequestBodyPriceData'UnitAmountDecimal = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @paths.\/v1\/invoiceitems.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.price_data.properties.tax_behavior@ in the specification.
data PostInvoiceitemsRequestBodyPriceData'TaxBehavior'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostInvoiceitemsRequestBodyPriceData'TaxBehavior'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostInvoiceitemsRequestBodyPriceData'TaxBehavior'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"exclusive"@
    PostInvoiceitemsRequestBodyPriceData'TaxBehavior'EnumExclusive
  | -- | Represents the JSON value @"inclusive"@
    PostInvoiceitemsRequestBodyPriceData'TaxBehavior'EnumInclusive
  | -- | Represents the JSON value @"unspecified"@
    PostInvoiceitemsRequestBodyPriceData'TaxBehavior'EnumUnspecified
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostInvoiceitemsRequestBodyPriceData'TaxBehavior' where
  toJSON (PostInvoiceitemsRequestBodyPriceData'TaxBehavior'Other val) = val
  toJSON (PostInvoiceitemsRequestBodyPriceData'TaxBehavior'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostInvoiceitemsRequestBodyPriceData'TaxBehavior'EnumExclusive) = "exclusive"
  toJSON (PostInvoiceitemsRequestBodyPriceData'TaxBehavior'EnumInclusive) = "inclusive"
  toJSON (PostInvoiceitemsRequestBodyPriceData'TaxBehavior'EnumUnspecified) = "unspecified"

instance Data.Aeson.Types.FromJSON.FromJSON PostInvoiceitemsRequestBodyPriceData'TaxBehavior' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "exclusive" -> PostInvoiceitemsRequestBodyPriceData'TaxBehavior'EnumExclusive
            | val GHC.Classes.== "inclusive" -> PostInvoiceitemsRequestBodyPriceData'TaxBehavior'EnumInclusive
            | val GHC.Classes.== "unspecified" -> PostInvoiceitemsRequestBodyPriceData'TaxBehavior'EnumUnspecified
            | GHC.Base.otherwise -> PostInvoiceitemsRequestBodyPriceData'TaxBehavior'Other val
      )

-- | Represents a response of the operation 'postInvoiceitems'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostInvoiceitemsResponseError' is used.
data PostInvoiceitemsResponse
  = -- | Means either no matching case available or a parse error
    PostInvoiceitemsResponseError GHC.Base.String
  | -- | Successful response.
    PostInvoiceitemsResponse200 Invoiceitem
  | -- | Error response.
    PostInvoiceitemsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
