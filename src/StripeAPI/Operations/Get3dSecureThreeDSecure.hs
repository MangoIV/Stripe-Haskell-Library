{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation get3dSecureThreeDSecure
module StripeAPI.Operations.Get3dSecureThreeDSecure where

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

-- | > GET /v1/3d_secure/{three_d_secure}
--
-- \<p>Retrieves a 3D Secure object.\<\/p>
get3dSecureThreeDSecure ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  Get3dSecureThreeDSecureParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Get3dSecureThreeDSecureResponse)
get3dSecureThreeDSecure parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either Get3dSecureThreeDSecureResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   Get3dSecureThreeDSecureResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ThreeDSecure
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   Get3dSecureThreeDSecureResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/3d_secure/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (get3dSecureThreeDSecureParametersPathThreeDSecure parameters))) GHC.Base.++ ""))) [StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get3dSecureThreeDSecureParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True])

-- | Defines the object schema located at @paths.\/v1\/3d_secure\/{three_d_secure}.GET.parameters@ in the specification.
data Get3dSecureThreeDSecureParameters = Get3dSecureThreeDSecureParameters
  { -- | pathThree_d_secure: Represents the parameter named \'three_d_secure\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    get3dSecureThreeDSecureParametersPathThreeDSecure :: Data.Text.Internal.Text,
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    get3dSecureThreeDSecureParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Get3dSecureThreeDSecureParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("pathThree_d_secure" Data.Aeson.Types.ToJSON..= get3dSecureThreeDSecureParametersPathThreeDSecure obj : "queryExpand" Data.Aeson.Types.ToJSON..= get3dSecureThreeDSecureParametersQueryExpand obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathThree_d_secure" Data.Aeson.Types.ToJSON..= get3dSecureThreeDSecureParametersPathThreeDSecure obj) GHC.Base.<> ("queryExpand" Data.Aeson.Types.ToJSON..= get3dSecureThreeDSecureParametersQueryExpand obj))

instance Data.Aeson.Types.FromJSON.FromJSON Get3dSecureThreeDSecureParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Get3dSecureThreeDSecureParameters" (\obj -> (GHC.Base.pure Get3dSecureThreeDSecureParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathThree_d_secure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand"))

-- | Create a new 'Get3dSecureThreeDSecureParameters' with all required fields.
mkGet3dSecureThreeDSecureParameters ::
  -- | 'get3dSecureThreeDSecureParametersPathThreeDSecure'
  Data.Text.Internal.Text ->
  Get3dSecureThreeDSecureParameters
mkGet3dSecureThreeDSecureParameters get3dSecureThreeDSecureParametersPathThreeDSecure =
  Get3dSecureThreeDSecureParameters
    { get3dSecureThreeDSecureParametersPathThreeDSecure = get3dSecureThreeDSecureParametersPathThreeDSecure,
      get3dSecureThreeDSecureParametersQueryExpand = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'get3dSecureThreeDSecure'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Get3dSecureThreeDSecureResponseError' is used.
data Get3dSecureThreeDSecureResponse
  = -- | Means either no matching case available or a parse error
    Get3dSecureThreeDSecureResponseError GHC.Base.String
  | -- | Successful response.
    Get3dSecureThreeDSecureResponse200 ThreeDSecure
  | -- | Error response.
    Get3dSecureThreeDSecureResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
