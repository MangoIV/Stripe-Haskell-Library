{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getTreasuryOutboundPaymentsId
module StripeAPI.Operations.GetTreasuryOutboundPaymentsId where

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

-- | > GET /v1/treasury/outbound_payments/{id}
--
-- \<p>Retrieves the details of an existing OutboundPayment by passing the unique OutboundPayment ID from either the OutboundPayment creation request or OutboundPayment list.\<\/p>
getTreasuryOutboundPaymentsId ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetTreasuryOutboundPaymentsIdParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetTreasuryOutboundPaymentsIdResponse)
getTreasuryOutboundPaymentsId parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetTreasuryOutboundPaymentsIdResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetTreasuryOutboundPaymentsIdResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Treasury'outboundPayment
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetTreasuryOutboundPaymentsIdResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/treasury/outbound_payments/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getTreasuryOutboundPaymentsIdParametersPathId parameters))) GHC.Base.++ ""))) [StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryOutboundPaymentsIdParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True])

-- | Defines the object schema located at @paths.\/v1\/treasury\/outbound_payments\/{id}.GET.parameters@ in the specification.
data GetTreasuryOutboundPaymentsIdParameters = GetTreasuryOutboundPaymentsIdParameters
  { -- | pathId: Represents the parameter named \'id\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getTreasuryOutboundPaymentsIdParametersPathId :: Data.Text.Internal.Text,
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getTreasuryOutboundPaymentsIdParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryOutboundPaymentsIdParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathId" Data.Aeson.Types.ToJSON..= getTreasuryOutboundPaymentsIdParametersPathId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundPaymentsIdParametersQueryExpand obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathId" Data.Aeson.Types.ToJSON..= getTreasuryOutboundPaymentsIdParametersPathId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundPaymentsIdParametersQueryExpand obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryOutboundPaymentsIdParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTreasuryOutboundPaymentsIdParameters" (\obj -> (GHC.Base.pure GetTreasuryOutboundPaymentsIdParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand"))

-- | Create a new 'GetTreasuryOutboundPaymentsIdParameters' with all required fields.
mkGetTreasuryOutboundPaymentsIdParameters ::
  -- | 'getTreasuryOutboundPaymentsIdParametersPathId'
  Data.Text.Internal.Text ->
  GetTreasuryOutboundPaymentsIdParameters
mkGetTreasuryOutboundPaymentsIdParameters getTreasuryOutboundPaymentsIdParametersPathId =
  GetTreasuryOutboundPaymentsIdParameters
    { getTreasuryOutboundPaymentsIdParametersPathId = getTreasuryOutboundPaymentsIdParametersPathId,
      getTreasuryOutboundPaymentsIdParametersQueryExpand = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getTreasuryOutboundPaymentsId'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTreasuryOutboundPaymentsIdResponseError' is used.
data GetTreasuryOutboundPaymentsIdResponse
  = -- | Means either no matching case available or a parse error
    GetTreasuryOutboundPaymentsIdResponseError GHC.Base.String
  | -- | Successful response.
    GetTreasuryOutboundPaymentsIdResponse200 Treasury'outboundPayment
  | -- | Error response.
    GetTreasuryOutboundPaymentsIdResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
