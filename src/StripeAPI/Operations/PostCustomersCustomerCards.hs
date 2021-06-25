{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postCustomersCustomerCards
module StripeAPI.Operations.PostCustomersCustomerCards where

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

-- | > POST /v1/customers/{customer}/cards
--
-- \<p>When you create a new credit card, you must specify a customer or recipient on which to create it.\<\/p>
--
-- \<p>If the card’s owner has no default card, then the new card will become the default.
-- However, if the owner already has a default, then it will not change.
-- To change the default, you should \<a href=\"\/docs\/api\#update_customer\">update the customer\<\/a> to have a new \<code>default_source\<\/code>.\<\/p>
postCustomersCustomerCards ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | customer | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostCustomersCustomerCardsRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostCustomersCustomerCardsResponse)
postCustomersCustomerCards
  customer
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostCustomersCustomerCardsResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostCustomersCustomerCardsResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              PaymentSource
                                                        )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostCustomersCustomerCardsResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/cards"))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/cards.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostCustomersCustomerCardsRequestBody = PostCustomersCustomerCardsRequestBody
  { -- | alipay_account: A token returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js) representing the user’s Alipay account details.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postCustomersCustomerCardsRequestBodyAlipayAccount :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | bank_account: Either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js), or a dictionary containing a user\'s bank account details.
    postCustomersCustomerCardsRequestBodyBankAccount :: (GHC.Maybe.Maybe PostCustomersCustomerCardsRequestBodyBankAccount'Variants),
    -- | card: A token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js).
    postCustomersCustomerCardsRequestBodyCard :: (GHC.Maybe.Maybe PostCustomersCustomerCardsRequestBodyCard'Variants),
    -- | expand: Specifies which fields in the response should be expanded.
    postCustomersCustomerCardsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postCustomersCustomerCardsRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | source: Please refer to full [documentation](https:\/\/stripe.com\/docs\/api) instead.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postCustomersCustomerCardsRequestBodySource :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostCustomersCustomerCardsRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object ("alipay_account" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyAlipayAccount obj : "bank_account" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyBankAccount obj : "card" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard obj : "expand" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyExpand obj : "metadata" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyMetadata obj : "source" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodySource obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("alipay_account" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyAlipayAccount obj) GHC.Base.<> (("bank_account" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyBankAccount obj) GHC.Base.<> (("card" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard obj) GHC.Base.<> (("expand" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyExpand obj) GHC.Base.<> (("metadata" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyMetadata obj) GHC.Base.<> ("source" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodySource obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCardsRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerCardsRequestBody" (\obj -> (((((GHC.Base.pure PostCustomersCustomerCardsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "alipay_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source"))

-- | Create a new 'PostCustomersCustomerCardsRequestBody' with all required fields.
mkPostCustomersCustomerCardsRequestBody :: PostCustomersCustomerCardsRequestBody
mkPostCustomersCustomerCardsRequestBody =
  PostCustomersCustomerCardsRequestBody
    { postCustomersCustomerCardsRequestBodyAlipayAccount = GHC.Maybe.Nothing,
      postCustomersCustomerCardsRequestBodyBankAccount = GHC.Maybe.Nothing,
      postCustomersCustomerCardsRequestBodyCard = GHC.Maybe.Nothing,
      postCustomersCustomerCardsRequestBodyExpand = GHC.Maybe.Nothing,
      postCustomersCustomerCardsRequestBodyMetadata = GHC.Maybe.Nothing,
      postCustomersCustomerCardsRequestBodySource = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/cards.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.bank_account.anyOf@ in the specification.
data PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1 = PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1
  { -- | account_holder_name
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | account_holder_type
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderType :: (GHC.Maybe.Maybe PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderType'),
    -- | account_number
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountNumber :: Data.Text.Internal.Text,
    -- | country
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postCustomersCustomerCardsRequestBodyBankAccount'OneOf1Country :: Data.Text.Internal.Text,
    -- | currency
    postCustomersCustomerCardsRequestBodyBankAccount'OneOf1Currency :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | routing_number
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postCustomersCustomerCardsRequestBodyBankAccount'OneOf1RoutingNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object ("account_holder_name" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderName obj : "account_holder_type" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderType obj : "account_number" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountNumber obj : "country" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyBankAccount'OneOf1Country obj : "currency" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyBankAccount'OneOf1Currency obj : "routing_number" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyBankAccount'OneOf1RoutingNumber obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "bank_account" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("account_holder_name" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderName obj) GHC.Base.<> (("account_holder_type" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderType obj) GHC.Base.<> (("account_number" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountNumber obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyBankAccount'OneOf1Country obj) GHC.Base.<> (("currency" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyBankAccount'OneOf1Currency obj) GHC.Base.<> (("routing_number" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyBankAccount'OneOf1RoutingNumber obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "bank_account")))))))

instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1" (\obj -> (((((GHC.Base.pure PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number"))

-- | Create a new 'PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1' with all required fields.
mkPostCustomersCustomerCardsRequestBodyBankAccount'OneOf1 ::
  -- | 'postCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountNumber'
  Data.Text.Internal.Text ->
  -- | 'postCustomersCustomerCardsRequestBodyBankAccount'OneOf1Country'
  Data.Text.Internal.Text ->
  PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1
mkPostCustomersCustomerCardsRequestBodyBankAccount'OneOf1 postCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountNumber postCustomersCustomerCardsRequestBodyBankAccount'OneOf1Country =
  PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1
    { postCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderName = GHC.Maybe.Nothing,
      postCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderType = GHC.Maybe.Nothing,
      postCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountNumber = postCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountNumber,
      postCustomersCustomerCardsRequestBodyBankAccount'OneOf1Country = postCustomersCustomerCardsRequestBodyBankAccount'OneOf1Country,
      postCustomersCustomerCardsRequestBodyBankAccount'OneOf1Currency = GHC.Maybe.Nothing,
      postCustomersCustomerCardsRequestBodyBankAccount'OneOf1RoutingNumber = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @paths.\/v1\/customers\/{customer}\/cards.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.bank_account.anyOf.properties.account_holder_type@ in the specification.
data PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"company"@
    PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderType'EnumCompany
  | -- | Represents the JSON value @"individual"@
    PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderType'EnumIndividual
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderType' where
  toJSON (PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderType'Other val) = val
  toJSON (PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderType'EnumCompany) = "company"
  toJSON (PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderType'EnumIndividual) = "individual"

instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "company" -> PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderType'EnumCompany
            | val GHC.Classes.== "individual" -> PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderType'EnumIndividual
            | GHC.Base.otherwise -> PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1AccountHolderType'Other val
      )

-- | Defines the oneOf schema located at @paths.\/v1\/customers\/{customer}\/cards.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.bank_account.anyOf@ in the specification.
--
-- Either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js), or a dictionary containing a user\'s bank account details.
data PostCustomersCustomerCardsRequestBodyBankAccount'Variants
  = PostCustomersCustomerCardsRequestBodyBankAccount'PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1 PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1
  | PostCustomersCustomerCardsRequestBodyBankAccount'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostCustomersCustomerCardsRequestBodyBankAccount'Variants where
  toJSON (PostCustomersCustomerCardsRequestBodyBankAccount'PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostCustomersCustomerCardsRequestBodyBankAccount'Text a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCardsRequestBodyBankAccount'Variants where
  parseJSON val = case (PostCustomersCustomerCardsRequestBodyBankAccount'PostCustomersCustomerCardsRequestBodyBankAccount'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostCustomersCustomerCardsRequestBodyBankAccount'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/cards.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.card.anyOf@ in the specification.
data PostCustomersCustomerCardsRequestBodyCard'OneOf1 = PostCustomersCustomerCardsRequestBodyCard'OneOf1
  { -- | address_city
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postCustomersCustomerCardsRequestBodyCard'OneOf1AddressCity :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_country
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postCustomersCustomerCardsRequestBodyCard'OneOf1AddressCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_line1
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postCustomersCustomerCardsRequestBodyCard'OneOf1AddressLine1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_line2
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postCustomersCustomerCardsRequestBodyCard'OneOf1AddressLine2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_state
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postCustomersCustomerCardsRequestBodyCard'OneOf1AddressState :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_zip
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postCustomersCustomerCardsRequestBodyCard'OneOf1AddressZip :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | cvc
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postCustomersCustomerCardsRequestBodyCard'OneOf1Cvc :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | exp_month
    postCustomersCustomerCardsRequestBodyCard'OneOf1ExpMonth :: GHC.Types.Int,
    -- | exp_year
    postCustomersCustomerCardsRequestBodyCard'OneOf1ExpYear :: GHC.Types.Int,
    -- | metadata
    postCustomersCustomerCardsRequestBodyCard'OneOf1Metadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | name
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postCustomersCustomerCardsRequestBodyCard'OneOf1Name :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | number
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postCustomersCustomerCardsRequestBodyCard'OneOf1Number :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostCustomersCustomerCardsRequestBodyCard'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object ("address_city" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1AddressCity obj : "address_country" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1AddressCountry obj : "address_line1" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1AddressLine1 obj : "address_line2" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1AddressLine2 obj : "address_state" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1AddressState obj : "address_zip" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1AddressZip obj : "cvc" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1Cvc obj : "exp_month" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1ExpMonth obj : "exp_year" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1ExpYear obj : "metadata" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1Metadata obj : "name" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1Name obj : "number" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1Number obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "card" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("address_city" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1AddressCity obj) GHC.Base.<> (("address_country" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1AddressCountry obj) GHC.Base.<> (("address_line1" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1AddressLine1 obj) GHC.Base.<> (("address_line2" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1AddressLine2 obj) GHC.Base.<> (("address_state" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1AddressState obj) GHC.Base.<> (("address_zip" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1AddressZip obj) GHC.Base.<> (("cvc" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1Cvc obj) GHC.Base.<> (("exp_month" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1ExpMonth obj) GHC.Base.<> (("exp_year" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1ExpYear obj) GHC.Base.<> (("metadata" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1Metadata obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1Name obj) GHC.Base.<> (("number" Data.Aeson.Types.ToJSON..= postCustomersCustomerCardsRequestBodyCard'OneOf1Number obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "card")))))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCardsRequestBodyCard'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerCardsRequestBodyCard'OneOf1" (\obj -> (((((((((((GHC.Base.pure PostCustomersCustomerCardsRequestBodyCard'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "number"))

-- | Create a new 'PostCustomersCustomerCardsRequestBodyCard'OneOf1' with all required fields.
mkPostCustomersCustomerCardsRequestBodyCard'OneOf1 ::
  -- | 'postCustomersCustomerCardsRequestBodyCard'OneOf1ExpMonth'
  GHC.Types.Int ->
  -- | 'postCustomersCustomerCardsRequestBodyCard'OneOf1ExpYear'
  GHC.Types.Int ->
  -- | 'postCustomersCustomerCardsRequestBodyCard'OneOf1Number'
  Data.Text.Internal.Text ->
  PostCustomersCustomerCardsRequestBodyCard'OneOf1
mkPostCustomersCustomerCardsRequestBodyCard'OneOf1 postCustomersCustomerCardsRequestBodyCard'OneOf1ExpMonth postCustomersCustomerCardsRequestBodyCard'OneOf1ExpYear postCustomersCustomerCardsRequestBodyCard'OneOf1Number =
  PostCustomersCustomerCardsRequestBodyCard'OneOf1
    { postCustomersCustomerCardsRequestBodyCard'OneOf1AddressCity = GHC.Maybe.Nothing,
      postCustomersCustomerCardsRequestBodyCard'OneOf1AddressCountry = GHC.Maybe.Nothing,
      postCustomersCustomerCardsRequestBodyCard'OneOf1AddressLine1 = GHC.Maybe.Nothing,
      postCustomersCustomerCardsRequestBodyCard'OneOf1AddressLine2 = GHC.Maybe.Nothing,
      postCustomersCustomerCardsRequestBodyCard'OneOf1AddressState = GHC.Maybe.Nothing,
      postCustomersCustomerCardsRequestBodyCard'OneOf1AddressZip = GHC.Maybe.Nothing,
      postCustomersCustomerCardsRequestBodyCard'OneOf1Cvc = GHC.Maybe.Nothing,
      postCustomersCustomerCardsRequestBodyCard'OneOf1ExpMonth = postCustomersCustomerCardsRequestBodyCard'OneOf1ExpMonth,
      postCustomersCustomerCardsRequestBodyCard'OneOf1ExpYear = postCustomersCustomerCardsRequestBodyCard'OneOf1ExpYear,
      postCustomersCustomerCardsRequestBodyCard'OneOf1Metadata = GHC.Maybe.Nothing,
      postCustomersCustomerCardsRequestBodyCard'OneOf1Name = GHC.Maybe.Nothing,
      postCustomersCustomerCardsRequestBodyCard'OneOf1Number = postCustomersCustomerCardsRequestBodyCard'OneOf1Number
    }

-- | Defines the oneOf schema located at @paths.\/v1\/customers\/{customer}\/cards.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.card.anyOf@ in the specification.
--
-- A token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js).
data PostCustomersCustomerCardsRequestBodyCard'Variants
  = PostCustomersCustomerCardsRequestBodyCard'PostCustomersCustomerCardsRequestBodyCard'OneOf1 PostCustomersCustomerCardsRequestBodyCard'OneOf1
  | PostCustomersCustomerCardsRequestBodyCard'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostCustomersCustomerCardsRequestBodyCard'Variants where
  toJSON (PostCustomersCustomerCardsRequestBodyCard'PostCustomersCustomerCardsRequestBodyCard'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostCustomersCustomerCardsRequestBodyCard'Text a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerCardsRequestBodyCard'Variants where
  parseJSON val = case (PostCustomersCustomerCardsRequestBodyCard'PostCustomersCustomerCardsRequestBodyCard'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostCustomersCustomerCardsRequestBodyCard'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Represents a response of the operation 'postCustomersCustomerCards'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCustomersCustomerCardsResponseError' is used.
data PostCustomersCustomerCardsResponse
  = -- | Means either no matching case available or a parse error
    PostCustomersCustomerCardsResponseError GHC.Base.String
  | -- | Successful response.
    PostCustomersCustomerCardsResponse200 PaymentSource
  | -- | Error response.
    PostCustomersCustomerCardsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
