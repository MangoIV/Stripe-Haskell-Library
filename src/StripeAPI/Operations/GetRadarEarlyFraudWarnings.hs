{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getRadarEarlyFraudWarnings
module StripeAPI.Operations.GetRadarEarlyFraudWarnings where

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

-- | > GET /v1/radar/early_fraud_warnings
--
-- \<p>Returns a list of early fraud warnings.\<\/p>
getRadarEarlyFraudWarnings ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetRadarEarlyFraudWarningsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response GetRadarEarlyFraudWarningsResponse)
getRadarEarlyFraudWarnings parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetRadarEarlyFraudWarningsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetRadarEarlyFraudWarningsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetRadarEarlyFraudWarningsResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetRadarEarlyFraudWarningsResponseDefault
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
        (Data.Text.pack "/v1/radar/early_fraud_warnings")
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "charge") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getRadarEarlyFraudWarningsParametersQueryCharge parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getRadarEarlyFraudWarningsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getRadarEarlyFraudWarningsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getRadarEarlyFraudWarningsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "payment_intent") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getRadarEarlyFraudWarningsParametersQueryPaymentIntent parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getRadarEarlyFraudWarningsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/radar\/early_fraud_warnings.GET.parameters@ in the specification.
data GetRadarEarlyFraudWarningsParameters = GetRadarEarlyFraudWarningsParameters
  { -- | queryCharge: Represents the parameter named \'charge\'
    --
    -- Only return early fraud warnings for the charge specified by this charge ID.
    getRadarEarlyFraudWarningsParametersQueryCharge :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getRadarEarlyFraudWarningsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getRadarEarlyFraudWarningsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getRadarEarlyFraudWarningsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryPayment_intent: Represents the parameter named \'payment_intent\'
    --
    -- Only return early fraud warnings for charges that were created by the PaymentIntent specified by this PaymentIntent ID.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getRadarEarlyFraudWarningsParametersQueryPaymentIntent :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getRadarEarlyFraudWarningsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetRadarEarlyFraudWarningsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("queryCharge" Data.Aeson.Types.ToJSON..= getRadarEarlyFraudWarningsParametersQueryCharge obj : "queryEnding_before" Data.Aeson.Types.ToJSON..= getRadarEarlyFraudWarningsParametersQueryEndingBefore obj : "queryExpand" Data.Aeson.Types.ToJSON..= getRadarEarlyFraudWarningsParametersQueryExpand obj : "queryLimit" Data.Aeson.Types.ToJSON..= getRadarEarlyFraudWarningsParametersQueryLimit obj : "queryPayment_intent" Data.Aeson.Types.ToJSON..= getRadarEarlyFraudWarningsParametersQueryPaymentIntent obj : "queryStarting_after" Data.Aeson.Types.ToJSON..= getRadarEarlyFraudWarningsParametersQueryStartingAfter obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryCharge" Data.Aeson.Types.ToJSON..= getRadarEarlyFraudWarningsParametersQueryCharge obj) GHC.Base.<> (("queryEnding_before" Data.Aeson.Types.ToJSON..= getRadarEarlyFraudWarningsParametersQueryEndingBefore obj) GHC.Base.<> (("queryExpand" Data.Aeson.Types.ToJSON..= getRadarEarlyFraudWarningsParametersQueryExpand obj) GHC.Base.<> (("queryLimit" Data.Aeson.Types.ToJSON..= getRadarEarlyFraudWarningsParametersQueryLimit obj) GHC.Base.<> (("queryPayment_intent" Data.Aeson.Types.ToJSON..= getRadarEarlyFraudWarningsParametersQueryPaymentIntent obj) GHC.Base.<> ("queryStarting_after" Data.Aeson.Types.ToJSON..= getRadarEarlyFraudWarningsParametersQueryStartingAfter obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON GetRadarEarlyFraudWarningsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRadarEarlyFraudWarningsParameters" (\obj -> (((((GHC.Base.pure GetRadarEarlyFraudWarningsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryCharge")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPayment_intent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryStarting_after"))

-- | Create a new 'GetRadarEarlyFraudWarningsParameters' with all required fields.
mkGetRadarEarlyFraudWarningsParameters :: GetRadarEarlyFraudWarningsParameters
mkGetRadarEarlyFraudWarningsParameters =
  GetRadarEarlyFraudWarningsParameters
    { getRadarEarlyFraudWarningsParametersQueryCharge = GHC.Maybe.Nothing,
      getRadarEarlyFraudWarningsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getRadarEarlyFraudWarningsParametersQueryExpand = GHC.Maybe.Nothing,
      getRadarEarlyFraudWarningsParametersQueryLimit = GHC.Maybe.Nothing,
      getRadarEarlyFraudWarningsParametersQueryPaymentIntent = GHC.Maybe.Nothing,
      getRadarEarlyFraudWarningsParametersQueryStartingAfter = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getRadarEarlyFraudWarnings'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetRadarEarlyFraudWarningsResponseError' is used.
data GetRadarEarlyFraudWarningsResponse
  = -- | Means either no matching case available or a parse error
    GetRadarEarlyFraudWarningsResponseError GHC.Base.String
  | -- | Successful response.
    GetRadarEarlyFraudWarningsResponse200 GetRadarEarlyFraudWarningsResponseBody200
  | -- | Error response.
    GetRadarEarlyFraudWarningsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/radar\/early_fraud_warnings.GET.responses.200.content.application\/json.schema@ in the specification.
data GetRadarEarlyFraudWarningsResponseBody200 = GetRadarEarlyFraudWarningsResponseBody200
  { -- | data
    getRadarEarlyFraudWarningsResponseBody200Data :: ([Radar'earlyFraudWarning]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getRadarEarlyFraudWarningsResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    -- * Must match pattern \'^\/v1\/radar\/early_fraud_warnings\'
    getRadarEarlyFraudWarningsResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetRadarEarlyFraudWarningsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getRadarEarlyFraudWarningsResponseBody200Data obj : "has_more" Data.Aeson.Types.ToJSON..= getRadarEarlyFraudWarningsResponseBody200HasMore obj : "url" Data.Aeson.Types.ToJSON..= getRadarEarlyFraudWarningsResponseBody200Url obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getRadarEarlyFraudWarningsResponseBody200Data obj) GHC.Base.<> (("has_more" Data.Aeson.Types.ToJSON..= getRadarEarlyFraudWarningsResponseBody200HasMore obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= getRadarEarlyFraudWarningsResponseBody200Url obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"))))

instance Data.Aeson.Types.FromJSON.FromJSON GetRadarEarlyFraudWarningsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRadarEarlyFraudWarningsResponseBody200" (\obj -> ((GHC.Base.pure GetRadarEarlyFraudWarningsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetRadarEarlyFraudWarningsResponseBody200' with all required fields.
mkGetRadarEarlyFraudWarningsResponseBody200 ::
  -- | 'getRadarEarlyFraudWarningsResponseBody200Data'
  [Radar'earlyFraudWarning] ->
  -- | 'getRadarEarlyFraudWarningsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getRadarEarlyFraudWarningsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetRadarEarlyFraudWarningsResponseBody200
mkGetRadarEarlyFraudWarningsResponseBody200 getRadarEarlyFraudWarningsResponseBody200Data getRadarEarlyFraudWarningsResponseBody200HasMore getRadarEarlyFraudWarningsResponseBody200Url =
  GetRadarEarlyFraudWarningsResponseBody200
    { getRadarEarlyFraudWarningsResponseBody200Data = getRadarEarlyFraudWarningsResponseBody200Data,
      getRadarEarlyFraudWarningsResponseBody200HasMore = getRadarEarlyFraudWarningsResponseBody200HasMore,
      getRadarEarlyFraudWarningsResponseBody200Url = getRadarEarlyFraudWarningsResponseBody200Url
    }
