{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postCustomersCustomerBankAccountsIdVerify
module StripeAPI.Operations.PostCustomersCustomerBankAccountsIdVerify where

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

-- | > POST /v1/customers/{customer}/bank_accounts/{id}/verify
--
-- \<p>Verify a specified bank account for a given customer.\<\/p>
postCustomersCustomerBankAccountsIdVerify ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostCustomersCustomerBankAccountsIdVerifyParameters ->
  -- | The request body to send
  GHC.Maybe.Maybe PostCustomersCustomerBankAccountsIdVerifyRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostCustomersCustomerBankAccountsIdVerifyResponse)
postCustomersCustomerBankAccountsIdVerify
  parameters
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostCustomersCustomerBankAccountsIdVerifyResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostCustomersCustomerBankAccountsIdVerifyResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              BankAccount
                                                        )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostCustomersCustomerBankAccountsIdVerifyResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (postCustomersCustomerBankAccountsIdVerifyParametersPathCustomer parameters))) GHC.Base.++ ("/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (postCustomersCustomerBankAccountsIdVerifyParametersPathId parameters))) GHC.Base.++ "/verify"))))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/bank_accounts\/{id}\/verify.POST.parameters@ in the specification.
data PostCustomersCustomerBankAccountsIdVerifyParameters = PostCustomersCustomerBankAccountsIdVerifyParameters
  { -- | pathCustomer: Represents the parameter named \'customer\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postCustomersCustomerBankAccountsIdVerifyParametersPathCustomer :: Data.Text.Internal.Text,
    -- | pathId: Represents the parameter named \'id\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postCustomersCustomerBankAccountsIdVerifyParametersPathId :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostCustomersCustomerBankAccountsIdVerifyParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathCustomer" Data.Aeson.Types.ToJSON..= postCustomersCustomerBankAccountsIdVerifyParametersPathCustomer obj] : ["pathId" Data.Aeson.Types.ToJSON..= postCustomersCustomerBankAccountsIdVerifyParametersPathId obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathCustomer" Data.Aeson.Types.ToJSON..= postCustomersCustomerBankAccountsIdVerifyParametersPathCustomer obj] : ["pathId" Data.Aeson.Types.ToJSON..= postCustomersCustomerBankAccountsIdVerifyParametersPathId obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBankAccountsIdVerifyParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBankAccountsIdVerifyParameters" (\obj -> (GHC.Base.pure PostCustomersCustomerBankAccountsIdVerifyParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathCustomer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathId"))

-- | Create a new 'PostCustomersCustomerBankAccountsIdVerifyParameters' with all required fields.
mkPostCustomersCustomerBankAccountsIdVerifyParameters ::
  -- | 'postCustomersCustomerBankAccountsIdVerifyParametersPathCustomer'
  Data.Text.Internal.Text ->
  -- | 'postCustomersCustomerBankAccountsIdVerifyParametersPathId'
  Data.Text.Internal.Text ->
  PostCustomersCustomerBankAccountsIdVerifyParameters
mkPostCustomersCustomerBankAccountsIdVerifyParameters postCustomersCustomerBankAccountsIdVerifyParametersPathCustomer postCustomersCustomerBankAccountsIdVerifyParametersPathId =
  PostCustomersCustomerBankAccountsIdVerifyParameters
    { postCustomersCustomerBankAccountsIdVerifyParametersPathCustomer = postCustomersCustomerBankAccountsIdVerifyParametersPathCustomer,
      postCustomersCustomerBankAccountsIdVerifyParametersPathId = postCustomersCustomerBankAccountsIdVerifyParametersPathId
    }

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/bank_accounts\/{id}\/verify.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostCustomersCustomerBankAccountsIdVerifyRequestBody = PostCustomersCustomerBankAccountsIdVerifyRequestBody
  { -- | amounts: Two positive integers, in *cents*, equal to the values of the microdeposits sent to the bank account.
    postCustomersCustomerBankAccountsIdVerifyRequestBodyAmounts :: (GHC.Maybe.Maybe ([GHC.Types.Int])),
    -- | expand: Specifies which fields in the response should be expanded.
    postCustomersCustomerBankAccountsIdVerifyRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostCustomersCustomerBankAccountsIdVerifyRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amounts" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerBankAccountsIdVerifyRequestBodyAmounts obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerBankAccountsIdVerifyRequestBodyExpand obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amounts" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerBankAccountsIdVerifyRequestBodyAmounts obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerBankAccountsIdVerifyRequestBodyExpand obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBankAccountsIdVerifyRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBankAccountsIdVerifyRequestBody" (\obj -> (GHC.Base.pure PostCustomersCustomerBankAccountsIdVerifyRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amounts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand"))

-- | Create a new 'PostCustomersCustomerBankAccountsIdVerifyRequestBody' with all required fields.
mkPostCustomersCustomerBankAccountsIdVerifyRequestBody :: PostCustomersCustomerBankAccountsIdVerifyRequestBody
mkPostCustomersCustomerBankAccountsIdVerifyRequestBody =
  PostCustomersCustomerBankAccountsIdVerifyRequestBody
    { postCustomersCustomerBankAccountsIdVerifyRequestBodyAmounts = GHC.Maybe.Nothing,
      postCustomersCustomerBankAccountsIdVerifyRequestBodyExpand = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'postCustomersCustomerBankAccountsIdVerify'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCustomersCustomerBankAccountsIdVerifyResponseError' is used.
data PostCustomersCustomerBankAccountsIdVerifyResponse
  = -- | Means either no matching case available or a parse error
    PostCustomersCustomerBankAccountsIdVerifyResponseError GHC.Base.String
  | -- | Successful response.
    PostCustomersCustomerBankAccountsIdVerifyResponse200 BankAccount
  | -- | Error response.
    PostCustomersCustomerBankAccountsIdVerifyResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
