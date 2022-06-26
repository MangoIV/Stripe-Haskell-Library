{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postQuotesQuoteFinalize
module StripeAPI.Operations.PostQuotesQuoteFinalize where

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

-- | > POST /v1/quotes/{quote}/finalize
--
-- \<p>Finalizes the quote.\<\/p>
postQuotesQuoteFinalize ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | quote | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostQuotesQuoteFinalizeRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostQuotesQuoteFinalizeResponse)
postQuotesQuoteFinalize
  quote
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostQuotesQuoteFinalizeResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostQuotesQuoteFinalizeResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Quote
                                                        )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostQuotesQuoteFinalizeResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/quotes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel quote)) GHC.Base.++ "/finalize"))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/quotes\/{quote}\/finalize.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostQuotesQuoteFinalizeRequestBody = PostQuotesQuoteFinalizeRequestBody
  { -- | expand: Specifies which fields in the response should be expanded.
    postQuotesQuoteFinalizeRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | expires_at: A future timestamp on which the quote will be canceled if in \`open\` or \`draft\` status. Measured in seconds since the Unix epoch.
    postQuotesQuoteFinalizeRequestBodyExpiresAt :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostQuotesQuoteFinalizeRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postQuotesQuoteFinalizeRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (postQuotesQuoteFinalizeRequestBodyExpiresAt obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postQuotesQuoteFinalizeRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (postQuotesQuoteFinalizeRequestBodyExpiresAt obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostQuotesQuoteFinalizeRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostQuotesQuoteFinalizeRequestBody" (\obj -> (GHC.Base.pure PostQuotesQuoteFinalizeRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expires_at"))

-- | Create a new 'PostQuotesQuoteFinalizeRequestBody' with all required fields.
mkPostQuotesQuoteFinalizeRequestBody :: PostQuotesQuoteFinalizeRequestBody
mkPostQuotesQuoteFinalizeRequestBody =
  PostQuotesQuoteFinalizeRequestBody
    { postQuotesQuoteFinalizeRequestBodyExpand = GHC.Maybe.Nothing,
      postQuotesQuoteFinalizeRequestBodyExpiresAt = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'postQuotesQuoteFinalize'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostQuotesQuoteFinalizeResponseError' is used.
data PostQuotesQuoteFinalizeResponse
  = -- | Means either no matching case available or a parse error
    PostQuotesQuoteFinalizeResponseError GHC.Base.String
  | -- | Successful response.
    PostQuotesQuoteFinalizeResponse200 Quote
  | -- | Error response.
    PostQuotesQuoteFinalizeResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
