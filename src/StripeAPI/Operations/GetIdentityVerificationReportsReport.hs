{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getIdentityVerificationReportsReport
module StripeAPI.Operations.GetIdentityVerificationReportsReport where

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

-- | > GET /v1/identity/verification_reports/{report}
--
-- \<p>Retrieves an existing VerificationReport\<\/p>
getIdentityVerificationReportsReport ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetIdentityVerificationReportsReportParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response GetIdentityVerificationReportsReportResponse)
getIdentityVerificationReportsReport parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetIdentityVerificationReportsReportResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetIdentityVerificationReportsReportResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Identity'verificationReport
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetIdentityVerificationReportsReportResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/identity/verification_reports/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getIdentityVerificationReportsReportParametersPathReport parameters))) GHC.Base.++ ""))) [StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIdentityVerificationReportsReportParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True])

-- | Defines the object schema located at @paths.\/v1\/identity\/verification_reports\/{report}.GET.parameters@ in the specification.
data GetIdentityVerificationReportsReportParameters = GetIdentityVerificationReportsReportParameters
  { -- | pathReport: Represents the parameter named \'report\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getIdentityVerificationReportsReportParametersPathReport :: Data.Text.Internal.Text,
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getIdentityVerificationReportsReportParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetIdentityVerificationReportsReportParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("pathReport" Data.Aeson.Types.ToJSON..= getIdentityVerificationReportsReportParametersPathReport obj : "queryExpand" Data.Aeson.Types.ToJSON..= getIdentityVerificationReportsReportParametersQueryExpand obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathReport" Data.Aeson.Types.ToJSON..= getIdentityVerificationReportsReportParametersPathReport obj) GHC.Base.<> ("queryExpand" Data.Aeson.Types.ToJSON..= getIdentityVerificationReportsReportParametersQueryExpand obj))

instance Data.Aeson.Types.FromJSON.FromJSON GetIdentityVerificationReportsReportParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIdentityVerificationReportsReportParameters" (\obj -> (GHC.Base.pure GetIdentityVerificationReportsReportParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathReport")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand"))

-- | Create a new 'GetIdentityVerificationReportsReportParameters' with all required fields.
mkGetIdentityVerificationReportsReportParameters ::
  -- | 'getIdentityVerificationReportsReportParametersPathReport'
  Data.Text.Internal.Text ->
  GetIdentityVerificationReportsReportParameters
mkGetIdentityVerificationReportsReportParameters getIdentityVerificationReportsReportParametersPathReport =
  GetIdentityVerificationReportsReportParameters
    { getIdentityVerificationReportsReportParametersPathReport = getIdentityVerificationReportsReportParametersPathReport,
      getIdentityVerificationReportsReportParametersQueryExpand = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getIdentityVerificationReportsReport'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetIdentityVerificationReportsReportResponseError' is used.
data GetIdentityVerificationReportsReportResponse
  = -- | Means either no matching case available or a parse error
    GetIdentityVerificationReportsReportResponseError GHC.Base.String
  | -- | Successful response.
    GetIdentityVerificationReportsReportResponse200 Identity'verificationReport
  | -- | Error response.
    GetIdentityVerificationReportsReportResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
