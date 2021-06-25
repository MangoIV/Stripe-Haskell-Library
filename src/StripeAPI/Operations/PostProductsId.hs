{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postProductsId
module StripeAPI.Operations.PostProductsId where

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
import qualified Data.Functor
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

-- | > POST /v1/products/{id}
--
-- \<p>Updates the specific product by setting the values of the parameters passed. Any parameters not provided will be left unchanged.\<\/p>
postProductsId ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | id | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostProductsIdRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostProductsIdResponse)
postProductsId
  id
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostProductsIdResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostProductsIdResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Product
                                                        )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostProductsIdResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/products/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/products\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostProductsIdRequestBody = PostProductsIdRequestBody
  { -- | active: Whether the product is available for purchase.
    postProductsIdRequestBodyActive :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | description: The product\'s description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
    --
    -- Constraints:
    --
    -- * Maximum length of 40000
    postProductsIdRequestBodyDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | expand: Specifies which fields in the response should be expanded.
    postProductsIdRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | images: A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
    postProductsIdRequestBodyImages :: (GHC.Maybe.Maybe PostProductsIdRequestBodyImages'Variants),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postProductsIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostProductsIdRequestBodyMetadata'Variants),
    -- | name: The product\'s name, meant to be displayable to the customer. Whenever this product is sold via a subscription, name will show up on associated invoice line item descriptions.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postProductsIdRequestBodyName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | package_dimensions: The dimensions of this product for shipping purposes.
    postProductsIdRequestBodyPackageDimensions :: (GHC.Maybe.Maybe PostProductsIdRequestBodyPackageDimensions'Variants),
    -- | shippable: Whether this product is shipped (i.e., physical goods).
    postProductsIdRequestBodyShippable :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | statement_descriptor: An arbitrary string to be displayed on your customer\'s credit card or bank statement. While most banks display this information consistently, some may display it incorrectly or not at all.
    --
    -- This may be up to 22 characters. The statement description may not include \`\<\`, \`>\`, \`\\\`, \`\"\`, \`\'\` characters, and will appear on your customer\'s statement in capital letters. Non-ASCII characters are automatically stripped.
    --  It must contain at least one letter. May only be set if \`type=service\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 22
    postProductsIdRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | tax_code: A [tax code](https:\/\/stripe.com\/docs\/tax\/tax-codes) ID.
    postProductsIdRequestBodyTaxCode :: (GHC.Maybe.Maybe PostProductsIdRequestBodyTaxCode'Variants),
    -- | unit_label: A label that represents units of this product in Stripe and on customers’ receipts and invoices. When set, this will be included in associated invoice line item descriptions. May only be set if \`type=service\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 12
    postProductsIdRequestBodyUnitLabel :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | url: A URL of a publicly-accessible webpage for this product.
    postProductsIdRequestBodyUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostProductsIdRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object ("active" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyActive obj : "description" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyDescription obj : "expand" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyExpand obj : "images" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyImages obj : "metadata" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyMetadata obj : "name" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyName obj : "package_dimensions" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyPackageDimensions obj : "shippable" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyShippable obj : "statement_descriptor" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyStatementDescriptor obj : "tax_code" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyTaxCode obj : "unit_label" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyUnitLabel obj : "url" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyUrl obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("active" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyActive obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyDescription obj) GHC.Base.<> (("expand" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyExpand obj) GHC.Base.<> (("images" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyImages obj) GHC.Base.<> (("metadata" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyMetadata obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyName obj) GHC.Base.<> (("package_dimensions" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyPackageDimensions obj) GHC.Base.<> (("shippable" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyShippable obj) GHC.Base.<> (("statement_descriptor" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyStatementDescriptor obj) GHC.Base.<> (("tax_code" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyTaxCode obj) GHC.Base.<> (("unit_label" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyUnitLabel obj) GHC.Base.<> ("url" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyUrl obj))))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON PostProductsIdRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostProductsIdRequestBody" (\obj -> (((((((((((GHC.Base.pure PostProductsIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "images")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "package_dimensions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shippable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))

-- | Create a new 'PostProductsIdRequestBody' with all required fields.
mkPostProductsIdRequestBody :: PostProductsIdRequestBody
mkPostProductsIdRequestBody =
  PostProductsIdRequestBody
    { postProductsIdRequestBodyActive = GHC.Maybe.Nothing,
      postProductsIdRequestBodyDescription = GHC.Maybe.Nothing,
      postProductsIdRequestBodyExpand = GHC.Maybe.Nothing,
      postProductsIdRequestBodyImages = GHC.Maybe.Nothing,
      postProductsIdRequestBodyMetadata = GHC.Maybe.Nothing,
      postProductsIdRequestBodyName = GHC.Maybe.Nothing,
      postProductsIdRequestBodyPackageDimensions = GHC.Maybe.Nothing,
      postProductsIdRequestBodyShippable = GHC.Maybe.Nothing,
      postProductsIdRequestBodyStatementDescriptor = GHC.Maybe.Nothing,
      postProductsIdRequestBodyTaxCode = GHC.Maybe.Nothing,
      postProductsIdRequestBodyUnitLabel = GHC.Maybe.Nothing,
      postProductsIdRequestBodyUrl = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/products\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.images.anyOf@ in the specification.
--
-- A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
data PostProductsIdRequestBodyImages'Variants
  = -- | Represents the JSON value @""@
    PostProductsIdRequestBodyImages'EmptyString
  | PostProductsIdRequestBodyImages'ListTText ([Data.Text.Internal.Text])
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostProductsIdRequestBodyImages'Variants where
  toJSON (PostProductsIdRequestBodyImages'ListTText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostProductsIdRequestBodyImages'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostProductsIdRequestBodyImages'Variants where
  parseJSON val =
    if
        | val GHC.Classes.== "" -> GHC.Base.pure PostProductsIdRequestBodyImages'EmptyString
        | GHC.Base.otherwise -> case (PostProductsIdRequestBodyImages'ListTText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
          Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
          Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @paths.\/v1\/products\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
--
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostProductsIdRequestBodyMetadata'Variants
  = -- | Represents the JSON value @""@
    PostProductsIdRequestBodyMetadata'EmptyString
  | PostProductsIdRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostProductsIdRequestBodyMetadata'Variants where
  toJSON (PostProductsIdRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostProductsIdRequestBodyMetadata'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostProductsIdRequestBodyMetadata'Variants where
  parseJSON val =
    if
        | val GHC.Classes.== "" -> GHC.Base.pure PostProductsIdRequestBodyMetadata'EmptyString
        | GHC.Base.otherwise -> case (PostProductsIdRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
          Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
          Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the object schema located at @paths.\/v1\/products\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.package_dimensions.anyOf@ in the specification.
data PostProductsIdRequestBodyPackageDimensions'OneOf1 = PostProductsIdRequestBodyPackageDimensions'OneOf1
  { -- | height
    postProductsIdRequestBodyPackageDimensions'OneOf1Height :: GHC.Types.Double,
    -- | length
    postProductsIdRequestBodyPackageDimensions'OneOf1Length :: GHC.Types.Double,
    -- | weight
    postProductsIdRequestBodyPackageDimensions'OneOf1Weight :: GHC.Types.Double,
    -- | width
    postProductsIdRequestBodyPackageDimensions'OneOf1Width :: GHC.Types.Double
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostProductsIdRequestBodyPackageDimensions'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object ("height" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyPackageDimensions'OneOf1Height obj : "length" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyPackageDimensions'OneOf1Length obj : "weight" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyPackageDimensions'OneOf1Weight obj : "width" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyPackageDimensions'OneOf1Width obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("height" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyPackageDimensions'OneOf1Height obj) GHC.Base.<> (("length" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyPackageDimensions'OneOf1Length obj) GHC.Base.<> (("weight" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyPackageDimensions'OneOf1Weight obj) GHC.Base.<> ("width" Data.Aeson.Types.ToJSON..= postProductsIdRequestBodyPackageDimensions'OneOf1Width obj))))

instance Data.Aeson.Types.FromJSON.FromJSON PostProductsIdRequestBodyPackageDimensions'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostProductsIdRequestBodyPackageDimensions'OneOf1" (\obj -> (((GHC.Base.pure PostProductsIdRequestBodyPackageDimensions'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "length")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "weight")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "width"))

-- | Create a new 'PostProductsIdRequestBodyPackageDimensions'OneOf1' with all required fields.
mkPostProductsIdRequestBodyPackageDimensions'OneOf1 ::
  -- | 'postProductsIdRequestBodyPackageDimensions'OneOf1Height'
  GHC.Types.Double ->
  -- | 'postProductsIdRequestBodyPackageDimensions'OneOf1Length'
  GHC.Types.Double ->
  -- | 'postProductsIdRequestBodyPackageDimensions'OneOf1Weight'
  GHC.Types.Double ->
  -- | 'postProductsIdRequestBodyPackageDimensions'OneOf1Width'
  GHC.Types.Double ->
  PostProductsIdRequestBodyPackageDimensions'OneOf1
mkPostProductsIdRequestBodyPackageDimensions'OneOf1 postProductsIdRequestBodyPackageDimensions'OneOf1Height postProductsIdRequestBodyPackageDimensions'OneOf1Length postProductsIdRequestBodyPackageDimensions'OneOf1Weight postProductsIdRequestBodyPackageDimensions'OneOf1Width =
  PostProductsIdRequestBodyPackageDimensions'OneOf1
    { postProductsIdRequestBodyPackageDimensions'OneOf1Height = postProductsIdRequestBodyPackageDimensions'OneOf1Height,
      postProductsIdRequestBodyPackageDimensions'OneOf1Length = postProductsIdRequestBodyPackageDimensions'OneOf1Length,
      postProductsIdRequestBodyPackageDimensions'OneOf1Weight = postProductsIdRequestBodyPackageDimensions'OneOf1Weight,
      postProductsIdRequestBodyPackageDimensions'OneOf1Width = postProductsIdRequestBodyPackageDimensions'OneOf1Width
    }

-- | Defines the oneOf schema located at @paths.\/v1\/products\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.package_dimensions.anyOf@ in the specification.
--
-- The dimensions of this product for shipping purposes.
data PostProductsIdRequestBodyPackageDimensions'Variants
  = -- | Represents the JSON value @""@
    PostProductsIdRequestBodyPackageDimensions'EmptyString
  | PostProductsIdRequestBodyPackageDimensions'PostProductsIdRequestBodyPackageDimensions'OneOf1 PostProductsIdRequestBodyPackageDimensions'OneOf1
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostProductsIdRequestBodyPackageDimensions'Variants where
  toJSON (PostProductsIdRequestBodyPackageDimensions'PostProductsIdRequestBodyPackageDimensions'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostProductsIdRequestBodyPackageDimensions'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostProductsIdRequestBodyPackageDimensions'Variants where
  parseJSON val =
    if
        | val GHC.Classes.== "" -> GHC.Base.pure PostProductsIdRequestBodyPackageDimensions'EmptyString
        | GHC.Base.otherwise -> case (PostProductsIdRequestBodyPackageDimensions'PostProductsIdRequestBodyPackageDimensions'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
          Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
          Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @paths.\/v1\/products\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.tax_code.anyOf@ in the specification.
--
-- A [tax code](https:\/\/stripe.com\/docs\/tax\/tax-codes) ID.
data PostProductsIdRequestBodyTaxCode'Variants
  = -- | Represents the JSON value @""@
    PostProductsIdRequestBodyTaxCode'EmptyString
  | PostProductsIdRequestBodyTaxCode'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostProductsIdRequestBodyTaxCode'Variants where
  toJSON (PostProductsIdRequestBodyTaxCode'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostProductsIdRequestBodyTaxCode'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostProductsIdRequestBodyTaxCode'Variants where
  parseJSON val =
    if
        | val GHC.Classes.== "" -> GHC.Base.pure PostProductsIdRequestBodyTaxCode'EmptyString
        | GHC.Base.otherwise -> case (PostProductsIdRequestBodyTaxCode'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
          Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
          Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Represents a response of the operation 'postProductsId'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostProductsIdResponseError' is used.
data PostProductsIdResponse
  = -- | Means either no matching case available or a parse error
    PostProductsIdResponseError GHC.Base.String
  | -- | Successful response.
    PostProductsIdResponse200 Product
  | -- | Error response.
    PostProductsIdResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
