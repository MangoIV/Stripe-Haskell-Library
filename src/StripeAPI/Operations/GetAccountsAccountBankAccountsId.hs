{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getAccountsAccountBankAccountsId
module StripeAPI.Operations.GetAccountsAccountBankAccountsId where

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

-- | > GET /v1/accounts/{account}/bank_accounts/{id}
--
-- \<p>Retrieve a specified external account for a given account.\<\/p>
getAccountsAccountBankAccountsId ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetAccountsAccountBankAccountsIdParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response GetAccountsAccountBankAccountsIdResponse)
getAccountsAccountBankAccountsId parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetAccountsAccountBankAccountsIdResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetAccountsAccountBankAccountsIdResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ExternalAccount
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetAccountsAccountBankAccountsIdResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getAccountsAccountBankAccountsIdParametersPathAccount parameters))) GHC.Base.++ ("/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getAccountsAccountBankAccountsIdParametersPathId parameters))) GHC.Base.++ ""))))) [StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getAccountsAccountBankAccountsIdParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True])

-- | Defines the object schema located at @paths.\/v1\/accounts\/{account}\/bank_accounts\/{id}.GET.parameters@ in the specification.
data GetAccountsAccountBankAccountsIdParameters = GetAccountsAccountBankAccountsIdParameters
  { -- | pathAccount: Represents the parameter named \'account\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getAccountsAccountBankAccountsIdParametersPathAccount :: Data.Text.Internal.Text,
    -- | pathId: Represents the parameter named \'id\'
    getAccountsAccountBankAccountsIdParametersPathId :: Data.Text.Internal.Text,
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getAccountsAccountBankAccountsIdParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetAccountsAccountBankAccountsIdParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("pathAccount" Data.Aeson.Types.ToJSON..= getAccountsAccountBankAccountsIdParametersPathAccount obj : "pathId" Data.Aeson.Types.ToJSON..= getAccountsAccountBankAccountsIdParametersPathId obj : "queryExpand" Data.Aeson.Types.ToJSON..= getAccountsAccountBankAccountsIdParametersQueryExpand obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathAccount" Data.Aeson.Types.ToJSON..= getAccountsAccountBankAccountsIdParametersPathAccount obj) GHC.Base.<> (("pathId" Data.Aeson.Types.ToJSON..= getAccountsAccountBankAccountsIdParametersPathId obj) GHC.Base.<> ("queryExpand" Data.Aeson.Types.ToJSON..= getAccountsAccountBankAccountsIdParametersQueryExpand obj)))

instance Data.Aeson.Types.FromJSON.FromJSON GetAccountsAccountBankAccountsIdParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountsAccountBankAccountsIdParameters" (\obj -> ((GHC.Base.pure GetAccountsAccountBankAccountsIdParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAccount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand"))

-- | Create a new 'GetAccountsAccountBankAccountsIdParameters' with all required fields.
mkGetAccountsAccountBankAccountsIdParameters ::
  -- | 'getAccountsAccountBankAccountsIdParametersPathAccount'
  Data.Text.Internal.Text ->
  -- | 'getAccountsAccountBankAccountsIdParametersPathId'
  Data.Text.Internal.Text ->
  GetAccountsAccountBankAccountsIdParameters
mkGetAccountsAccountBankAccountsIdParameters getAccountsAccountBankAccountsIdParametersPathAccount getAccountsAccountBankAccountsIdParametersPathId =
  GetAccountsAccountBankAccountsIdParameters
    { getAccountsAccountBankAccountsIdParametersPathAccount = getAccountsAccountBankAccountsIdParametersPathAccount,
      getAccountsAccountBankAccountsIdParametersPathId = getAccountsAccountBankAccountsIdParametersPathId,
      getAccountsAccountBankAccountsIdParametersQueryExpand = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getAccountsAccountBankAccountsId'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetAccountsAccountBankAccountsIdResponseError' is used.
data GetAccountsAccountBankAccountsIdResponse
  = -- | Means either no matching case available or a parse error
    GetAccountsAccountBankAccountsIdResponseError GHC.Base.String
  | -- | Successful response.
    GetAccountsAccountBankAccountsIdResponse200 ExternalAccount
  | -- | Error response.
    GetAccountsAccountBankAccountsIdResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
