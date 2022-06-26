{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getTerminalReadersReader
module StripeAPI.Operations.GetTerminalReadersReader where

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

-- | > GET /v1/terminal/readers/{reader}
--
-- \<p>Retrieves a \<code>Reader\<\/code> object.\<\/p>
getTerminalReadersReader ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetTerminalReadersReaderParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetTerminalReadersReaderResponse)
getTerminalReadersReader parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetTerminalReadersReaderResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetTerminalReadersReaderResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetTerminalReadersReaderResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetTerminalReadersReaderResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/terminal/readers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getTerminalReadersReaderParametersPathReader parameters))) GHC.Base.++ ""))) [StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTerminalReadersReaderParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True])

-- | Defines the object schema located at @paths.\/v1\/terminal\/readers\/{reader}.GET.parameters@ in the specification.
data GetTerminalReadersReaderParameters = GetTerminalReadersReaderParameters
  { -- | pathReader: Represents the parameter named \'reader\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getTerminalReadersReaderParametersPathReader :: Data.Text.Internal.Text,
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getTerminalReadersReaderParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetTerminalReadersReaderParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathReader" Data.Aeson.Types.ToJSON..= getTerminalReadersReaderParametersPathReader obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderParametersQueryExpand obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathReader" Data.Aeson.Types.ToJSON..= getTerminalReadersReaderParametersPathReader obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderParametersQueryExpand obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetTerminalReadersReaderParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTerminalReadersReaderParameters" (\obj -> (GHC.Base.pure GetTerminalReadersReaderParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathReader")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand"))

-- | Create a new 'GetTerminalReadersReaderParameters' with all required fields.
mkGetTerminalReadersReaderParameters ::
  -- | 'getTerminalReadersReaderParametersPathReader'
  Data.Text.Internal.Text ->
  GetTerminalReadersReaderParameters
mkGetTerminalReadersReaderParameters getTerminalReadersReaderParametersPathReader =
  GetTerminalReadersReaderParameters
    { getTerminalReadersReaderParametersPathReader = getTerminalReadersReaderParametersPathReader,
      getTerminalReadersReaderParametersQueryExpand = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getTerminalReadersReader'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTerminalReadersReaderResponseError' is used.
data GetTerminalReadersReaderResponse
  = -- | Means either no matching case available or a parse error
    GetTerminalReadersReaderResponseError GHC.Base.String
  | -- | Successful response.
    GetTerminalReadersReaderResponse200 GetTerminalReadersReaderResponseBody200
  | -- | Error response.
    GetTerminalReadersReaderResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/terminal\/readers\/{reader}.GET.responses.200.content.application\/json.schema.anyOf@ in the specification.
data GetTerminalReadersReaderResponseBody200 = GetTerminalReadersReaderResponseBody200
  { -- | action: The most recent action performed by the reader.
    getTerminalReadersReaderResponseBody200Action :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GetTerminalReadersReaderResponseBody200Action'NonNullable)),
    -- | deleted: Always true for a deleted object
    getTerminalReadersReaderResponseBody200Deleted :: (GHC.Maybe.Maybe GetTerminalReadersReaderResponseBody200Deleted'),
    -- | device_sw_version: The current software version of the reader.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getTerminalReadersReaderResponseBody200DeviceSwVersion :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | device_type: Type of reader, one of \`bbpos_wisepad3\`, \`stripe_m2\`, \`bbpos_chipper2x\`, \`bbpos_wisepos_e\`, \`verifone_P400\`, or \`simulated_wisepos_e\`.
    getTerminalReadersReaderResponseBody200DeviceType :: (GHC.Maybe.Maybe GetTerminalReadersReaderResponseBody200DeviceType'),
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getTerminalReadersReaderResponseBody200Id :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | ip_address: The local IP address of the reader.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getTerminalReadersReaderResponseBody200IpAddress :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | label: Custom label given to the reader for easier identification.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getTerminalReadersReaderResponseBody200Label :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    getTerminalReadersReaderResponseBody200Livemode :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | location: The location identifier of the reader.
    getTerminalReadersReaderResponseBody200Location :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GetTerminalReadersReaderResponseBody200Location'NonNullableVariants)),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    getTerminalReadersReaderResponseBody200Metadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | object: String representing the object\'s type. Objects of the same type share the same value.
    getTerminalReadersReaderResponseBody200Object :: (GHC.Maybe.Maybe GetTerminalReadersReaderResponseBody200Object'),
    -- | serial_number: Serial number of the reader.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getTerminalReadersReaderResponseBody200SerialNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | status: The networking status of the reader.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getTerminalReadersReaderResponseBody200Status :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetTerminalReadersReaderResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("action" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Action obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("deleted" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Deleted obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("device_sw_version" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200DeviceSwVersion obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("device_type" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200DeviceType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ip_address" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200IpAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("label" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Label obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("livemode" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Livemode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("location" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Location obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Metadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Object obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("serial_number" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200SerialNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Status obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("action" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Action obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("deleted" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Deleted obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("device_sw_version" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200DeviceSwVersion obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("device_type" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200DeviceType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ip_address" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200IpAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("label" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Label obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("livemode" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Livemode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("location" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Location obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Metadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Object obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("serial_number" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200SerialNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Status obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetTerminalReadersReaderResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTerminalReadersReaderResponseBody200" (\obj -> ((((((((((((GHC.Base.pure GetTerminalReadersReaderResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "action")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "device_sw_version")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "device_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "ip_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "location")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "serial_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "status"))

-- | Create a new 'GetTerminalReadersReaderResponseBody200' with all required fields.
mkGetTerminalReadersReaderResponseBody200 :: GetTerminalReadersReaderResponseBody200
mkGetTerminalReadersReaderResponseBody200 =
  GetTerminalReadersReaderResponseBody200
    { getTerminalReadersReaderResponseBody200Action = GHC.Maybe.Nothing,
      getTerminalReadersReaderResponseBody200Deleted = GHC.Maybe.Nothing,
      getTerminalReadersReaderResponseBody200DeviceSwVersion = GHC.Maybe.Nothing,
      getTerminalReadersReaderResponseBody200DeviceType = GHC.Maybe.Nothing,
      getTerminalReadersReaderResponseBody200Id = GHC.Maybe.Nothing,
      getTerminalReadersReaderResponseBody200IpAddress = GHC.Maybe.Nothing,
      getTerminalReadersReaderResponseBody200Label = GHC.Maybe.Nothing,
      getTerminalReadersReaderResponseBody200Livemode = GHC.Maybe.Nothing,
      getTerminalReadersReaderResponseBody200Location = GHC.Maybe.Nothing,
      getTerminalReadersReaderResponseBody200Metadata = GHC.Maybe.Nothing,
      getTerminalReadersReaderResponseBody200Object = GHC.Maybe.Nothing,
      getTerminalReadersReaderResponseBody200SerialNumber = GHC.Maybe.Nothing,
      getTerminalReadersReaderResponseBody200Status = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/terminal\/readers\/{reader}.GET.responses.200.content.application\/json.schema.anyOf.properties.action.anyOf@ in the specification.
--
-- The most recent action performed by the reader.
data GetTerminalReadersReaderResponseBody200Action'NonNullable = GetTerminalReadersReaderResponseBody200Action'NonNullable
  { -- | failure_code: Failure code, only set if status is \`failed\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getTerminalReadersReaderResponseBody200Action'NonNullableFailureCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | failure_message: Detailed failure message, only set if status is \`failed\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getTerminalReadersReaderResponseBody200Action'NonNullableFailureMessage :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | process_payment_intent: Represents a reader action to process a payment intent
    getTerminalReadersReaderResponseBody200Action'NonNullableProcessPaymentIntent :: (GHC.Maybe.Maybe TerminalReaderReaderResourceProcessPaymentIntentAction),
    -- | process_setup_intent: Represents a reader action to process a setup intent
    getTerminalReadersReaderResponseBody200Action'NonNullableProcessSetupIntent :: (GHC.Maybe.Maybe TerminalReaderReaderResourceProcessSetupIntentAction),
    -- | set_reader_display: Represents a reader action to set the reader display
    getTerminalReadersReaderResponseBody200Action'NonNullableSetReaderDisplay :: (GHC.Maybe.Maybe TerminalReaderReaderResourceSetReaderDisplayAction),
    -- | status: Status of the action performed by the reader.
    getTerminalReadersReaderResponseBody200Action'NonNullableStatus :: (GHC.Maybe.Maybe GetTerminalReadersReaderResponseBody200Action'NonNullableStatus'),
    -- | type: Type of action performed by the reader.
    getTerminalReadersReaderResponseBody200Action'NonNullableType :: (GHC.Maybe.Maybe GetTerminalReadersReaderResponseBody200Action'NonNullableType')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetTerminalReadersReaderResponseBody200Action'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_code" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Action'NonNullableFailureCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_message" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Action'NonNullableFailureMessage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("process_payment_intent" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Action'NonNullableProcessPaymentIntent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("process_setup_intent" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Action'NonNullableProcessSetupIntent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("set_reader_display" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Action'NonNullableSetReaderDisplay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Action'NonNullableStatus obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Action'NonNullableType obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_code" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Action'NonNullableFailureCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_message" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Action'NonNullableFailureMessage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("process_payment_intent" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Action'NonNullableProcessPaymentIntent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("process_setup_intent" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Action'NonNullableProcessSetupIntent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("set_reader_display" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Action'NonNullableSetReaderDisplay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Action'NonNullableStatus obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (getTerminalReadersReaderResponseBody200Action'NonNullableType obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetTerminalReadersReaderResponseBody200Action'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTerminalReadersReaderResponseBody200Action'NonNullable" (\obj -> ((((((GHC.Base.pure GetTerminalReadersReaderResponseBody200Action'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "failure_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "failure_message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "process_payment_intent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "process_setup_intent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "set_reader_display")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))

-- | Create a new 'GetTerminalReadersReaderResponseBody200Action'NonNullable' with all required fields.
mkGetTerminalReadersReaderResponseBody200Action'NonNullable :: GetTerminalReadersReaderResponseBody200Action'NonNullable
mkGetTerminalReadersReaderResponseBody200Action'NonNullable =
  GetTerminalReadersReaderResponseBody200Action'NonNullable
    { getTerminalReadersReaderResponseBody200Action'NonNullableFailureCode = GHC.Maybe.Nothing,
      getTerminalReadersReaderResponseBody200Action'NonNullableFailureMessage = GHC.Maybe.Nothing,
      getTerminalReadersReaderResponseBody200Action'NonNullableProcessPaymentIntent = GHC.Maybe.Nothing,
      getTerminalReadersReaderResponseBody200Action'NonNullableProcessSetupIntent = GHC.Maybe.Nothing,
      getTerminalReadersReaderResponseBody200Action'NonNullableSetReaderDisplay = GHC.Maybe.Nothing,
      getTerminalReadersReaderResponseBody200Action'NonNullableStatus = GHC.Maybe.Nothing,
      getTerminalReadersReaderResponseBody200Action'NonNullableType = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @paths.\/v1\/terminal\/readers\/{reader}.GET.responses.200.content.application\/json.schema.anyOf.properties.action.anyOf.properties.status@ in the specification.
--
-- Status of the action performed by the reader.
data GetTerminalReadersReaderResponseBody200Action'NonNullableStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetTerminalReadersReaderResponseBody200Action'NonNullableStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetTerminalReadersReaderResponseBody200Action'NonNullableStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"failed"@
    GetTerminalReadersReaderResponseBody200Action'NonNullableStatus'EnumFailed
  | -- | Represents the JSON value @"in_progress"@
    GetTerminalReadersReaderResponseBody200Action'NonNullableStatus'EnumInProgress
  | -- | Represents the JSON value @"succeeded"@
    GetTerminalReadersReaderResponseBody200Action'NonNullableStatus'EnumSucceeded
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetTerminalReadersReaderResponseBody200Action'NonNullableStatus' where
  toJSON (GetTerminalReadersReaderResponseBody200Action'NonNullableStatus'Other val) = val
  toJSON (GetTerminalReadersReaderResponseBody200Action'NonNullableStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetTerminalReadersReaderResponseBody200Action'NonNullableStatus'EnumFailed) = "failed"
  toJSON (GetTerminalReadersReaderResponseBody200Action'NonNullableStatus'EnumInProgress) = "in_progress"
  toJSON (GetTerminalReadersReaderResponseBody200Action'NonNullableStatus'EnumSucceeded) = "succeeded"

instance Data.Aeson.Types.FromJSON.FromJSON GetTerminalReadersReaderResponseBody200Action'NonNullableStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "failed" -> GetTerminalReadersReaderResponseBody200Action'NonNullableStatus'EnumFailed
            | val GHC.Classes.== "in_progress" -> GetTerminalReadersReaderResponseBody200Action'NonNullableStatus'EnumInProgress
            | val GHC.Classes.== "succeeded" -> GetTerminalReadersReaderResponseBody200Action'NonNullableStatus'EnumSucceeded
            | GHC.Base.otherwise -> GetTerminalReadersReaderResponseBody200Action'NonNullableStatus'Other val
      )

-- | Defines the enum schema located at @paths.\/v1\/terminal\/readers\/{reader}.GET.responses.200.content.application\/json.schema.anyOf.properties.action.anyOf.properties.type@ in the specification.
--
-- Type of action performed by the reader.
data GetTerminalReadersReaderResponseBody200Action'NonNullableType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetTerminalReadersReaderResponseBody200Action'NonNullableType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetTerminalReadersReaderResponseBody200Action'NonNullableType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"process_payment_intent"@
    GetTerminalReadersReaderResponseBody200Action'NonNullableType'EnumProcessPaymentIntent
  | -- | Represents the JSON value @"process_setup_intent"@
    GetTerminalReadersReaderResponseBody200Action'NonNullableType'EnumProcessSetupIntent
  | -- | Represents the JSON value @"set_reader_display"@
    GetTerminalReadersReaderResponseBody200Action'NonNullableType'EnumSetReaderDisplay
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetTerminalReadersReaderResponseBody200Action'NonNullableType' where
  toJSON (GetTerminalReadersReaderResponseBody200Action'NonNullableType'Other val) = val
  toJSON (GetTerminalReadersReaderResponseBody200Action'NonNullableType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetTerminalReadersReaderResponseBody200Action'NonNullableType'EnumProcessPaymentIntent) = "process_payment_intent"
  toJSON (GetTerminalReadersReaderResponseBody200Action'NonNullableType'EnumProcessSetupIntent) = "process_setup_intent"
  toJSON (GetTerminalReadersReaderResponseBody200Action'NonNullableType'EnumSetReaderDisplay) = "set_reader_display"

instance Data.Aeson.Types.FromJSON.FromJSON GetTerminalReadersReaderResponseBody200Action'NonNullableType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "process_payment_intent" -> GetTerminalReadersReaderResponseBody200Action'NonNullableType'EnumProcessPaymentIntent
            | val GHC.Classes.== "process_setup_intent" -> GetTerminalReadersReaderResponseBody200Action'NonNullableType'EnumProcessSetupIntent
            | val GHC.Classes.== "set_reader_display" -> GetTerminalReadersReaderResponseBody200Action'NonNullableType'EnumSetReaderDisplay
            | GHC.Base.otherwise -> GetTerminalReadersReaderResponseBody200Action'NonNullableType'Other val
      )

-- | Defines the enum schema located at @paths.\/v1\/terminal\/readers\/{reader}.GET.responses.200.content.application\/json.schema.anyOf.properties.deleted@ in the specification.
--
-- Always true for a deleted object
data GetTerminalReadersReaderResponseBody200Deleted'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetTerminalReadersReaderResponseBody200Deleted'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetTerminalReadersReaderResponseBody200Deleted'Typed GHC.Types.Bool
  | -- | Represents the JSON value @true@
    GetTerminalReadersReaderResponseBody200Deleted'EnumTrue
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetTerminalReadersReaderResponseBody200Deleted' where
  toJSON (GetTerminalReadersReaderResponseBody200Deleted'Other val) = val
  toJSON (GetTerminalReadersReaderResponseBody200Deleted'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetTerminalReadersReaderResponseBody200Deleted'EnumTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True

instance Data.Aeson.Types.FromJSON.FromJSON GetTerminalReadersReaderResponseBody200Deleted' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True -> GetTerminalReadersReaderResponseBody200Deleted'EnumTrue
            | GHC.Base.otherwise -> GetTerminalReadersReaderResponseBody200Deleted'Other val
      )

-- | Defines the enum schema located at @paths.\/v1\/terminal\/readers\/{reader}.GET.responses.200.content.application\/json.schema.anyOf.properties.device_type@ in the specification.
--
-- Type of reader, one of \`bbpos_wisepad3\`, \`stripe_m2\`, \`bbpos_chipper2x\`, \`bbpos_wisepos_e\`, \`verifone_P400\`, or \`simulated_wisepos_e\`.
data GetTerminalReadersReaderResponseBody200DeviceType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetTerminalReadersReaderResponseBody200DeviceType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetTerminalReadersReaderResponseBody200DeviceType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"bbpos_chipper2x"@
    GetTerminalReadersReaderResponseBody200DeviceType'EnumBbposChipper2x
  | -- | Represents the JSON value @"bbpos_wisepad3"@
    GetTerminalReadersReaderResponseBody200DeviceType'EnumBbposWisepad3
  | -- | Represents the JSON value @"bbpos_wisepos_e"@
    GetTerminalReadersReaderResponseBody200DeviceType'EnumBbposWiseposE
  | -- | Represents the JSON value @"simulated_wisepos_e"@
    GetTerminalReadersReaderResponseBody200DeviceType'EnumSimulatedWiseposE
  | -- | Represents the JSON value @"stripe_m2"@
    GetTerminalReadersReaderResponseBody200DeviceType'EnumStripeM2
  | -- | Represents the JSON value @"verifone_P400"@
    GetTerminalReadersReaderResponseBody200DeviceType'EnumVerifoneP400
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetTerminalReadersReaderResponseBody200DeviceType' where
  toJSON (GetTerminalReadersReaderResponseBody200DeviceType'Other val) = val
  toJSON (GetTerminalReadersReaderResponseBody200DeviceType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetTerminalReadersReaderResponseBody200DeviceType'EnumBbposChipper2x) = "bbpos_chipper2x"
  toJSON (GetTerminalReadersReaderResponseBody200DeviceType'EnumBbposWisepad3) = "bbpos_wisepad3"
  toJSON (GetTerminalReadersReaderResponseBody200DeviceType'EnumBbposWiseposE) = "bbpos_wisepos_e"
  toJSON (GetTerminalReadersReaderResponseBody200DeviceType'EnumSimulatedWiseposE) = "simulated_wisepos_e"
  toJSON (GetTerminalReadersReaderResponseBody200DeviceType'EnumStripeM2) = "stripe_m2"
  toJSON (GetTerminalReadersReaderResponseBody200DeviceType'EnumVerifoneP400) = "verifone_P400"

instance Data.Aeson.Types.FromJSON.FromJSON GetTerminalReadersReaderResponseBody200DeviceType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "bbpos_chipper2x" -> GetTerminalReadersReaderResponseBody200DeviceType'EnumBbposChipper2x
            | val GHC.Classes.== "bbpos_wisepad3" -> GetTerminalReadersReaderResponseBody200DeviceType'EnumBbposWisepad3
            | val GHC.Classes.== "bbpos_wisepos_e" -> GetTerminalReadersReaderResponseBody200DeviceType'EnumBbposWiseposE
            | val GHC.Classes.== "simulated_wisepos_e" -> GetTerminalReadersReaderResponseBody200DeviceType'EnumSimulatedWiseposE
            | val GHC.Classes.== "stripe_m2" -> GetTerminalReadersReaderResponseBody200DeviceType'EnumStripeM2
            | val GHC.Classes.== "verifone_P400" -> GetTerminalReadersReaderResponseBody200DeviceType'EnumVerifoneP400
            | GHC.Base.otherwise -> GetTerminalReadersReaderResponseBody200DeviceType'Other val
      )

-- | Defines the oneOf schema located at @paths.\/v1\/terminal\/readers\/{reader}.GET.responses.200.content.application\/json.schema.anyOf.properties.location.anyOf@ in the specification.
--
-- The location identifier of the reader.
data GetTerminalReadersReaderResponseBody200Location'NonNullableVariants
  = GetTerminalReadersReaderResponseBody200Location'NonNullableText Data.Text.Internal.Text
  | GetTerminalReadersReaderResponseBody200Location'NonNullableTerminal'location Terminal'location
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetTerminalReadersReaderResponseBody200Location'NonNullableVariants where
  toJSON (GetTerminalReadersReaderResponseBody200Location'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetTerminalReadersReaderResponseBody200Location'NonNullableTerminal'location a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetTerminalReadersReaderResponseBody200Location'NonNullableVariants where
  parseJSON val = case (GetTerminalReadersReaderResponseBody200Location'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetTerminalReadersReaderResponseBody200Location'NonNullableTerminal'location Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @paths.\/v1\/terminal\/readers\/{reader}.GET.responses.200.content.application\/json.schema.anyOf.properties.object@ in the specification.
--
-- String representing the object\'s type. Objects of the same type share the same value.
data GetTerminalReadersReaderResponseBody200Object'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetTerminalReadersReaderResponseBody200Object'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetTerminalReadersReaderResponseBody200Object'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"terminal.reader"@
    GetTerminalReadersReaderResponseBody200Object'EnumTerminal'reader
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetTerminalReadersReaderResponseBody200Object' where
  toJSON (GetTerminalReadersReaderResponseBody200Object'Other val) = val
  toJSON (GetTerminalReadersReaderResponseBody200Object'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetTerminalReadersReaderResponseBody200Object'EnumTerminal'reader) = "terminal.reader"

instance Data.Aeson.Types.FromJSON.FromJSON GetTerminalReadersReaderResponseBody200Object' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "terminal.reader" -> GetTerminalReadersReaderResponseBody200Object'EnumTerminal'reader
            | GHC.Base.otherwise -> GetTerminalReadersReaderResponseBody200Object'Other val
      )
