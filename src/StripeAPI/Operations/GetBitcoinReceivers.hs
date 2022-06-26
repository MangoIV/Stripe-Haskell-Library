{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getBitcoinReceivers
module StripeAPI.Operations.GetBitcoinReceivers where

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

-- | > GET /v1/bitcoin/receivers
--
-- \<p>Returns a list of your receivers. Receivers are returned sorted by creation date, with the most recently created receivers appearing first.\<\/p>
getBitcoinReceivers ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetBitcoinReceiversParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetBitcoinReceiversResponse)
getBitcoinReceivers parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetBitcoinReceiversResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetBitcoinReceiversResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetBitcoinReceiversResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetBitcoinReceiversResponseDefault
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
        (Data.Text.pack "/v1/bitcoin/receivers")
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "active") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getBitcoinReceiversParametersQueryActive parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getBitcoinReceiversParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getBitcoinReceiversParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "filled") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getBitcoinReceiversParametersQueryFilled parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getBitcoinReceiversParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getBitcoinReceiversParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "uncaptured_funds") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getBitcoinReceiversParametersQueryUncapturedFunds parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/bitcoin\/receivers.GET.parameters@ in the specification.
data GetBitcoinReceiversParameters = GetBitcoinReceiversParameters
  { -- | queryActive: Represents the parameter named \'active\'
    --
    -- Filter for active receivers.
    getBitcoinReceiversParametersQueryActive :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getBitcoinReceiversParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getBitcoinReceiversParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryFilled: Represents the parameter named \'filled\'
    --
    -- Filter for filled receivers.
    getBitcoinReceiversParametersQueryFilled :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getBitcoinReceiversParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getBitcoinReceiversParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryUncaptured_funds: Represents the parameter named \'uncaptured_funds\'
    --
    -- Filter for receivers with uncaptured funds.
    getBitcoinReceiversParametersQueryUncapturedFunds :: (GHC.Maybe.Maybe GHC.Types.Bool)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetBitcoinReceiversParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryActive" Data.Aeson.Types.ToJSON..=)) (getBitcoinReceiversParametersQueryActive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getBitcoinReceiversParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getBitcoinReceiversParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryFilled" Data.Aeson.Types.ToJSON..=)) (getBitcoinReceiversParametersQueryFilled obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getBitcoinReceiversParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getBitcoinReceiversParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryUncaptured_funds" Data.Aeson.Types.ToJSON..=)) (getBitcoinReceiversParametersQueryUncapturedFunds obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryActive" Data.Aeson.Types.ToJSON..=)) (getBitcoinReceiversParametersQueryActive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getBitcoinReceiversParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getBitcoinReceiversParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryFilled" Data.Aeson.Types.ToJSON..=)) (getBitcoinReceiversParametersQueryFilled obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getBitcoinReceiversParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getBitcoinReceiversParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryUncaptured_funds" Data.Aeson.Types.ToJSON..=)) (getBitcoinReceiversParametersQueryUncapturedFunds obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetBitcoinReceiversParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetBitcoinReceiversParameters" (\obj -> ((((((GHC.Base.pure GetBitcoinReceiversParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryActive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryFilled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryUncaptured_funds"))

-- | Create a new 'GetBitcoinReceiversParameters' with all required fields.
mkGetBitcoinReceiversParameters :: GetBitcoinReceiversParameters
mkGetBitcoinReceiversParameters =
  GetBitcoinReceiversParameters
    { getBitcoinReceiversParametersQueryActive = GHC.Maybe.Nothing,
      getBitcoinReceiversParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getBitcoinReceiversParametersQueryExpand = GHC.Maybe.Nothing,
      getBitcoinReceiversParametersQueryFilled = GHC.Maybe.Nothing,
      getBitcoinReceiversParametersQueryLimit = GHC.Maybe.Nothing,
      getBitcoinReceiversParametersQueryStartingAfter = GHC.Maybe.Nothing,
      getBitcoinReceiversParametersQueryUncapturedFunds = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getBitcoinReceivers'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetBitcoinReceiversResponseError' is used.
data GetBitcoinReceiversResponse
  = -- | Means either no matching case available or a parse error
    GetBitcoinReceiversResponseError GHC.Base.String
  | -- | Successful response.
    GetBitcoinReceiversResponse200 GetBitcoinReceiversResponseBody200
  | -- | Error response.
    GetBitcoinReceiversResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/bitcoin\/receivers.GET.responses.200.content.application\/json.schema@ in the specification.
data GetBitcoinReceiversResponseBody200 = GetBitcoinReceiversResponseBody200
  { -- | data
    getBitcoinReceiversResponseBody200Data :: ([BitcoinReceiver]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getBitcoinReceiversResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    -- * Must match pattern \'^\/v1\/bitcoin\/receivers\'
    getBitcoinReceiversResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetBitcoinReceiversResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getBitcoinReceiversResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getBitcoinReceiversResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getBitcoinReceiversResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getBitcoinReceiversResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getBitcoinReceiversResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getBitcoinReceiversResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetBitcoinReceiversResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetBitcoinReceiversResponseBody200" (\obj -> ((GHC.Base.pure GetBitcoinReceiversResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetBitcoinReceiversResponseBody200' with all required fields.
mkGetBitcoinReceiversResponseBody200 ::
  -- | 'getBitcoinReceiversResponseBody200Data'
  [BitcoinReceiver] ->
  -- | 'getBitcoinReceiversResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getBitcoinReceiversResponseBody200Url'
  Data.Text.Internal.Text ->
  GetBitcoinReceiversResponseBody200
mkGetBitcoinReceiversResponseBody200 getBitcoinReceiversResponseBody200Data getBitcoinReceiversResponseBody200HasMore getBitcoinReceiversResponseBody200Url =
  GetBitcoinReceiversResponseBody200
    { getBitcoinReceiversResponseBody200Data = getBitcoinReceiversResponseBody200Data,
      getBitcoinReceiversResponseBody200HasMore = getBitcoinReceiversResponseBody200HasMore,
      getBitcoinReceiversResponseBody200Url = getBitcoinReceiversResponseBody200Url
    }
