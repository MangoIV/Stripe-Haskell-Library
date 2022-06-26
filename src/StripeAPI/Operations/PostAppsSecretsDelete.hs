{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postAppsSecretsDelete
module StripeAPI.Operations.PostAppsSecretsDelete where

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

-- | > POST /v1/apps/secrets/delete
--
-- \<p>Deletes a secret from the secret store by name and scope.\<\/p>
postAppsSecretsDelete ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | The request body to send
  PostAppsSecretsDeleteRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostAppsSecretsDeleteResponse)
postAppsSecretsDelete body =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostAppsSecretsDeleteResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostAppsSecretsDeleteResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Apps'secret
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostAppsSecretsDeleteResponseDefault
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
    (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/apps/secrets/delete") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/apps\/secrets\/delete.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostAppsSecretsDeleteRequestBody = PostAppsSecretsDeleteRequestBody
  { -- | expand: Specifies which fields in the response should be expanded.
    postAppsSecretsDeleteRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | name: A name for the secret that\'s unique within the scope.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAppsSecretsDeleteRequestBodyName :: Data.Text.Internal.Text,
    -- | scope: Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
    postAppsSecretsDeleteRequestBodyScope :: PostAppsSecretsDeleteRequestBodyScope'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostAppsSecretsDeleteRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postAppsSecretsDeleteRequestBodyExpand obj) : ["name" Data.Aeson.Types.ToJSON..= postAppsSecretsDeleteRequestBodyName obj] : ["scope" Data.Aeson.Types.ToJSON..= postAppsSecretsDeleteRequestBodyScope obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postAppsSecretsDeleteRequestBodyExpand obj) : ["name" Data.Aeson.Types.ToJSON..= postAppsSecretsDeleteRequestBodyName obj] : ["scope" Data.Aeson.Types.ToJSON..= postAppsSecretsDeleteRequestBodyScope obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostAppsSecretsDeleteRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAppsSecretsDeleteRequestBody" (\obj -> ((GHC.Base.pure PostAppsSecretsDeleteRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "scope"))

-- | Create a new 'PostAppsSecretsDeleteRequestBody' with all required fields.
mkPostAppsSecretsDeleteRequestBody ::
  -- | 'postAppsSecretsDeleteRequestBodyName'
  Data.Text.Internal.Text ->
  -- | 'postAppsSecretsDeleteRequestBodyScope'
  PostAppsSecretsDeleteRequestBodyScope' ->
  PostAppsSecretsDeleteRequestBody
mkPostAppsSecretsDeleteRequestBody postAppsSecretsDeleteRequestBodyName postAppsSecretsDeleteRequestBodyScope =
  PostAppsSecretsDeleteRequestBody
    { postAppsSecretsDeleteRequestBodyExpand = GHC.Maybe.Nothing,
      postAppsSecretsDeleteRequestBodyName = postAppsSecretsDeleteRequestBodyName,
      postAppsSecretsDeleteRequestBodyScope = postAppsSecretsDeleteRequestBodyScope
    }

-- | Defines the object schema located at @paths.\/v1\/apps\/secrets\/delete.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.scope@ in the specification.
--
-- Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
data PostAppsSecretsDeleteRequestBodyScope' = PostAppsSecretsDeleteRequestBodyScope'
  { -- | type
    postAppsSecretsDeleteRequestBodyScope'Type :: PostAppsSecretsDeleteRequestBodyScope'Type',
    -- | user
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAppsSecretsDeleteRequestBodyScope'User :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostAppsSecretsDeleteRequestBodyScope' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["type" Data.Aeson.Types.ToJSON..= postAppsSecretsDeleteRequestBodyScope'Type obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user" Data.Aeson.Types.ToJSON..=)) (postAppsSecretsDeleteRequestBodyScope'User obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["type" Data.Aeson.Types.ToJSON..= postAppsSecretsDeleteRequestBodyScope'Type obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user" Data.Aeson.Types.ToJSON..=)) (postAppsSecretsDeleteRequestBodyScope'User obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostAppsSecretsDeleteRequestBodyScope' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAppsSecretsDeleteRequestBodyScope'" (\obj -> (GHC.Base.pure PostAppsSecretsDeleteRequestBodyScope' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user"))

-- | Create a new 'PostAppsSecretsDeleteRequestBodyScope'' with all required fields.
mkPostAppsSecretsDeleteRequestBodyScope' ::
  -- | 'postAppsSecretsDeleteRequestBodyScope'Type'
  PostAppsSecretsDeleteRequestBodyScope'Type' ->
  PostAppsSecretsDeleteRequestBodyScope'
mkPostAppsSecretsDeleteRequestBodyScope' postAppsSecretsDeleteRequestBodyScope'Type =
  PostAppsSecretsDeleteRequestBodyScope'
    { postAppsSecretsDeleteRequestBodyScope'Type = postAppsSecretsDeleteRequestBodyScope'Type,
      postAppsSecretsDeleteRequestBodyScope'User = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @paths.\/v1\/apps\/secrets\/delete.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.scope.properties.type@ in the specification.
data PostAppsSecretsDeleteRequestBodyScope'Type'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostAppsSecretsDeleteRequestBodyScope'Type'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostAppsSecretsDeleteRequestBodyScope'Type'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"account"@
    PostAppsSecretsDeleteRequestBodyScope'Type'EnumAccount
  | -- | Represents the JSON value @"user"@
    PostAppsSecretsDeleteRequestBodyScope'Type'EnumUser
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostAppsSecretsDeleteRequestBodyScope'Type' where
  toJSON (PostAppsSecretsDeleteRequestBodyScope'Type'Other val) = val
  toJSON (PostAppsSecretsDeleteRequestBodyScope'Type'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostAppsSecretsDeleteRequestBodyScope'Type'EnumAccount) = "account"
  toJSON (PostAppsSecretsDeleteRequestBodyScope'Type'EnumUser) = "user"

instance Data.Aeson.Types.FromJSON.FromJSON PostAppsSecretsDeleteRequestBodyScope'Type' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "account" -> PostAppsSecretsDeleteRequestBodyScope'Type'EnumAccount
            | val GHC.Classes.== "user" -> PostAppsSecretsDeleteRequestBodyScope'Type'EnumUser
            | GHC.Base.otherwise -> PostAppsSecretsDeleteRequestBodyScope'Type'Other val
      )

-- | Represents a response of the operation 'postAppsSecretsDelete'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAppsSecretsDeleteResponseError' is used.
data PostAppsSecretsDeleteResponse
  = -- | Means either no matching case available or a parse error
    PostAppsSecretsDeleteResponseError GHC.Base.String
  | -- | Successful response.
    PostAppsSecretsDeleteResponse200 Apps'secret
  | -- | Error response.
    PostAppsSecretsDeleteResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
