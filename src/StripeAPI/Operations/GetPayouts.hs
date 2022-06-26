{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getPayouts
module StripeAPI.Operations.GetPayouts where

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

-- | > GET /v1/payouts
--
-- \<p>Returns a list of existing payouts sent to third-party bank accounts or that Stripe has sent you. The payouts are returned in sorted order, with the most recently created payouts appearing first.\<\/p>
getPayouts ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetPayoutsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetPayoutsResponse)
getPayouts parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetPayoutsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetPayoutsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetPayoutsResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetPayoutsResponseDefault
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
        (Data.Text.pack "/v1/payouts")
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "arrival_date") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPayoutsParametersQueryArrivalDate parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "created") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPayoutsParametersQueryCreated parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "destination") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPayoutsParametersQueryDestination parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPayoutsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPayoutsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPayoutsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPayoutsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPayoutsParametersQueryStatus parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/payouts.GET.parameters@ in the specification.
data GetPayoutsParameters = GetPayoutsParameters
  { -- | queryArrival_date: Represents the parameter named \'arrival_date\'
    getPayoutsParametersQueryArrivalDate :: (GHC.Maybe.Maybe GetPayoutsParametersQueryArrivalDate'Variants),
    -- | queryCreated: Represents the parameter named \'created\'
    getPayoutsParametersQueryCreated :: (GHC.Maybe.Maybe GetPayoutsParametersQueryCreated'Variants),
    -- | queryDestination: Represents the parameter named \'destination\'
    --
    -- The ID of an external account - only return payouts sent to this external account.
    getPayoutsParametersQueryDestination :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getPayoutsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getPayoutsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getPayoutsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getPayoutsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryStatus: Represents the parameter named \'status\'
    --
    -- Only return payouts that have the given status: \`pending\`, \`paid\`, \`failed\`, or \`canceled\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getPayoutsParametersQueryStatus :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetPayoutsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryArrival_date" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryArrivalDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryDestination" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryDestination obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryStatus obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryArrival_date" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryArrivalDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryDestination" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryDestination obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryStatus obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetPayoutsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPayoutsParameters" (\obj -> (((((((GHC.Base.pure GetPayoutsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryArrival_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCreated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryDestination")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStatus"))

-- | Create a new 'GetPayoutsParameters' with all required fields.
mkGetPayoutsParameters :: GetPayoutsParameters
mkGetPayoutsParameters =
  GetPayoutsParameters
    { getPayoutsParametersQueryArrivalDate = GHC.Maybe.Nothing,
      getPayoutsParametersQueryCreated = GHC.Maybe.Nothing,
      getPayoutsParametersQueryDestination = GHC.Maybe.Nothing,
      getPayoutsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getPayoutsParametersQueryExpand = GHC.Maybe.Nothing,
      getPayoutsParametersQueryLimit = GHC.Maybe.Nothing,
      getPayoutsParametersQueryStartingAfter = GHC.Maybe.Nothing,
      getPayoutsParametersQueryStatus = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/payouts.GET.parameters.properties.queryArrival_date.anyOf@ in the specification.
data GetPayoutsParametersQueryArrivalDate'OneOf1 = GetPayoutsParametersQueryArrivalDate'OneOf1
  { -- | gt
    getPayoutsParametersQueryArrivalDate'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | gte
    getPayoutsParametersQueryArrivalDate'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lt
    getPayoutsParametersQueryArrivalDate'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lte
    getPayoutsParametersQueryArrivalDate'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetPayoutsParametersQueryArrivalDate'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryArrivalDate'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryArrivalDate'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryArrivalDate'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryArrivalDate'OneOf1Lte obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryArrivalDate'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryArrivalDate'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryArrivalDate'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryArrivalDate'OneOf1Lte obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetPayoutsParametersQueryArrivalDate'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPayoutsParametersQueryArrivalDate'OneOf1" (\obj -> (((GHC.Base.pure GetPayoutsParametersQueryArrivalDate'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lte"))

-- | Create a new 'GetPayoutsParametersQueryArrivalDate'OneOf1' with all required fields.
mkGetPayoutsParametersQueryArrivalDate'OneOf1 :: GetPayoutsParametersQueryArrivalDate'OneOf1
mkGetPayoutsParametersQueryArrivalDate'OneOf1 =
  GetPayoutsParametersQueryArrivalDate'OneOf1
    { getPayoutsParametersQueryArrivalDate'OneOf1Gt = GHC.Maybe.Nothing,
      getPayoutsParametersQueryArrivalDate'OneOf1Gte = GHC.Maybe.Nothing,
      getPayoutsParametersQueryArrivalDate'OneOf1Lt = GHC.Maybe.Nothing,
      getPayoutsParametersQueryArrivalDate'OneOf1Lte = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/payouts.GET.parameters.properties.queryArrival_date.anyOf@ in the specification.
--
-- Represents the parameter named \'arrival_date\'
data GetPayoutsParametersQueryArrivalDate'Variants
  = GetPayoutsParametersQueryArrivalDate'GetPayoutsParametersQueryArrivalDate'OneOf1 GetPayoutsParametersQueryArrivalDate'OneOf1
  | GetPayoutsParametersQueryArrivalDate'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetPayoutsParametersQueryArrivalDate'Variants where
  toJSON (GetPayoutsParametersQueryArrivalDate'GetPayoutsParametersQueryArrivalDate'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetPayoutsParametersQueryArrivalDate'Int a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetPayoutsParametersQueryArrivalDate'Variants where
  parseJSON val = case (GetPayoutsParametersQueryArrivalDate'GetPayoutsParametersQueryArrivalDate'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetPayoutsParametersQueryArrivalDate'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the object schema located at @paths.\/v1\/payouts.GET.parameters.properties.queryCreated.anyOf@ in the specification.
data GetPayoutsParametersQueryCreated'OneOf1 = GetPayoutsParametersQueryCreated'OneOf1
  { -- | gt
    getPayoutsParametersQueryCreated'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | gte
    getPayoutsParametersQueryCreated'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lt
    getPayoutsParametersQueryCreated'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lte
    getPayoutsParametersQueryCreated'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetPayoutsParametersQueryCreated'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getPayoutsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetPayoutsParametersQueryCreated'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPayoutsParametersQueryCreated'OneOf1" (\obj -> (((GHC.Base.pure GetPayoutsParametersQueryCreated'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lte"))

-- | Create a new 'GetPayoutsParametersQueryCreated'OneOf1' with all required fields.
mkGetPayoutsParametersQueryCreated'OneOf1 :: GetPayoutsParametersQueryCreated'OneOf1
mkGetPayoutsParametersQueryCreated'OneOf1 =
  GetPayoutsParametersQueryCreated'OneOf1
    { getPayoutsParametersQueryCreated'OneOf1Gt = GHC.Maybe.Nothing,
      getPayoutsParametersQueryCreated'OneOf1Gte = GHC.Maybe.Nothing,
      getPayoutsParametersQueryCreated'OneOf1Lt = GHC.Maybe.Nothing,
      getPayoutsParametersQueryCreated'OneOf1Lte = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/payouts.GET.parameters.properties.queryCreated.anyOf@ in the specification.
--
-- Represents the parameter named \'created\'
data GetPayoutsParametersQueryCreated'Variants
  = GetPayoutsParametersQueryCreated'GetPayoutsParametersQueryCreated'OneOf1 GetPayoutsParametersQueryCreated'OneOf1
  | GetPayoutsParametersQueryCreated'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetPayoutsParametersQueryCreated'Variants where
  toJSON (GetPayoutsParametersQueryCreated'GetPayoutsParametersQueryCreated'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetPayoutsParametersQueryCreated'Int a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetPayoutsParametersQueryCreated'Variants where
  parseJSON val = case (GetPayoutsParametersQueryCreated'GetPayoutsParametersQueryCreated'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetPayoutsParametersQueryCreated'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Represents a response of the operation 'getPayouts'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetPayoutsResponseError' is used.
data GetPayoutsResponse
  = -- | Means either no matching case available or a parse error
    GetPayoutsResponseError GHC.Base.String
  | -- | Successful response.
    GetPayoutsResponse200 GetPayoutsResponseBody200
  | -- | Error response.
    GetPayoutsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/payouts.GET.responses.200.content.application\/json.schema@ in the specification.
data GetPayoutsResponseBody200 = GetPayoutsResponseBody200
  { -- | data
    getPayoutsResponseBody200Data :: ([Payout]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getPayoutsResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    -- * Must match pattern \'^\/v1\/payouts\'
    getPayoutsResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetPayoutsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getPayoutsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getPayoutsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getPayoutsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getPayoutsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getPayoutsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getPayoutsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetPayoutsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPayoutsResponseBody200" (\obj -> ((GHC.Base.pure GetPayoutsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetPayoutsResponseBody200' with all required fields.
mkGetPayoutsResponseBody200 ::
  -- | 'getPayoutsResponseBody200Data'
  [Payout] ->
  -- | 'getPayoutsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getPayoutsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetPayoutsResponseBody200
mkGetPayoutsResponseBody200 getPayoutsResponseBody200Data getPayoutsResponseBody200HasMore getPayoutsResponseBody200Url =
  GetPayoutsResponseBody200
    { getPayoutsResponseBody200Data = getPayoutsResponseBody200Data,
      getPayoutsResponseBody200HasMore = getPayoutsResponseBody200HasMore,
      getPayoutsResponseBody200Url = getPayoutsResponseBody200Url
    }
