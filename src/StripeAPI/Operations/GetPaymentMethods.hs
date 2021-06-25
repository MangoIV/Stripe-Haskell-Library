{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getPaymentMethods
module StripeAPI.Operations.GetPaymentMethods where

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

-- | > GET /v1/payment_methods
--
-- \<p>Returns a list of PaymentMethods for a given Customer\<\/p>
getPaymentMethods ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetPaymentMethodsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response GetPaymentMethodsResponse)
getPaymentMethods parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetPaymentMethodsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetPaymentMethodsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetPaymentMethodsResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetPaymentMethodsResponseDefault
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
    ( StripeAPI.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/v1/payment_methods")
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "customer") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getPaymentMethodsParametersQueryCustomer parameters)) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPaymentMethodsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPaymentMethodsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPaymentMethodsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPaymentMethodsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "type") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getPaymentMethodsParametersQueryType parameters)) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/payment_methods.GET.parameters@ in the specification.
data GetPaymentMethodsParameters = GetPaymentMethodsParameters
  { -- | queryCustomer: Represents the parameter named \'customer\'
    --
    -- The ID of the customer whose PaymentMethods will be retrieved.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getPaymentMethodsParametersQueryCustomer :: Data.Text.Internal.Text,
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    getPaymentMethodsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getPaymentMethodsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getPaymentMethodsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    getPaymentMethodsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryType: Represents the parameter named \'type\'
    --
    -- A required filter on the list, based on the object \`type\` field.
    getPaymentMethodsParametersQueryType :: GetPaymentMethodsParametersQueryType'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetPaymentMethodsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("queryCustomer" Data.Aeson.Types.ToJSON..= getPaymentMethodsParametersQueryCustomer obj : "queryEnding_before" Data.Aeson.Types.ToJSON..= getPaymentMethodsParametersQueryEndingBefore obj : "queryExpand" Data.Aeson.Types.ToJSON..= getPaymentMethodsParametersQueryExpand obj : "queryLimit" Data.Aeson.Types.ToJSON..= getPaymentMethodsParametersQueryLimit obj : "queryStarting_after" Data.Aeson.Types.ToJSON..= getPaymentMethodsParametersQueryStartingAfter obj : "queryType" Data.Aeson.Types.ToJSON..= getPaymentMethodsParametersQueryType obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryCustomer" Data.Aeson.Types.ToJSON..= getPaymentMethodsParametersQueryCustomer obj) GHC.Base.<> (("queryEnding_before" Data.Aeson.Types.ToJSON..= getPaymentMethodsParametersQueryEndingBefore obj) GHC.Base.<> (("queryExpand" Data.Aeson.Types.ToJSON..= getPaymentMethodsParametersQueryExpand obj) GHC.Base.<> (("queryLimit" Data.Aeson.Types.ToJSON..= getPaymentMethodsParametersQueryLimit obj) GHC.Base.<> (("queryStarting_after" Data.Aeson.Types.ToJSON..= getPaymentMethodsParametersQueryStartingAfter obj) GHC.Base.<> ("queryType" Data.Aeson.Types.ToJSON..= getPaymentMethodsParametersQueryType obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON GetPaymentMethodsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPaymentMethodsParameters" (\obj -> (((((GHC.Base.pure GetPaymentMethodsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryCustomer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryStarting_after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryType"))

-- | Create a new 'GetPaymentMethodsParameters' with all required fields.
mkGetPaymentMethodsParameters ::
  -- | 'getPaymentMethodsParametersQueryCustomer'
  Data.Text.Internal.Text ->
  -- | 'getPaymentMethodsParametersQueryType'
  GetPaymentMethodsParametersQueryType' ->
  GetPaymentMethodsParameters
mkGetPaymentMethodsParameters getPaymentMethodsParametersQueryCustomer getPaymentMethodsParametersQueryType =
  GetPaymentMethodsParameters
    { getPaymentMethodsParametersQueryCustomer = getPaymentMethodsParametersQueryCustomer,
      getPaymentMethodsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getPaymentMethodsParametersQueryExpand = GHC.Maybe.Nothing,
      getPaymentMethodsParametersQueryLimit = GHC.Maybe.Nothing,
      getPaymentMethodsParametersQueryStartingAfter = GHC.Maybe.Nothing,
      getPaymentMethodsParametersQueryType = getPaymentMethodsParametersQueryType
    }

-- | Defines the enum schema located at @paths.\/v1\/payment_methods.GET.parameters.properties.queryType@ in the specification.
--
-- Represents the parameter named \'type\'
--
-- A required filter on the list, based on the object \`type\` field.
data GetPaymentMethodsParametersQueryType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetPaymentMethodsParametersQueryType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetPaymentMethodsParametersQueryType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"acss_debit"@
    GetPaymentMethodsParametersQueryType'EnumAcssDebit
  | -- | Represents the JSON value @"afterpay_clearpay"@
    GetPaymentMethodsParametersQueryType'EnumAfterpayClearpay
  | -- | Represents the JSON value @"alipay"@
    GetPaymentMethodsParametersQueryType'EnumAlipay
  | -- | Represents the JSON value @"au_becs_debit"@
    GetPaymentMethodsParametersQueryType'EnumAuBecsDebit
  | -- | Represents the JSON value @"bacs_debit"@
    GetPaymentMethodsParametersQueryType'EnumBacsDebit
  | -- | Represents the JSON value @"bancontact"@
    GetPaymentMethodsParametersQueryType'EnumBancontact
  | -- | Represents the JSON value @"boleto"@
    GetPaymentMethodsParametersQueryType'EnumBoleto
  | -- | Represents the JSON value @"card"@
    GetPaymentMethodsParametersQueryType'EnumCard
  | -- | Represents the JSON value @"eps"@
    GetPaymentMethodsParametersQueryType'EnumEps
  | -- | Represents the JSON value @"fpx"@
    GetPaymentMethodsParametersQueryType'EnumFpx
  | -- | Represents the JSON value @"giropay"@
    GetPaymentMethodsParametersQueryType'EnumGiropay
  | -- | Represents the JSON value @"grabpay"@
    GetPaymentMethodsParametersQueryType'EnumGrabpay
  | -- | Represents the JSON value @"ideal"@
    GetPaymentMethodsParametersQueryType'EnumIdeal
  | -- | Represents the JSON value @"oxxo"@
    GetPaymentMethodsParametersQueryType'EnumOxxo
  | -- | Represents the JSON value @"p24"@
    GetPaymentMethodsParametersQueryType'EnumP24
  | -- | Represents the JSON value @"sepa_debit"@
    GetPaymentMethodsParametersQueryType'EnumSepaDebit
  | -- | Represents the JSON value @"sofort"@
    GetPaymentMethodsParametersQueryType'EnumSofort
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetPaymentMethodsParametersQueryType' where
  toJSON (GetPaymentMethodsParametersQueryType'Other val) = val
  toJSON (GetPaymentMethodsParametersQueryType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetPaymentMethodsParametersQueryType'EnumAcssDebit) = "acss_debit"
  toJSON (GetPaymentMethodsParametersQueryType'EnumAfterpayClearpay) = "afterpay_clearpay"
  toJSON (GetPaymentMethodsParametersQueryType'EnumAlipay) = "alipay"
  toJSON (GetPaymentMethodsParametersQueryType'EnumAuBecsDebit) = "au_becs_debit"
  toJSON (GetPaymentMethodsParametersQueryType'EnumBacsDebit) = "bacs_debit"
  toJSON (GetPaymentMethodsParametersQueryType'EnumBancontact) = "bancontact"
  toJSON (GetPaymentMethodsParametersQueryType'EnumBoleto) = "boleto"
  toJSON (GetPaymentMethodsParametersQueryType'EnumCard) = "card"
  toJSON (GetPaymentMethodsParametersQueryType'EnumEps) = "eps"
  toJSON (GetPaymentMethodsParametersQueryType'EnumFpx) = "fpx"
  toJSON (GetPaymentMethodsParametersQueryType'EnumGiropay) = "giropay"
  toJSON (GetPaymentMethodsParametersQueryType'EnumGrabpay) = "grabpay"
  toJSON (GetPaymentMethodsParametersQueryType'EnumIdeal) = "ideal"
  toJSON (GetPaymentMethodsParametersQueryType'EnumOxxo) = "oxxo"
  toJSON (GetPaymentMethodsParametersQueryType'EnumP24) = "p24"
  toJSON (GetPaymentMethodsParametersQueryType'EnumSepaDebit) = "sepa_debit"
  toJSON (GetPaymentMethodsParametersQueryType'EnumSofort) = "sofort"

instance Data.Aeson.Types.FromJSON.FromJSON GetPaymentMethodsParametersQueryType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "acss_debit" -> GetPaymentMethodsParametersQueryType'EnumAcssDebit
            | val GHC.Classes.== "afterpay_clearpay" -> GetPaymentMethodsParametersQueryType'EnumAfterpayClearpay
            | val GHC.Classes.== "alipay" -> GetPaymentMethodsParametersQueryType'EnumAlipay
            | val GHC.Classes.== "au_becs_debit" -> GetPaymentMethodsParametersQueryType'EnumAuBecsDebit
            | val GHC.Classes.== "bacs_debit" -> GetPaymentMethodsParametersQueryType'EnumBacsDebit
            | val GHC.Classes.== "bancontact" -> GetPaymentMethodsParametersQueryType'EnumBancontact
            | val GHC.Classes.== "boleto" -> GetPaymentMethodsParametersQueryType'EnumBoleto
            | val GHC.Classes.== "card" -> GetPaymentMethodsParametersQueryType'EnumCard
            | val GHC.Classes.== "eps" -> GetPaymentMethodsParametersQueryType'EnumEps
            | val GHC.Classes.== "fpx" -> GetPaymentMethodsParametersQueryType'EnumFpx
            | val GHC.Classes.== "giropay" -> GetPaymentMethodsParametersQueryType'EnumGiropay
            | val GHC.Classes.== "grabpay" -> GetPaymentMethodsParametersQueryType'EnumGrabpay
            | val GHC.Classes.== "ideal" -> GetPaymentMethodsParametersQueryType'EnumIdeal
            | val GHC.Classes.== "oxxo" -> GetPaymentMethodsParametersQueryType'EnumOxxo
            | val GHC.Classes.== "p24" -> GetPaymentMethodsParametersQueryType'EnumP24
            | val GHC.Classes.== "sepa_debit" -> GetPaymentMethodsParametersQueryType'EnumSepaDebit
            | val GHC.Classes.== "sofort" -> GetPaymentMethodsParametersQueryType'EnumSofort
            | GHC.Base.otherwise -> GetPaymentMethodsParametersQueryType'Other val
      )

-- | Represents a response of the operation 'getPaymentMethods'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetPaymentMethodsResponseError' is used.
data GetPaymentMethodsResponse
  = -- | Means either no matching case available or a parse error
    GetPaymentMethodsResponseError GHC.Base.String
  | -- | Successful response.
    GetPaymentMethodsResponse200 GetPaymentMethodsResponseBody200
  | -- | Error response.
    GetPaymentMethodsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/payment_methods.GET.responses.200.content.application\/json.schema@ in the specification.
data GetPaymentMethodsResponseBody200 = GetPaymentMethodsResponseBody200
  { -- | data
    getPaymentMethodsResponseBody200Data :: ([PaymentMethod]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getPaymentMethodsResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    -- * Must match pattern \'^\/v1\/payment_methods\'
    getPaymentMethodsResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetPaymentMethodsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getPaymentMethodsResponseBody200Data obj : "has_more" Data.Aeson.Types.ToJSON..= getPaymentMethodsResponseBody200HasMore obj : "url" Data.Aeson.Types.ToJSON..= getPaymentMethodsResponseBody200Url obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getPaymentMethodsResponseBody200Data obj) GHC.Base.<> (("has_more" Data.Aeson.Types.ToJSON..= getPaymentMethodsResponseBody200HasMore obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= getPaymentMethodsResponseBody200Url obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"))))

instance Data.Aeson.Types.FromJSON.FromJSON GetPaymentMethodsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPaymentMethodsResponseBody200" (\obj -> ((GHC.Base.pure GetPaymentMethodsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetPaymentMethodsResponseBody200' with all required fields.
mkGetPaymentMethodsResponseBody200 ::
  -- | 'getPaymentMethodsResponseBody200Data'
  [PaymentMethod] ->
  -- | 'getPaymentMethodsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getPaymentMethodsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetPaymentMethodsResponseBody200
mkGetPaymentMethodsResponseBody200 getPaymentMethodsResponseBody200Data getPaymentMethodsResponseBody200HasMore getPaymentMethodsResponseBody200Url =
  GetPaymentMethodsResponseBody200
    { getPaymentMethodsResponseBody200Data = getPaymentMethodsResponseBody200Data,
      getPaymentMethodsResponseBody200HasMore = getPaymentMethodsResponseBody200HasMore,
      getPaymentMethodsResponseBody200Url = getPaymentMethodsResponseBody200Url
    }
