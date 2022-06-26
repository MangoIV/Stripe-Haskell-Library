{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getCustomersCustomerBalanceTransactions
module StripeAPI.Operations.GetCustomersCustomerBalanceTransactions where

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

-- | > GET /v1/customers/{customer}/balance_transactions
--
-- \<p>Returns a list of transactions that updated the customer’s \<a href=\"\/docs\/billing\/customer\/balance\">balances\<\/a>.\<\/p>
getCustomersCustomerBalanceTransactions ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetCustomersCustomerBalanceTransactionsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetCustomersCustomerBalanceTransactionsResponse)
getCustomersCustomerBalanceTransactions parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetCustomersCustomerBalanceTransactionsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetCustomersCustomerBalanceTransactionsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetCustomersCustomerBalanceTransactionsResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetCustomersCustomerBalanceTransactionsResponseDefault
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
        (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getCustomersCustomerBalanceTransactionsParametersPathCustomer parameters))) GHC.Base.++ "/balance_transactions")))
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerBalanceTransactionsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerBalanceTransactionsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerBalanceTransactionsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerBalanceTransactionsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/balance_transactions.GET.parameters@ in the specification.
data GetCustomersCustomerBalanceTransactionsParameters = GetCustomersCustomerBalanceTransactionsParameters
  { -- | pathCustomer: Represents the parameter named \'customer\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCustomersCustomerBalanceTransactionsParametersPathCustomer :: Data.Text.Internal.Text,
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCustomersCustomerBalanceTransactionsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getCustomersCustomerBalanceTransactionsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getCustomersCustomerBalanceTransactionsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCustomersCustomerBalanceTransactionsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetCustomersCustomerBalanceTransactionsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathCustomer" Data.Aeson.Types.ToJSON..= getCustomersCustomerBalanceTransactionsParametersPathCustomer obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerBalanceTransactionsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerBalanceTransactionsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerBalanceTransactionsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerBalanceTransactionsParametersQueryStartingAfter obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathCustomer" Data.Aeson.Types.ToJSON..= getCustomersCustomerBalanceTransactionsParametersPathCustomer obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerBalanceTransactionsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerBalanceTransactionsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerBalanceTransactionsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerBalanceTransactionsParametersQueryStartingAfter obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerBalanceTransactionsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerBalanceTransactionsParameters" (\obj -> ((((GHC.Base.pure GetCustomersCustomerBalanceTransactionsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathCustomer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after"))

-- | Create a new 'GetCustomersCustomerBalanceTransactionsParameters' with all required fields.
mkGetCustomersCustomerBalanceTransactionsParameters ::
  -- | 'getCustomersCustomerBalanceTransactionsParametersPathCustomer'
  Data.Text.Internal.Text ->
  GetCustomersCustomerBalanceTransactionsParameters
mkGetCustomersCustomerBalanceTransactionsParameters getCustomersCustomerBalanceTransactionsParametersPathCustomer =
  GetCustomersCustomerBalanceTransactionsParameters
    { getCustomersCustomerBalanceTransactionsParametersPathCustomer = getCustomersCustomerBalanceTransactionsParametersPathCustomer,
      getCustomersCustomerBalanceTransactionsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getCustomersCustomerBalanceTransactionsParametersQueryExpand = GHC.Maybe.Nothing,
      getCustomersCustomerBalanceTransactionsParametersQueryLimit = GHC.Maybe.Nothing,
      getCustomersCustomerBalanceTransactionsParametersQueryStartingAfter = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getCustomersCustomerBalanceTransactions'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetCustomersCustomerBalanceTransactionsResponseError' is used.
data GetCustomersCustomerBalanceTransactionsResponse
  = -- | Means either no matching case available or a parse error
    GetCustomersCustomerBalanceTransactionsResponseError GHC.Base.String
  | -- | Successful response.
    GetCustomersCustomerBalanceTransactionsResponse200 GetCustomersCustomerBalanceTransactionsResponseBody200
  | -- | Error response.
    GetCustomersCustomerBalanceTransactionsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/balance_transactions.GET.responses.200.content.application\/json.schema@ in the specification.
data GetCustomersCustomerBalanceTransactionsResponseBody200 = GetCustomersCustomerBalanceTransactionsResponseBody200
  { -- | data: Details about each object.
    getCustomersCustomerBalanceTransactionsResponseBody200Data :: ([CustomerBalanceTransaction]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getCustomersCustomerBalanceTransactionsResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCustomersCustomerBalanceTransactionsResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetCustomersCustomerBalanceTransactionsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getCustomersCustomerBalanceTransactionsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getCustomersCustomerBalanceTransactionsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getCustomersCustomerBalanceTransactionsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getCustomersCustomerBalanceTransactionsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getCustomersCustomerBalanceTransactionsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getCustomersCustomerBalanceTransactionsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerBalanceTransactionsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerBalanceTransactionsResponseBody200" (\obj -> ((GHC.Base.pure GetCustomersCustomerBalanceTransactionsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetCustomersCustomerBalanceTransactionsResponseBody200' with all required fields.
mkGetCustomersCustomerBalanceTransactionsResponseBody200 ::
  -- | 'getCustomersCustomerBalanceTransactionsResponseBody200Data'
  [CustomerBalanceTransaction] ->
  -- | 'getCustomersCustomerBalanceTransactionsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getCustomersCustomerBalanceTransactionsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetCustomersCustomerBalanceTransactionsResponseBody200
mkGetCustomersCustomerBalanceTransactionsResponseBody200 getCustomersCustomerBalanceTransactionsResponseBody200Data getCustomersCustomerBalanceTransactionsResponseBody200HasMore getCustomersCustomerBalanceTransactionsResponseBody200Url =
  GetCustomersCustomerBalanceTransactionsResponseBody200
    { getCustomersCustomerBalanceTransactionsResponseBody200Data = getCustomersCustomerBalanceTransactionsResponseBody200Data,
      getCustomersCustomerBalanceTransactionsResponseBody200HasMore = getCustomersCustomerBalanceTransactionsResponseBody200HasMore,
      getCustomersCustomerBalanceTransactionsResponseBody200Url = getCustomersCustomerBalanceTransactionsResponseBody200Url
    }
