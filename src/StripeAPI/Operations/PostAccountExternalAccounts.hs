{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postAccountExternalAccounts
module StripeAPI.Operations.PostAccountExternalAccounts where

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

-- | > POST /v1/account/external_accounts
--
-- \<p>Create an external account for a given account.\<\/p>
postAccountExternalAccounts ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | The request body to send
  GHC.Maybe.Maybe PostAccountExternalAccountsRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostAccountExternalAccountsResponse)
postAccountExternalAccounts body =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostAccountExternalAccountsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostAccountExternalAccountsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ExternalAccount
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostAccountExternalAccountsResponseDefault
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
    (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/account/external_accounts") GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/account\/external_accounts.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostAccountExternalAccountsRequestBody = PostAccountExternalAccountsRequestBody
  { -- | bank_account: Either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js), or a dictionary containing a user\'s bank account details.
    postAccountExternalAccountsRequestBodyBankAccount :: (GHC.Maybe.Maybe PostAccountExternalAccountsRequestBodyBankAccount'Variants),
    -- | default_for_currency: When set to true, or if this is the first external account added in this currency, this account becomes the default external account for its currency.
    postAccountExternalAccountsRequestBodyDefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | expand: Specifies which fields in the response should be expanded.
    postAccountExternalAccountsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | external_account: Please refer to full [documentation](https:\/\/stripe.com\/docs\/api) instead.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountExternalAccountsRequestBodyExternalAccount :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postAccountExternalAccountsRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountExternalAccountsRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object ("bank_account" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyBankAccount obj : "default_for_currency" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyDefaultForCurrency obj : "expand" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyExpand obj : "external_account" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyExternalAccount obj : "metadata" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyMetadata obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("bank_account" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyBankAccount obj) GHC.Base.<> (("default_for_currency" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyDefaultForCurrency obj) GHC.Base.<> (("expand" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyExpand obj) GHC.Base.<> (("external_account" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyExternalAccount obj) GHC.Base.<> ("metadata" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyMetadata obj)))))

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountExternalAccountsRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountExternalAccountsRequestBody" (\obj -> ((((GHC.Base.pure PostAccountExternalAccountsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "external_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))

-- | Create a new 'PostAccountExternalAccountsRequestBody' with all required fields.
mkPostAccountExternalAccountsRequestBody :: PostAccountExternalAccountsRequestBody
mkPostAccountExternalAccountsRequestBody =
  PostAccountExternalAccountsRequestBody
    { postAccountExternalAccountsRequestBodyBankAccount = GHC.Maybe.Nothing,
      postAccountExternalAccountsRequestBodyDefaultForCurrency = GHC.Maybe.Nothing,
      postAccountExternalAccountsRequestBodyExpand = GHC.Maybe.Nothing,
      postAccountExternalAccountsRequestBodyExternalAccount = GHC.Maybe.Nothing,
      postAccountExternalAccountsRequestBodyMetadata = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/account\/external_accounts.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.bank_account.anyOf@ in the specification.
data PostAccountExternalAccountsRequestBodyBankAccount'OneOf1 = PostAccountExternalAccountsRequestBodyBankAccount'OneOf1
  { -- | account_holder_name
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | account_holder_type
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType :: (GHC.Maybe.Maybe PostAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'),
    -- | account_number
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountNumber :: Data.Text.Internal.Text,
    -- | country
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountExternalAccountsRequestBodyBankAccount'OneOf1Country :: Data.Text.Internal.Text,
    -- | currency
    postAccountExternalAccountsRequestBodyBankAccount'OneOf1Currency :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | routing_number
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountExternalAccountsRequestBodyBankAccount'OneOf1RoutingNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountExternalAccountsRequestBodyBankAccount'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object ("account_holder_name" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderName obj : "account_holder_type" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType obj : "account_number" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountNumber obj : "country" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyBankAccount'OneOf1Country obj : "currency" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyBankAccount'OneOf1Currency obj : "routing_number" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyBankAccount'OneOf1RoutingNumber obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "bank_account" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("account_holder_name" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderName obj) GHC.Base.<> (("account_holder_type" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType obj) GHC.Base.<> (("account_number" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountNumber obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyBankAccount'OneOf1Country obj) GHC.Base.<> (("currency" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyBankAccount'OneOf1Currency obj) GHC.Base.<> (("routing_number" Data.Aeson.Types.ToJSON..= postAccountExternalAccountsRequestBodyBankAccount'OneOf1RoutingNumber obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "bank_account")))))))

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountExternalAccountsRequestBodyBankAccount'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountExternalAccountsRequestBodyBankAccount'OneOf1" (\obj -> (((((GHC.Base.pure PostAccountExternalAccountsRequestBodyBankAccount'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number"))

-- | Create a new 'PostAccountExternalAccountsRequestBodyBankAccount'OneOf1' with all required fields.
mkPostAccountExternalAccountsRequestBodyBankAccount'OneOf1 ::
  -- | 'postAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountNumber'
  Data.Text.Internal.Text ->
  -- | 'postAccountExternalAccountsRequestBodyBankAccount'OneOf1Country'
  Data.Text.Internal.Text ->
  PostAccountExternalAccountsRequestBodyBankAccount'OneOf1
mkPostAccountExternalAccountsRequestBodyBankAccount'OneOf1 postAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountNumber postAccountExternalAccountsRequestBodyBankAccount'OneOf1Country =
  PostAccountExternalAccountsRequestBodyBankAccount'OneOf1
    { postAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderName = GHC.Maybe.Nothing,
      postAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType = GHC.Maybe.Nothing,
      postAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountNumber = postAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountNumber,
      postAccountExternalAccountsRequestBodyBankAccount'OneOf1Country = postAccountExternalAccountsRequestBodyBankAccount'OneOf1Country,
      postAccountExternalAccountsRequestBodyBankAccount'OneOf1Currency = GHC.Maybe.Nothing,
      postAccountExternalAccountsRequestBodyBankAccount'OneOf1RoutingNumber = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @paths.\/v1\/account\/external_accounts.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.bank_account.anyOf.properties.account_holder_type@ in the specification.
data PostAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"company"@
    PostAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'EnumCompany
  | -- | Represents the JSON value @"individual"@
    PostAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'EnumIndividual
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType' where
  toJSON (PostAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'Other val) = val
  toJSON (PostAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'EnumCompany) = "company"
  toJSON (PostAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'EnumIndividual) = "individual"

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "company" -> PostAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'EnumCompany
            | val GHC.Classes.== "individual" -> PostAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'EnumIndividual
            | GHC.Base.otherwise -> PostAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'Other val
      )

-- | Defines the oneOf schema located at @paths.\/v1\/account\/external_accounts.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.bank_account.anyOf@ in the specification.
--
-- Either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js), or a dictionary containing a user\'s bank account details.
data PostAccountExternalAccountsRequestBodyBankAccount'Variants
  = PostAccountExternalAccountsRequestBodyBankAccount'PostAccountExternalAccountsRequestBodyBankAccount'OneOf1 PostAccountExternalAccountsRequestBodyBankAccount'OneOf1
  | PostAccountExternalAccountsRequestBodyBankAccount'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountExternalAccountsRequestBodyBankAccount'Variants where
  toJSON (PostAccountExternalAccountsRequestBodyBankAccount'PostAccountExternalAccountsRequestBodyBankAccount'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostAccountExternalAccountsRequestBodyBankAccount'Text a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountExternalAccountsRequestBodyBankAccount'Variants where
  parseJSON val = case (PostAccountExternalAccountsRequestBodyBankAccount'PostAccountExternalAccountsRequestBodyBankAccount'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostAccountExternalAccountsRequestBodyBankAccount'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Represents a response of the operation 'postAccountExternalAccounts'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAccountExternalAccountsResponseError' is used.
data PostAccountExternalAccountsResponse
  = -- | Means either no matching case available or a parse error
    PostAccountExternalAccountsResponseError GHC.Base.String
  | -- | Successful response.
    PostAccountExternalAccountsResponse200 ExternalAccount
  | -- | Error response.
    PostAccountExternalAccountsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
