{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getPromotionCodesPromotionCode
module StripeAPI.Operations.GetPromotionCodesPromotionCode where

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

-- | > GET /v1/promotion_codes/{promotion_code}
--
-- \<p>Retrieves the promotion code with the given ID. In order to retrieve a promotion code by the customer-facing \<code>code\<\/code> use \<a href=\"\/docs\/api\/promotion_codes\/list\">list\<\/a> with the desired \<code>code\<\/code>.\<\/p>
getPromotionCodesPromotionCode ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetPromotionCodesPromotionCodeParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetPromotionCodesPromotionCodeResponse)
getPromotionCodesPromotionCode parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetPromotionCodesPromotionCodeResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetPromotionCodesPromotionCodeResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            PromotionCode
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetPromotionCodesPromotionCodeResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/promotion_codes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getPromotionCodesPromotionCodeParametersPathPromotionCode parameters))) GHC.Base.++ ""))) [StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPromotionCodesPromotionCodeParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True])

-- | Defines the object schema located at @paths.\/v1\/promotion_codes\/{promotion_code}.GET.parameters@ in the specification.
data GetPromotionCodesPromotionCodeParameters = GetPromotionCodesPromotionCodeParameters
  { -- | pathPromotion_code: Represents the parameter named \'promotion_code\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getPromotionCodesPromotionCodeParametersPathPromotionCode :: Data.Text.Internal.Text,
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getPromotionCodesPromotionCodeParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetPromotionCodesPromotionCodeParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathPromotion_code" Data.Aeson.Types.ToJSON..= getPromotionCodesPromotionCodeParametersPathPromotionCode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getPromotionCodesPromotionCodeParametersQueryExpand obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathPromotion_code" Data.Aeson.Types.ToJSON..= getPromotionCodesPromotionCodeParametersPathPromotionCode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getPromotionCodesPromotionCodeParametersQueryExpand obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetPromotionCodesPromotionCodeParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPromotionCodesPromotionCodeParameters" (\obj -> (GHC.Base.pure GetPromotionCodesPromotionCodeParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathPromotion_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand"))

-- | Create a new 'GetPromotionCodesPromotionCodeParameters' with all required fields.
mkGetPromotionCodesPromotionCodeParameters ::
  -- | 'getPromotionCodesPromotionCodeParametersPathPromotionCode'
  Data.Text.Internal.Text ->
  GetPromotionCodesPromotionCodeParameters
mkGetPromotionCodesPromotionCodeParameters getPromotionCodesPromotionCodeParametersPathPromotionCode =
  GetPromotionCodesPromotionCodeParameters
    { getPromotionCodesPromotionCodeParametersPathPromotionCode = getPromotionCodesPromotionCodeParametersPathPromotionCode,
      getPromotionCodesPromotionCodeParametersQueryExpand = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getPromotionCodesPromotionCode'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetPromotionCodesPromotionCodeResponseError' is used.
data GetPromotionCodesPromotionCodeResponse
  = -- | Means either no matching case available or a parse error
    GetPromotionCodesPromotionCodeResponseError GHC.Base.String
  | -- | Successful response.
    GetPromotionCodesPromotionCodeResponse200 PromotionCode
  | -- | Error response.
    GetPromotionCodesPromotionCodeResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
