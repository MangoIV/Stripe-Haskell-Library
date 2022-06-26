{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getCustomersCustomerSubscriptions
module StripeAPI.Operations.GetCustomersCustomerSubscriptions where

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

-- | > GET /v1/customers/{customer}/subscriptions
--
-- \<p>You can see a list of the customer’s active subscriptions. Note that the 10 most recent active subscriptions are always available by default on the customer object. If you need more than those 10, you can use the limit and starting_after parameters to page through additional subscriptions.\<\/p>
getCustomersCustomerSubscriptions ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetCustomersCustomerSubscriptionsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetCustomersCustomerSubscriptionsResponse)
getCustomersCustomerSubscriptions parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetCustomersCustomerSubscriptionsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetCustomersCustomerSubscriptionsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetCustomersCustomerSubscriptionsResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetCustomersCustomerSubscriptionsResponseDefault
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
        (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getCustomersCustomerSubscriptionsParametersPathCustomer parameters))) GHC.Base.++ "/subscriptions")))
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerSubscriptionsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerSubscriptionsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerSubscriptionsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerSubscriptionsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/subscriptions.GET.parameters@ in the specification.
data GetCustomersCustomerSubscriptionsParameters = GetCustomersCustomerSubscriptionsParameters
  { -- | pathCustomer: Represents the parameter named \'customer\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCustomersCustomerSubscriptionsParametersPathCustomer :: Data.Text.Internal.Text,
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCustomersCustomerSubscriptionsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getCustomersCustomerSubscriptionsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getCustomersCustomerSubscriptionsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCustomersCustomerSubscriptionsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetCustomersCustomerSubscriptionsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathCustomer" Data.Aeson.Types.ToJSON..= getCustomersCustomerSubscriptionsParametersPathCustomer obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerSubscriptionsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerSubscriptionsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerSubscriptionsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerSubscriptionsParametersQueryStartingAfter obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathCustomer" Data.Aeson.Types.ToJSON..= getCustomersCustomerSubscriptionsParametersPathCustomer obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerSubscriptionsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerSubscriptionsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerSubscriptionsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerSubscriptionsParametersQueryStartingAfter obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerSubscriptionsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerSubscriptionsParameters" (\obj -> ((((GHC.Base.pure GetCustomersCustomerSubscriptionsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathCustomer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after"))

-- | Create a new 'GetCustomersCustomerSubscriptionsParameters' with all required fields.
mkGetCustomersCustomerSubscriptionsParameters ::
  -- | 'getCustomersCustomerSubscriptionsParametersPathCustomer'
  Data.Text.Internal.Text ->
  GetCustomersCustomerSubscriptionsParameters
mkGetCustomersCustomerSubscriptionsParameters getCustomersCustomerSubscriptionsParametersPathCustomer =
  GetCustomersCustomerSubscriptionsParameters
    { getCustomersCustomerSubscriptionsParametersPathCustomer = getCustomersCustomerSubscriptionsParametersPathCustomer,
      getCustomersCustomerSubscriptionsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getCustomersCustomerSubscriptionsParametersQueryExpand = GHC.Maybe.Nothing,
      getCustomersCustomerSubscriptionsParametersQueryLimit = GHC.Maybe.Nothing,
      getCustomersCustomerSubscriptionsParametersQueryStartingAfter = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getCustomersCustomerSubscriptions'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetCustomersCustomerSubscriptionsResponseError' is used.
data GetCustomersCustomerSubscriptionsResponse
  = -- | Means either no matching case available or a parse error
    GetCustomersCustomerSubscriptionsResponseError GHC.Base.String
  | -- | Successful response.
    GetCustomersCustomerSubscriptionsResponse200 GetCustomersCustomerSubscriptionsResponseBody200
  | -- | Error response.
    GetCustomersCustomerSubscriptionsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/subscriptions.GET.responses.200.content.application\/json.schema@ in the specification.
data GetCustomersCustomerSubscriptionsResponseBody200 = GetCustomersCustomerSubscriptionsResponseBody200
  { -- | data: Details about each object.
    getCustomersCustomerSubscriptionsResponseBody200Data :: ([Subscription]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getCustomersCustomerSubscriptionsResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCustomersCustomerSubscriptionsResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetCustomersCustomerSubscriptionsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getCustomersCustomerSubscriptionsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getCustomersCustomerSubscriptionsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getCustomersCustomerSubscriptionsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getCustomersCustomerSubscriptionsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getCustomersCustomerSubscriptionsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getCustomersCustomerSubscriptionsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerSubscriptionsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerSubscriptionsResponseBody200" (\obj -> ((GHC.Base.pure GetCustomersCustomerSubscriptionsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetCustomersCustomerSubscriptionsResponseBody200' with all required fields.
mkGetCustomersCustomerSubscriptionsResponseBody200 ::
  -- | 'getCustomersCustomerSubscriptionsResponseBody200Data'
  [Subscription] ->
  -- | 'getCustomersCustomerSubscriptionsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getCustomersCustomerSubscriptionsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetCustomersCustomerSubscriptionsResponseBody200
mkGetCustomersCustomerSubscriptionsResponseBody200 getCustomersCustomerSubscriptionsResponseBody200Data getCustomersCustomerSubscriptionsResponseBody200HasMore getCustomersCustomerSubscriptionsResponseBody200Url =
  GetCustomersCustomerSubscriptionsResponseBody200
    { getCustomersCustomerSubscriptionsResponseBody200Data = getCustomersCustomerSubscriptionsResponseBody200Data,
      getCustomersCustomerSubscriptionsResponseBody200HasMore = getCustomersCustomerSubscriptionsResponseBody200HasMore,
      getCustomersCustomerSubscriptionsResponseBody200Url = getCustomersCustomerSubscriptionsResponseBody200Url
    }
