{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSubscriptions
module StripeAPI.Operations.GetSubscriptions where

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

-- | > GET /v1/subscriptions
--
-- \<p>By default, returns a list of subscriptions that have not been canceled. In order to list canceled subscriptions, specify \<code>status=canceled\<\/code>.\<\/p>
getSubscriptions ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSubscriptionsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response GetSubscriptionsResponse)
getSubscriptions parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSubscriptionsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSubscriptionsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSubscriptionsResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSubscriptionsResponseDefault
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
        (Data.Text.pack "/v1/subscriptions")
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "collection_method") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSubscriptionsParametersQueryCollectionMethod parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "created") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSubscriptionsParametersQueryCreated parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "current_period_end") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSubscriptionsParametersQueryCurrentPeriodEnd parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "current_period_start") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSubscriptionsParametersQueryCurrentPeriodStart parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "customer") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSubscriptionsParametersQueryCustomer parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSubscriptionsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSubscriptionsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSubscriptionsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "price") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSubscriptionsParametersQueryPrice parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSubscriptionsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSubscriptionsParametersQueryStatus parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/subscriptions.GET.parameters@ in the specification.
data GetSubscriptionsParameters = GetSubscriptionsParameters
  { -- | queryCollection_method: Represents the parameter named \'collection_method\'
    --
    -- The collection method of the subscriptions to retrieve. Either \`charge_automatically\` or \`send_invoice\`.
    getSubscriptionsParametersQueryCollectionMethod :: (GHC.Maybe.Maybe GetSubscriptionsParametersQueryCollectionMethod'),
    -- | queryCreated: Represents the parameter named \'created\'
    getSubscriptionsParametersQueryCreated :: (GHC.Maybe.Maybe GetSubscriptionsParametersQueryCreated'Variants),
    -- | queryCurrent_period_end: Represents the parameter named \'current_period_end\'
    getSubscriptionsParametersQueryCurrentPeriodEnd :: (GHC.Maybe.Maybe GetSubscriptionsParametersQueryCurrentPeriodEnd'Variants),
    -- | queryCurrent_period_start: Represents the parameter named \'current_period_start\'
    getSubscriptionsParametersQueryCurrentPeriodStart :: (GHC.Maybe.Maybe GetSubscriptionsParametersQueryCurrentPeriodStart'Variants),
    -- | queryCustomer: Represents the parameter named \'customer\'
    --
    -- The ID of the customer whose subscriptions will be retrieved.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getSubscriptionsParametersQueryCustomer :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getSubscriptionsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getSubscriptionsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getSubscriptionsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryPrice: Represents the parameter named \'price\'
    --
    -- Filter for subscriptions that contain this recurring price ID.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getSubscriptionsParametersQueryPrice :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getSubscriptionsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryStatus: Represents the parameter named \'status\'
    --
    -- The status of the subscriptions to retrieve. Passing in a value of \`canceled\` will return all canceled subscriptions, including those belonging to deleted customers. Pass \`ended\` to find subscriptions that are canceled and subscriptions that are expired due to [incomplete payment](https:\/\/stripe.com\/docs\/billing\/subscriptions\/overview\#subscription-statuses). Passing in a value of \`all\` will return subscriptions of all statuses. If no value is supplied, all subscriptions that have not been canceled are returned.
    getSubscriptionsParametersQueryStatus :: (GHC.Maybe.Maybe GetSubscriptionsParametersQueryStatus')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSubscriptionsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("queryCollection_method" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCollectionMethod obj : "queryCreated" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCreated obj : "queryCurrent_period_end" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCurrentPeriodEnd obj : "queryCurrent_period_start" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCurrentPeriodStart obj : "queryCustomer" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCustomer obj : "queryEnding_before" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryEndingBefore obj : "queryExpand" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryExpand obj : "queryLimit" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryLimit obj : "queryPrice" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryPrice obj : "queryStarting_after" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryStartingAfter obj : "queryStatus" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryStatus obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryCollection_method" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCollectionMethod obj) GHC.Base.<> (("queryCreated" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCreated obj) GHC.Base.<> (("queryCurrent_period_end" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCurrentPeriodEnd obj) GHC.Base.<> (("queryCurrent_period_start" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCurrentPeriodStart obj) GHC.Base.<> (("queryCustomer" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCustomer obj) GHC.Base.<> (("queryEnding_before" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryEndingBefore obj) GHC.Base.<> (("queryExpand" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryExpand obj) GHC.Base.<> (("queryLimit" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryLimit obj) GHC.Base.<> (("queryPrice" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryPrice obj) GHC.Base.<> (("queryStarting_after" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryStartingAfter obj) GHC.Base.<> ("queryStatus" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryStatus obj)))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON GetSubscriptionsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSubscriptionsParameters" (\obj -> ((((((((((GHC.Base.pure GetSubscriptionsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryCollection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryCreated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryCurrent_period_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryCurrent_period_start")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryCustomer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPrice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryStarting_after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryStatus"))

-- | Create a new 'GetSubscriptionsParameters' with all required fields.
mkGetSubscriptionsParameters :: GetSubscriptionsParameters
mkGetSubscriptionsParameters =
  GetSubscriptionsParameters
    { getSubscriptionsParametersQueryCollectionMethod = GHC.Maybe.Nothing,
      getSubscriptionsParametersQueryCreated = GHC.Maybe.Nothing,
      getSubscriptionsParametersQueryCurrentPeriodEnd = GHC.Maybe.Nothing,
      getSubscriptionsParametersQueryCurrentPeriodStart = GHC.Maybe.Nothing,
      getSubscriptionsParametersQueryCustomer = GHC.Maybe.Nothing,
      getSubscriptionsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getSubscriptionsParametersQueryExpand = GHC.Maybe.Nothing,
      getSubscriptionsParametersQueryLimit = GHC.Maybe.Nothing,
      getSubscriptionsParametersQueryPrice = GHC.Maybe.Nothing,
      getSubscriptionsParametersQueryStartingAfter = GHC.Maybe.Nothing,
      getSubscriptionsParametersQueryStatus = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @paths.\/v1\/subscriptions.GET.parameters.properties.queryCollection_method@ in the specification.
--
-- Represents the parameter named \'collection_method\'
--
-- The collection method of the subscriptions to retrieve. Either \`charge_automatically\` or \`send_invoice\`.
data GetSubscriptionsParametersQueryCollectionMethod'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetSubscriptionsParametersQueryCollectionMethod'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetSubscriptionsParametersQueryCollectionMethod'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"charge_automatically"@
    GetSubscriptionsParametersQueryCollectionMethod'EnumChargeAutomatically
  | -- | Represents the JSON value @"send_invoice"@
    GetSubscriptionsParametersQueryCollectionMethod'EnumSendInvoice
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetSubscriptionsParametersQueryCollectionMethod' where
  toJSON (GetSubscriptionsParametersQueryCollectionMethod'Other val) = val
  toJSON (GetSubscriptionsParametersQueryCollectionMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetSubscriptionsParametersQueryCollectionMethod'EnumChargeAutomatically) = "charge_automatically"
  toJSON (GetSubscriptionsParametersQueryCollectionMethod'EnumSendInvoice) = "send_invoice"

instance Data.Aeson.Types.FromJSON.FromJSON GetSubscriptionsParametersQueryCollectionMethod' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "charge_automatically" -> GetSubscriptionsParametersQueryCollectionMethod'EnumChargeAutomatically
            | val GHC.Classes.== "send_invoice" -> GetSubscriptionsParametersQueryCollectionMethod'EnumSendInvoice
            | GHC.Base.otherwise -> GetSubscriptionsParametersQueryCollectionMethod'Other val
      )

-- | Defines the object schema located at @paths.\/v1\/subscriptions.GET.parameters.properties.queryCreated.anyOf@ in the specification.
data GetSubscriptionsParametersQueryCreated'OneOf1 = GetSubscriptionsParametersQueryCreated'OneOf1
  { -- | gt
    getSubscriptionsParametersQueryCreated'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | gte
    getSubscriptionsParametersQueryCreated'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lt
    getSubscriptionsParametersQueryCreated'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lte
    getSubscriptionsParametersQueryCreated'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSubscriptionsParametersQueryCreated'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object ("gt" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCreated'OneOf1Gt obj : "gte" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCreated'OneOf1Gte obj : "lt" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCreated'OneOf1Lt obj : "lte" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCreated'OneOf1Lte obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("gt" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCreated'OneOf1Gt obj) GHC.Base.<> (("gte" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCreated'OneOf1Gte obj) GHC.Base.<> (("lt" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCreated'OneOf1Lt obj) GHC.Base.<> ("lte" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCreated'OneOf1Lte obj))))

instance Data.Aeson.Types.FromJSON.FromJSON GetSubscriptionsParametersQueryCreated'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSubscriptionsParametersQueryCreated'OneOf1" (\obj -> (((GHC.Base.pure GetSubscriptionsParametersQueryCreated'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lte"))

-- | Create a new 'GetSubscriptionsParametersQueryCreated'OneOf1' with all required fields.
mkGetSubscriptionsParametersQueryCreated'OneOf1 :: GetSubscriptionsParametersQueryCreated'OneOf1
mkGetSubscriptionsParametersQueryCreated'OneOf1 =
  GetSubscriptionsParametersQueryCreated'OneOf1
    { getSubscriptionsParametersQueryCreated'OneOf1Gt = GHC.Maybe.Nothing,
      getSubscriptionsParametersQueryCreated'OneOf1Gte = GHC.Maybe.Nothing,
      getSubscriptionsParametersQueryCreated'OneOf1Lt = GHC.Maybe.Nothing,
      getSubscriptionsParametersQueryCreated'OneOf1Lte = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/subscriptions.GET.parameters.properties.queryCreated.anyOf@ in the specification.
--
-- Represents the parameter named \'created\'
data GetSubscriptionsParametersQueryCreated'Variants
  = GetSubscriptionsParametersQueryCreated'GetSubscriptionsParametersQueryCreated'OneOf1 GetSubscriptionsParametersQueryCreated'OneOf1
  | GetSubscriptionsParametersQueryCreated'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetSubscriptionsParametersQueryCreated'Variants where
  toJSON (GetSubscriptionsParametersQueryCreated'GetSubscriptionsParametersQueryCreated'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetSubscriptionsParametersQueryCreated'Int a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetSubscriptionsParametersQueryCreated'Variants where
  parseJSON val = case (GetSubscriptionsParametersQueryCreated'GetSubscriptionsParametersQueryCreated'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetSubscriptionsParametersQueryCreated'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the object schema located at @paths.\/v1\/subscriptions.GET.parameters.properties.queryCurrent_period_end.anyOf@ in the specification.
data GetSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1 = GetSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1
  { -- | gt
    getSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | gte
    getSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lt
    getSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lte
    getSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object ("gt" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1Gt obj : "gte" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1Gte obj : "lt" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1Lt obj : "lte" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1Lte obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("gt" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1Gt obj) GHC.Base.<> (("gte" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1Gte obj) GHC.Base.<> (("lt" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1Lt obj) GHC.Base.<> ("lte" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1Lte obj))))

instance Data.Aeson.Types.FromJSON.FromJSON GetSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1" (\obj -> (((GHC.Base.pure GetSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lte"))

-- | Create a new 'GetSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1' with all required fields.
mkGetSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1 :: GetSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1
mkGetSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1 =
  GetSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1
    { getSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1Gt = GHC.Maybe.Nothing,
      getSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1Gte = GHC.Maybe.Nothing,
      getSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1Lt = GHC.Maybe.Nothing,
      getSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1Lte = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/subscriptions.GET.parameters.properties.queryCurrent_period_end.anyOf@ in the specification.
--
-- Represents the parameter named \'current_period_end\'
data GetSubscriptionsParametersQueryCurrentPeriodEnd'Variants
  = GetSubscriptionsParametersQueryCurrentPeriodEnd'GetSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1 GetSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1
  | GetSubscriptionsParametersQueryCurrentPeriodEnd'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetSubscriptionsParametersQueryCurrentPeriodEnd'Variants where
  toJSON (GetSubscriptionsParametersQueryCurrentPeriodEnd'GetSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetSubscriptionsParametersQueryCurrentPeriodEnd'Int a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetSubscriptionsParametersQueryCurrentPeriodEnd'Variants where
  parseJSON val = case (GetSubscriptionsParametersQueryCurrentPeriodEnd'GetSubscriptionsParametersQueryCurrentPeriodEnd'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetSubscriptionsParametersQueryCurrentPeriodEnd'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the object schema located at @paths.\/v1\/subscriptions.GET.parameters.properties.queryCurrent_period_start.anyOf@ in the specification.
data GetSubscriptionsParametersQueryCurrentPeriodStart'OneOf1 = GetSubscriptionsParametersQueryCurrentPeriodStart'OneOf1
  { -- | gt
    getSubscriptionsParametersQueryCurrentPeriodStart'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | gte
    getSubscriptionsParametersQueryCurrentPeriodStart'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lt
    getSubscriptionsParametersQueryCurrentPeriodStart'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lte
    getSubscriptionsParametersQueryCurrentPeriodStart'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSubscriptionsParametersQueryCurrentPeriodStart'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object ("gt" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCurrentPeriodStart'OneOf1Gt obj : "gte" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCurrentPeriodStart'OneOf1Gte obj : "lt" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCurrentPeriodStart'OneOf1Lt obj : "lte" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCurrentPeriodStart'OneOf1Lte obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("gt" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCurrentPeriodStart'OneOf1Gt obj) GHC.Base.<> (("gte" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCurrentPeriodStart'OneOf1Gte obj) GHC.Base.<> (("lt" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCurrentPeriodStart'OneOf1Lt obj) GHC.Base.<> ("lte" Data.Aeson.Types.ToJSON..= getSubscriptionsParametersQueryCurrentPeriodStart'OneOf1Lte obj))))

instance Data.Aeson.Types.FromJSON.FromJSON GetSubscriptionsParametersQueryCurrentPeriodStart'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSubscriptionsParametersQueryCurrentPeriodStart'OneOf1" (\obj -> (((GHC.Base.pure GetSubscriptionsParametersQueryCurrentPeriodStart'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lte"))

-- | Create a new 'GetSubscriptionsParametersQueryCurrentPeriodStart'OneOf1' with all required fields.
mkGetSubscriptionsParametersQueryCurrentPeriodStart'OneOf1 :: GetSubscriptionsParametersQueryCurrentPeriodStart'OneOf1
mkGetSubscriptionsParametersQueryCurrentPeriodStart'OneOf1 =
  GetSubscriptionsParametersQueryCurrentPeriodStart'OneOf1
    { getSubscriptionsParametersQueryCurrentPeriodStart'OneOf1Gt = GHC.Maybe.Nothing,
      getSubscriptionsParametersQueryCurrentPeriodStart'OneOf1Gte = GHC.Maybe.Nothing,
      getSubscriptionsParametersQueryCurrentPeriodStart'OneOf1Lt = GHC.Maybe.Nothing,
      getSubscriptionsParametersQueryCurrentPeriodStart'OneOf1Lte = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/subscriptions.GET.parameters.properties.queryCurrent_period_start.anyOf@ in the specification.
--
-- Represents the parameter named \'current_period_start\'
data GetSubscriptionsParametersQueryCurrentPeriodStart'Variants
  = GetSubscriptionsParametersQueryCurrentPeriodStart'GetSubscriptionsParametersQueryCurrentPeriodStart'OneOf1 GetSubscriptionsParametersQueryCurrentPeriodStart'OneOf1
  | GetSubscriptionsParametersQueryCurrentPeriodStart'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetSubscriptionsParametersQueryCurrentPeriodStart'Variants where
  toJSON (GetSubscriptionsParametersQueryCurrentPeriodStart'GetSubscriptionsParametersQueryCurrentPeriodStart'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetSubscriptionsParametersQueryCurrentPeriodStart'Int a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetSubscriptionsParametersQueryCurrentPeriodStart'Variants where
  parseJSON val = case (GetSubscriptionsParametersQueryCurrentPeriodStart'GetSubscriptionsParametersQueryCurrentPeriodStart'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetSubscriptionsParametersQueryCurrentPeriodStart'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @paths.\/v1\/subscriptions.GET.parameters.properties.queryStatus@ in the specification.
--
-- Represents the parameter named \'status\'
--
-- The status of the subscriptions to retrieve. Passing in a value of \`canceled\` will return all canceled subscriptions, including those belonging to deleted customers. Pass \`ended\` to find subscriptions that are canceled and subscriptions that are expired due to [incomplete payment](https:\/\/stripe.com\/docs\/billing\/subscriptions\/overview\#subscription-statuses). Passing in a value of \`all\` will return subscriptions of all statuses. If no value is supplied, all subscriptions that have not been canceled are returned.
data GetSubscriptionsParametersQueryStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetSubscriptionsParametersQueryStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetSubscriptionsParametersQueryStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"active"@
    GetSubscriptionsParametersQueryStatus'EnumActive
  | -- | Represents the JSON value @"all"@
    GetSubscriptionsParametersQueryStatus'EnumAll
  | -- | Represents the JSON value @"canceled"@
    GetSubscriptionsParametersQueryStatus'EnumCanceled
  | -- | Represents the JSON value @"ended"@
    GetSubscriptionsParametersQueryStatus'EnumEnded
  | -- | Represents the JSON value @"incomplete"@
    GetSubscriptionsParametersQueryStatus'EnumIncomplete
  | -- | Represents the JSON value @"incomplete_expired"@
    GetSubscriptionsParametersQueryStatus'EnumIncompleteExpired
  | -- | Represents the JSON value @"past_due"@
    GetSubscriptionsParametersQueryStatus'EnumPastDue
  | -- | Represents the JSON value @"trialing"@
    GetSubscriptionsParametersQueryStatus'EnumTrialing
  | -- | Represents the JSON value @"unpaid"@
    GetSubscriptionsParametersQueryStatus'EnumUnpaid
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetSubscriptionsParametersQueryStatus' where
  toJSON (GetSubscriptionsParametersQueryStatus'Other val) = val
  toJSON (GetSubscriptionsParametersQueryStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetSubscriptionsParametersQueryStatus'EnumActive) = "active"
  toJSON (GetSubscriptionsParametersQueryStatus'EnumAll) = "all"
  toJSON (GetSubscriptionsParametersQueryStatus'EnumCanceled) = "canceled"
  toJSON (GetSubscriptionsParametersQueryStatus'EnumEnded) = "ended"
  toJSON (GetSubscriptionsParametersQueryStatus'EnumIncomplete) = "incomplete"
  toJSON (GetSubscriptionsParametersQueryStatus'EnumIncompleteExpired) = "incomplete_expired"
  toJSON (GetSubscriptionsParametersQueryStatus'EnumPastDue) = "past_due"
  toJSON (GetSubscriptionsParametersQueryStatus'EnumTrialing) = "trialing"
  toJSON (GetSubscriptionsParametersQueryStatus'EnumUnpaid) = "unpaid"

instance Data.Aeson.Types.FromJSON.FromJSON GetSubscriptionsParametersQueryStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "active" -> GetSubscriptionsParametersQueryStatus'EnumActive
            | val GHC.Classes.== "all" -> GetSubscriptionsParametersQueryStatus'EnumAll
            | val GHC.Classes.== "canceled" -> GetSubscriptionsParametersQueryStatus'EnumCanceled
            | val GHC.Classes.== "ended" -> GetSubscriptionsParametersQueryStatus'EnumEnded
            | val GHC.Classes.== "incomplete" -> GetSubscriptionsParametersQueryStatus'EnumIncomplete
            | val GHC.Classes.== "incomplete_expired" -> GetSubscriptionsParametersQueryStatus'EnumIncompleteExpired
            | val GHC.Classes.== "past_due" -> GetSubscriptionsParametersQueryStatus'EnumPastDue
            | val GHC.Classes.== "trialing" -> GetSubscriptionsParametersQueryStatus'EnumTrialing
            | val GHC.Classes.== "unpaid" -> GetSubscriptionsParametersQueryStatus'EnumUnpaid
            | GHC.Base.otherwise -> GetSubscriptionsParametersQueryStatus'Other val
      )

-- | Represents a response of the operation 'getSubscriptions'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSubscriptionsResponseError' is used.
data GetSubscriptionsResponse
  = -- | Means either no matching case available or a parse error
    GetSubscriptionsResponseError GHC.Base.String
  | -- | Successful response.
    GetSubscriptionsResponse200 GetSubscriptionsResponseBody200
  | -- | Error response.
    GetSubscriptionsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/subscriptions.GET.responses.200.content.application\/json.schema@ in the specification.
data GetSubscriptionsResponseBody200 = GetSubscriptionsResponseBody200
  { -- | data
    getSubscriptionsResponseBody200Data :: ([Subscription]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getSubscriptionsResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    -- * Must match pattern \'^\/v1\/subscriptions\'
    getSubscriptionsResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSubscriptionsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getSubscriptionsResponseBody200Data obj : "has_more" Data.Aeson.Types.ToJSON..= getSubscriptionsResponseBody200HasMore obj : "url" Data.Aeson.Types.ToJSON..= getSubscriptionsResponseBody200Url obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getSubscriptionsResponseBody200Data obj) GHC.Base.<> (("has_more" Data.Aeson.Types.ToJSON..= getSubscriptionsResponseBody200HasMore obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= getSubscriptionsResponseBody200Url obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"))))

instance Data.Aeson.Types.FromJSON.FromJSON GetSubscriptionsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSubscriptionsResponseBody200" (\obj -> ((GHC.Base.pure GetSubscriptionsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetSubscriptionsResponseBody200' with all required fields.
mkGetSubscriptionsResponseBody200 ::
  -- | 'getSubscriptionsResponseBody200Data'
  [Subscription] ->
  -- | 'getSubscriptionsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getSubscriptionsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetSubscriptionsResponseBody200
mkGetSubscriptionsResponseBody200 getSubscriptionsResponseBody200Data getSubscriptionsResponseBody200HasMore getSubscriptionsResponseBody200Url =
  GetSubscriptionsResponseBody200
    { getSubscriptionsResponseBody200Data = getSubscriptionsResponseBody200Data,
      getSubscriptionsResponseBody200HasMore = getSubscriptionsResponseBody200HasMore,
      getSubscriptionsResponseBody200Url = getSubscriptionsResponseBody200Url
    }
