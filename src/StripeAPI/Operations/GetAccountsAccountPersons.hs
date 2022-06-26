{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getAccountsAccountPersons
module StripeAPI.Operations.GetAccountsAccountPersons where

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

-- | > GET /v1/accounts/{account}/persons
--
-- \<p>Returns a list of people associated with the account’s legal entity. The people are returned sorted by creation date, with the most recent people appearing first.\<\/p>
getAccountsAccountPersons ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetAccountsAccountPersonsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetAccountsAccountPersonsResponse)
getAccountsAccountPersons parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetAccountsAccountPersonsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetAccountsAccountPersonsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetAccountsAccountPersonsResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetAccountsAccountPersonsResponseDefault
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
        (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getAccountsAccountPersonsParametersPathAccount parameters))) GHC.Base.++ "/persons")))
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getAccountsAccountPersonsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getAccountsAccountPersonsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getAccountsAccountPersonsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "relationship") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getAccountsAccountPersonsParametersQueryRelationship parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getAccountsAccountPersonsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/accounts\/{account}\/persons.GET.parameters@ in the specification.
data GetAccountsAccountPersonsParameters = GetAccountsAccountPersonsParameters
  { -- | pathAccount: Represents the parameter named \'account\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getAccountsAccountPersonsParametersPathAccount :: Data.Text.Internal.Text,
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getAccountsAccountPersonsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getAccountsAccountPersonsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getAccountsAccountPersonsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryRelationship: Represents the parameter named \'relationship\'
    --
    -- Filters on the list of people returned based on the person\'s relationship to the account\'s company.
    getAccountsAccountPersonsParametersQueryRelationship :: (GHC.Maybe.Maybe GetAccountsAccountPersonsParametersQueryRelationship'),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getAccountsAccountPersonsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetAccountsAccountPersonsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathAccount" Data.Aeson.Types.ToJSON..= getAccountsAccountPersonsParametersPathAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountPersonsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountPersonsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountPersonsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRelationship" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountPersonsParametersQueryRelationship obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountPersonsParametersQueryStartingAfter obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathAccount" Data.Aeson.Types.ToJSON..= getAccountsAccountPersonsParametersPathAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountPersonsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountPersonsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountPersonsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRelationship" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountPersonsParametersQueryRelationship obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountPersonsParametersQueryStartingAfter obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetAccountsAccountPersonsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountsAccountPersonsParameters" (\obj -> (((((GHC.Base.pure GetAccountsAccountPersonsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAccount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRelationship")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after"))

-- | Create a new 'GetAccountsAccountPersonsParameters' with all required fields.
mkGetAccountsAccountPersonsParameters ::
  -- | 'getAccountsAccountPersonsParametersPathAccount'
  Data.Text.Internal.Text ->
  GetAccountsAccountPersonsParameters
mkGetAccountsAccountPersonsParameters getAccountsAccountPersonsParametersPathAccount =
  GetAccountsAccountPersonsParameters
    { getAccountsAccountPersonsParametersPathAccount = getAccountsAccountPersonsParametersPathAccount,
      getAccountsAccountPersonsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getAccountsAccountPersonsParametersQueryExpand = GHC.Maybe.Nothing,
      getAccountsAccountPersonsParametersQueryLimit = GHC.Maybe.Nothing,
      getAccountsAccountPersonsParametersQueryRelationship = GHC.Maybe.Nothing,
      getAccountsAccountPersonsParametersQueryStartingAfter = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/accounts\/{account}\/persons.GET.parameters.properties.queryRelationship@ in the specification.
--
-- Represents the parameter named \'relationship\'
--
-- Filters on the list of people returned based on the person\'s relationship to the account\'s company.
data GetAccountsAccountPersonsParametersQueryRelationship' = GetAccountsAccountPersonsParametersQueryRelationship'
  { -- | director
    getAccountsAccountPersonsParametersQueryRelationship'Director :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | executive
    getAccountsAccountPersonsParametersQueryRelationship'Executive :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | owner
    getAccountsAccountPersonsParametersQueryRelationship'Owner :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | representative
    getAccountsAccountPersonsParametersQueryRelationship'Representative :: (GHC.Maybe.Maybe GHC.Types.Bool)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetAccountsAccountPersonsParametersQueryRelationship' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("director" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountPersonsParametersQueryRelationship'Director obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("executive" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountPersonsParametersQueryRelationship'Executive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("owner" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountPersonsParametersQueryRelationship'Owner obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("representative" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountPersonsParametersQueryRelationship'Representative obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("director" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountPersonsParametersQueryRelationship'Director obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("executive" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountPersonsParametersQueryRelationship'Executive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("owner" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountPersonsParametersQueryRelationship'Owner obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("representative" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountPersonsParametersQueryRelationship'Representative obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetAccountsAccountPersonsParametersQueryRelationship' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountsAccountPersonsParametersQueryRelationship'" (\obj -> (((GHC.Base.pure GetAccountsAccountPersonsParametersQueryRelationship' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "director")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "executive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "representative"))

-- | Create a new 'GetAccountsAccountPersonsParametersQueryRelationship'' with all required fields.
mkGetAccountsAccountPersonsParametersQueryRelationship' :: GetAccountsAccountPersonsParametersQueryRelationship'
mkGetAccountsAccountPersonsParametersQueryRelationship' =
  GetAccountsAccountPersonsParametersQueryRelationship'
    { getAccountsAccountPersonsParametersQueryRelationship'Director = GHC.Maybe.Nothing,
      getAccountsAccountPersonsParametersQueryRelationship'Executive = GHC.Maybe.Nothing,
      getAccountsAccountPersonsParametersQueryRelationship'Owner = GHC.Maybe.Nothing,
      getAccountsAccountPersonsParametersQueryRelationship'Representative = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getAccountsAccountPersons'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetAccountsAccountPersonsResponseError' is used.
data GetAccountsAccountPersonsResponse
  = -- | Means either no matching case available or a parse error
    GetAccountsAccountPersonsResponseError GHC.Base.String
  | -- | Successful response.
    GetAccountsAccountPersonsResponse200 GetAccountsAccountPersonsResponseBody200
  | -- | Error response.
    GetAccountsAccountPersonsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/accounts\/{account}\/persons.GET.responses.200.content.application\/json.schema@ in the specification.
data GetAccountsAccountPersonsResponseBody200 = GetAccountsAccountPersonsResponseBody200
  { -- | data
    getAccountsAccountPersonsResponseBody200Data :: ([Person]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getAccountsAccountPersonsResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getAccountsAccountPersonsResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetAccountsAccountPersonsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getAccountsAccountPersonsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getAccountsAccountPersonsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getAccountsAccountPersonsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getAccountsAccountPersonsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getAccountsAccountPersonsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getAccountsAccountPersonsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetAccountsAccountPersonsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountsAccountPersonsResponseBody200" (\obj -> ((GHC.Base.pure GetAccountsAccountPersonsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetAccountsAccountPersonsResponseBody200' with all required fields.
mkGetAccountsAccountPersonsResponseBody200 ::
  -- | 'getAccountsAccountPersonsResponseBody200Data'
  [Person] ->
  -- | 'getAccountsAccountPersonsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getAccountsAccountPersonsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetAccountsAccountPersonsResponseBody200
mkGetAccountsAccountPersonsResponseBody200 getAccountsAccountPersonsResponseBody200Data getAccountsAccountPersonsResponseBody200HasMore getAccountsAccountPersonsResponseBody200Url =
  GetAccountsAccountPersonsResponseBody200
    { getAccountsAccountPersonsResponseBody200Data = getAccountsAccountPersonsResponseBody200Data,
      getAccountsAccountPersonsResponseBody200HasMore = getAccountsAccountPersonsResponseBody200HasMore,
      getAccountsAccountPersonsResponseBody200Url = getAccountsAccountPersonsResponseBody200Url
    }
