{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSubscriptionItemsSubscriptionItemUsageRecordSummaries
module StripeAPI.Operations.GetSubscriptionItemsSubscriptionItemUsageRecordSummaries where

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

-- | > GET /v1/subscription_items/{subscription_item}/usage_record_summaries
--
-- \<p>For the specified subscription item, returns a list of summary objects. Each object in the list provides usage information that’s been summarized from multiple usage records and over a subscription billing period (e.g., 15 usage records in the month of September).\<\/p>
--
-- \<p>The list is sorted in reverse-chronological order (newest first). The first list item represents the most current usage period that hasn’t ended yet. Since new usage records can still be added, the returned summary information for the subscription item’s ID should be seen as unstable until the subscription billing period ends.\<\/p>
getSubscriptionItemsSubscriptionItemUsageRecordSummaries ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSubscriptionItemsSubscriptionItemUsageRecordSummariesParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponse)
getSubscriptionItemsSubscriptionItemUsageRecordSummaries parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseDefault
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
        (Data.Text.pack ("/v1/subscription_items/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersPathSubscriptionItem parameters))) GHC.Base.++ "/usage_record_summaries")))
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/subscription_items\/{subscription_item}\/usage_record_summaries.GET.parameters@ in the specification.
data GetSubscriptionItemsSubscriptionItemUsageRecordSummariesParameters = GetSubscriptionItemsSubscriptionItemUsageRecordSummariesParameters
  { -- | pathSubscription_item: Represents the parameter named \'subscription_item\'
    getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersPathSubscriptionItem :: Data.Text.Internal.Text,
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSubscriptionItemsSubscriptionItemUsageRecordSummariesParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathSubscription_item" Data.Aeson.Types.ToJSON..= getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersPathSubscriptionItem obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersQueryStartingAfter obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathSubscription_item" Data.Aeson.Types.ToJSON..= getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersPathSubscriptionItem obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersQueryStartingAfter obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSubscriptionItemsSubscriptionItemUsageRecordSummariesParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSubscriptionItemsSubscriptionItemUsageRecordSummariesParameters" (\obj -> ((((GHC.Base.pure GetSubscriptionItemsSubscriptionItemUsageRecordSummariesParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathSubscription_item")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after"))

-- | Create a new 'GetSubscriptionItemsSubscriptionItemUsageRecordSummariesParameters' with all required fields.
mkGetSubscriptionItemsSubscriptionItemUsageRecordSummariesParameters ::
  -- | 'getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersPathSubscriptionItem'
  Data.Text.Internal.Text ->
  GetSubscriptionItemsSubscriptionItemUsageRecordSummariesParameters
mkGetSubscriptionItemsSubscriptionItemUsageRecordSummariesParameters getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersPathSubscriptionItem =
  GetSubscriptionItemsSubscriptionItemUsageRecordSummariesParameters
    { getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersPathSubscriptionItem = getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersPathSubscriptionItem,
      getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersQueryExpand = GHC.Maybe.Nothing,
      getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersQueryLimit = GHC.Maybe.Nothing,
      getSubscriptionItemsSubscriptionItemUsageRecordSummariesParametersQueryStartingAfter = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getSubscriptionItemsSubscriptionItemUsageRecordSummaries'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseError' is used.
data GetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponse
  = -- | Means either no matching case available or a parse error
    GetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseError GHC.Base.String
  | -- | Successful response.
    GetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponse200 GetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200
  | -- | Error response.
    GetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/subscription_items\/{subscription_item}\/usage_record_summaries.GET.responses.200.content.application\/json.schema@ in the specification.
data GetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200 = GetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200
  { -- | data
    getSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200Data :: ([UsageRecordSummary]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200" (\obj -> ((GHC.Base.pure GetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200' with all required fields.
mkGetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200 ::
  -- | 'getSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200Data'
  [UsageRecordSummary] ->
  -- | 'getSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200Url'
  Data.Text.Internal.Text ->
  GetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200
mkGetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200 getSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200Data getSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200HasMore getSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200Url =
  GetSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200
    { getSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200Data = getSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200Data,
      getSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200HasMore = getSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200HasMore,
      getSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200Url = getSubscriptionItemsSubscriptionItemUsageRecordSummariesResponseBody200Url
    }
