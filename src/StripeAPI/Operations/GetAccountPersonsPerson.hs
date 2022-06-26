{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getAccountPersonsPerson
module StripeAPI.Operations.GetAccountPersonsPerson where

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

-- | > GET /v1/account/persons/{person}
--
-- \<p>Retrieves an existing person.\<\/p>
getAccountPersonsPerson ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetAccountPersonsPersonParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetAccountPersonsPersonResponse)
getAccountPersonsPerson parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetAccountPersonsPersonResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetAccountPersonsPersonResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Person
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetAccountPersonsPersonResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/account/persons/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getAccountPersonsPersonParametersPathPerson parameters))) GHC.Base.++ ""))) [StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getAccountPersonsPersonParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True])

-- | Defines the object schema located at @paths.\/v1\/account\/persons\/{person}.GET.parameters@ in the specification.
data GetAccountPersonsPersonParameters = GetAccountPersonsPersonParameters
  { -- | pathPerson: Represents the parameter named \'person\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getAccountPersonsPersonParametersPathPerson :: Data.Text.Internal.Text,
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getAccountPersonsPersonParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetAccountPersonsPersonParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathPerson" Data.Aeson.Types.ToJSON..= getAccountPersonsPersonParametersPathPerson obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getAccountPersonsPersonParametersQueryExpand obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathPerson" Data.Aeson.Types.ToJSON..= getAccountPersonsPersonParametersPathPerson obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getAccountPersonsPersonParametersQueryExpand obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetAccountPersonsPersonParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountPersonsPersonParameters" (\obj -> (GHC.Base.pure GetAccountPersonsPersonParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathPerson")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand"))

-- | Create a new 'GetAccountPersonsPersonParameters' with all required fields.
mkGetAccountPersonsPersonParameters ::
  -- | 'getAccountPersonsPersonParametersPathPerson'
  Data.Text.Internal.Text ->
  GetAccountPersonsPersonParameters
mkGetAccountPersonsPersonParameters getAccountPersonsPersonParametersPathPerson =
  GetAccountPersonsPersonParameters
    { getAccountPersonsPersonParametersPathPerson = getAccountPersonsPersonParametersPathPerson,
      getAccountPersonsPersonParametersQueryExpand = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getAccountPersonsPerson'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetAccountPersonsPersonResponseError' is used.
data GetAccountPersonsPersonResponse
  = -- | Means either no matching case available or a parse error
    GetAccountPersonsPersonResponseError GHC.Base.String
  | -- | Successful response.
    GetAccountPersonsPersonResponse200 Person
  | -- | Error response.
    GetAccountPersonsPersonResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
