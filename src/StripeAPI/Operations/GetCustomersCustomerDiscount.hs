{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getCustomersCustomerDiscount
module StripeAPI.Operations.GetCustomersCustomerDiscount where

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

-- | > GET /v1/customers/{customer}/discount
getCustomersCustomerDiscount ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetCustomersCustomerDiscountParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetCustomersCustomerDiscountResponse)
getCustomersCustomerDiscount parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetCustomersCustomerDiscountResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetCustomersCustomerDiscountResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Discount
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetCustomersCustomerDiscountResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getCustomersCustomerDiscountParametersPathCustomer parameters))) GHC.Base.++ "/discount"))) [StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerDiscountParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True])

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/discount.GET.parameters@ in the specification.
data GetCustomersCustomerDiscountParameters = GetCustomersCustomerDiscountParameters
  { -- | pathCustomer: Represents the parameter named \'customer\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getCustomersCustomerDiscountParametersPathCustomer :: Data.Text.Internal.Text,
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getCustomersCustomerDiscountParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetCustomersCustomerDiscountParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathCustomer" Data.Aeson.Types.ToJSON..= getCustomersCustomerDiscountParametersPathCustomer obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerDiscountParametersQueryExpand obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathCustomer" Data.Aeson.Types.ToJSON..= getCustomersCustomerDiscountParametersPathCustomer obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerDiscountParametersQueryExpand obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerDiscountParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerDiscountParameters" (\obj -> (GHC.Base.pure GetCustomersCustomerDiscountParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathCustomer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand"))

-- | Create a new 'GetCustomersCustomerDiscountParameters' with all required fields.
mkGetCustomersCustomerDiscountParameters ::
  -- | 'getCustomersCustomerDiscountParametersPathCustomer'
  Data.Text.Internal.Text ->
  GetCustomersCustomerDiscountParameters
mkGetCustomersCustomerDiscountParameters getCustomersCustomerDiscountParametersPathCustomer =
  GetCustomersCustomerDiscountParameters
    { getCustomersCustomerDiscountParametersPathCustomer = getCustomersCustomerDiscountParametersPathCustomer,
      getCustomersCustomerDiscountParametersQueryExpand = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getCustomersCustomerDiscount'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetCustomersCustomerDiscountResponseError' is used.
data GetCustomersCustomerDiscountResponse
  = -- | Means either no matching case available or a parse error
    GetCustomersCustomerDiscountResponseError GHC.Base.String
  | -- | Successful response.
    GetCustomersCustomerDiscountResponse200 Discount
  | -- | Error response.
    GetCustomersCustomerDiscountResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
