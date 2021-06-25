{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getCreditNotesCreditNoteLines
module StripeAPI.Operations.GetCreditNotesCreditNoteLines where

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

-- | > GET /v1/credit_notes/{credit_note}/lines
--
-- \<p>When retrieving a credit note, you’ll get a \<strong>lines\<\/strong> property containing the the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.\<\/p>
getCreditNotesCreditNoteLines ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetCreditNotesCreditNoteLinesParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response GetCreditNotesCreditNoteLinesResponse)
getCreditNotesCreditNoteLines parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetCreditNotesCreditNoteLinesResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetCreditNotesCreditNoteLinesResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetCreditNotesCreditNoteLinesResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetCreditNotesCreditNoteLinesResponseDefault
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
        (Data.Text.pack ("/v1/credit_notes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getCreditNotesCreditNoteLinesParametersPathCreditNote parameters))) GHC.Base.++ "/lines")))
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCreditNotesCreditNoteLinesParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCreditNotesCreditNoteLinesParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCreditNotesCreditNoteLinesParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCreditNotesCreditNoteLinesParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/credit_notes\/{credit_note}\/lines.GET.parameters@ in the specification.
data GetCreditNotesCreditNoteLinesParameters = GetCreditNotesCreditNoteLinesParameters
  { -- | pathCredit_note: Represents the parameter named \'credit_note\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCreditNotesCreditNoteLinesParametersPathCreditNote :: Data.Text.Internal.Text,
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCreditNotesCreditNoteLinesParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getCreditNotesCreditNoteLinesParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getCreditNotesCreditNoteLinesParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCreditNotesCreditNoteLinesParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetCreditNotesCreditNoteLinesParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("pathCredit_note" Data.Aeson.Types.ToJSON..= getCreditNotesCreditNoteLinesParametersPathCreditNote obj : "queryEnding_before" Data.Aeson.Types.ToJSON..= getCreditNotesCreditNoteLinesParametersQueryEndingBefore obj : "queryExpand" Data.Aeson.Types.ToJSON..= getCreditNotesCreditNoteLinesParametersQueryExpand obj : "queryLimit" Data.Aeson.Types.ToJSON..= getCreditNotesCreditNoteLinesParametersQueryLimit obj : "queryStarting_after" Data.Aeson.Types.ToJSON..= getCreditNotesCreditNoteLinesParametersQueryStartingAfter obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathCredit_note" Data.Aeson.Types.ToJSON..= getCreditNotesCreditNoteLinesParametersPathCreditNote obj) GHC.Base.<> (("queryEnding_before" Data.Aeson.Types.ToJSON..= getCreditNotesCreditNoteLinesParametersQueryEndingBefore obj) GHC.Base.<> (("queryExpand" Data.Aeson.Types.ToJSON..= getCreditNotesCreditNoteLinesParametersQueryExpand obj) GHC.Base.<> (("queryLimit" Data.Aeson.Types.ToJSON..= getCreditNotesCreditNoteLinesParametersQueryLimit obj) GHC.Base.<> ("queryStarting_after" Data.Aeson.Types.ToJSON..= getCreditNotesCreditNoteLinesParametersQueryStartingAfter obj)))))

instance Data.Aeson.Types.FromJSON.FromJSON GetCreditNotesCreditNoteLinesParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCreditNotesCreditNoteLinesParameters" (\obj -> ((((GHC.Base.pure GetCreditNotesCreditNoteLinesParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathCredit_note")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryStarting_after"))

-- | Create a new 'GetCreditNotesCreditNoteLinesParameters' with all required fields.
mkGetCreditNotesCreditNoteLinesParameters ::
  -- | 'getCreditNotesCreditNoteLinesParametersPathCreditNote'
  Data.Text.Internal.Text ->
  GetCreditNotesCreditNoteLinesParameters
mkGetCreditNotesCreditNoteLinesParameters getCreditNotesCreditNoteLinesParametersPathCreditNote =
  GetCreditNotesCreditNoteLinesParameters
    { getCreditNotesCreditNoteLinesParametersPathCreditNote = getCreditNotesCreditNoteLinesParametersPathCreditNote,
      getCreditNotesCreditNoteLinesParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getCreditNotesCreditNoteLinesParametersQueryExpand = GHC.Maybe.Nothing,
      getCreditNotesCreditNoteLinesParametersQueryLimit = GHC.Maybe.Nothing,
      getCreditNotesCreditNoteLinesParametersQueryStartingAfter = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getCreditNotesCreditNoteLines'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetCreditNotesCreditNoteLinesResponseError' is used.
data GetCreditNotesCreditNoteLinesResponse
  = -- | Means either no matching case available or a parse error
    GetCreditNotesCreditNoteLinesResponseError GHC.Base.String
  | -- | Successful response.
    GetCreditNotesCreditNoteLinesResponse200 GetCreditNotesCreditNoteLinesResponseBody200
  | -- | Error response.
    GetCreditNotesCreditNoteLinesResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/credit_notes\/{credit_note}\/lines.GET.responses.200.content.application\/json.schema@ in the specification.
data GetCreditNotesCreditNoteLinesResponseBody200 = GetCreditNotesCreditNoteLinesResponseBody200
  { -- | data: Details about each object.
    getCreditNotesCreditNoteLinesResponseBody200Data :: ([CreditNoteLineItem]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getCreditNotesCreditNoteLinesResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCreditNotesCreditNoteLinesResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetCreditNotesCreditNoteLinesResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getCreditNotesCreditNoteLinesResponseBody200Data obj : "has_more" Data.Aeson.Types.ToJSON..= getCreditNotesCreditNoteLinesResponseBody200HasMore obj : "url" Data.Aeson.Types.ToJSON..= getCreditNotesCreditNoteLinesResponseBody200Url obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getCreditNotesCreditNoteLinesResponseBody200Data obj) GHC.Base.<> (("has_more" Data.Aeson.Types.ToJSON..= getCreditNotesCreditNoteLinesResponseBody200HasMore obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= getCreditNotesCreditNoteLinesResponseBody200Url obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"))))

instance Data.Aeson.Types.FromJSON.FromJSON GetCreditNotesCreditNoteLinesResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCreditNotesCreditNoteLinesResponseBody200" (\obj -> ((GHC.Base.pure GetCreditNotesCreditNoteLinesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetCreditNotesCreditNoteLinesResponseBody200' with all required fields.
mkGetCreditNotesCreditNoteLinesResponseBody200 ::
  -- | 'getCreditNotesCreditNoteLinesResponseBody200Data'
  [CreditNoteLineItem] ->
  -- | 'getCreditNotesCreditNoteLinesResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getCreditNotesCreditNoteLinesResponseBody200Url'
  Data.Text.Internal.Text ->
  GetCreditNotesCreditNoteLinesResponseBody200
mkGetCreditNotesCreditNoteLinesResponseBody200 getCreditNotesCreditNoteLinesResponseBody200Data getCreditNotesCreditNoteLinesResponseBody200HasMore getCreditNotesCreditNoteLinesResponseBody200Url =
  GetCreditNotesCreditNoteLinesResponseBody200
    { getCreditNotesCreditNoteLinesResponseBody200Data = getCreditNotesCreditNoteLinesResponseBody200Data,
      getCreditNotesCreditNoteLinesResponseBody200HasMore = getCreditNotesCreditNoteLinesResponseBody200HasMore,
      getCreditNotesCreditNoteLinesResponseBody200Url = getCreditNotesCreditNoteLinesResponseBody200Url
    }
