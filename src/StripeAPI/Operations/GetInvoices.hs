{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getInvoices
module StripeAPI.Operations.GetInvoices where

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

-- | > GET /v1/invoices
--
-- \<p>You can list all invoices, or list the invoices for a specific customer. The invoices are returned sorted by creation date, with the most recently created invoices appearing first.\<\/p>
getInvoices ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetInvoicesParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetInvoicesResponse)
getInvoices parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetInvoicesResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetInvoicesResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetInvoicesResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetInvoicesResponseDefault
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
    ( StripeAPI.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/v1/invoices")
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "collection_method") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoicesParametersQueryCollectionMethod parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "created") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoicesParametersQueryCreated parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "customer") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoicesParametersQueryCustomer parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "due_date") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoicesParametersQueryDueDate parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoicesParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoicesParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoicesParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoicesParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoicesParametersQueryStatus parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "subscription") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoicesParametersQuerySubscription parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/invoices.GET.parameters@ in the specification.
data GetInvoicesParameters = GetInvoicesParameters
  { -- | queryCollection_method: Represents the parameter named \'collection_method\'
    --
    -- The collection method of the invoice to retrieve. Either \`charge_automatically\` or \`send_invoice\`.
    getInvoicesParametersQueryCollectionMethod :: (GHC.Maybe.Maybe GetInvoicesParametersQueryCollectionMethod'),
    -- | queryCreated: Represents the parameter named \'created\'
    getInvoicesParametersQueryCreated :: (GHC.Maybe.Maybe GetInvoicesParametersQueryCreated'Variants),
    -- | queryCustomer: Represents the parameter named \'customer\'
    --
    -- Only return invoices for the customer specified by this customer ID.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getInvoicesParametersQueryCustomer :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryDue_date: Represents the parameter named \'due_date\'
    getInvoicesParametersQueryDueDate :: (GHC.Maybe.Maybe GetInvoicesParametersQueryDueDate'Variants),
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getInvoicesParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getInvoicesParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getInvoicesParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getInvoicesParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryStatus: Represents the parameter named \'status\'
    --
    -- The status of the invoice, one of \`draft\`, \`open\`, \`paid\`, \`uncollectible\`, or \`void\`. [Learn more](https:\/\/stripe.com\/docs\/billing\/invoices\/workflow\#workflow-overview)
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getInvoicesParametersQueryStatus :: (GHC.Maybe.Maybe GetInvoicesParametersQueryStatus'),
    -- | querySubscription: Represents the parameter named \'subscription\'
    --
    -- Only return invoices for the subscription specified by this subscription ID.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getInvoicesParametersQuerySubscription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetInvoicesParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCollection_method" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryCollectionMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCustomer" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryDue_date" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryDueDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryStatus obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySubscription" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQuerySubscription obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCollection_method" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryCollectionMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCustomer" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryDue_date" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryDueDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryStatus obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySubscription" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQuerySubscription obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetInvoicesParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetInvoicesParameters" (\obj -> (((((((((GHC.Base.pure GetInvoicesParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCollection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCreated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCustomer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryDue_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStatus")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySubscription"))

-- | Create a new 'GetInvoicesParameters' with all required fields.
mkGetInvoicesParameters :: GetInvoicesParameters
mkGetInvoicesParameters =
  GetInvoicesParameters
    { getInvoicesParametersQueryCollectionMethod = GHC.Maybe.Nothing,
      getInvoicesParametersQueryCreated = GHC.Maybe.Nothing,
      getInvoicesParametersQueryCustomer = GHC.Maybe.Nothing,
      getInvoicesParametersQueryDueDate = GHC.Maybe.Nothing,
      getInvoicesParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getInvoicesParametersQueryExpand = GHC.Maybe.Nothing,
      getInvoicesParametersQueryLimit = GHC.Maybe.Nothing,
      getInvoicesParametersQueryStartingAfter = GHC.Maybe.Nothing,
      getInvoicesParametersQueryStatus = GHC.Maybe.Nothing,
      getInvoicesParametersQuerySubscription = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @paths.\/v1\/invoices.GET.parameters.properties.queryCollection_method@ in the specification.
--
-- Represents the parameter named \'collection_method\'
--
-- The collection method of the invoice to retrieve. Either \`charge_automatically\` or \`send_invoice\`.
data GetInvoicesParametersQueryCollectionMethod'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetInvoicesParametersQueryCollectionMethod'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetInvoicesParametersQueryCollectionMethod'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"charge_automatically"@
    GetInvoicesParametersQueryCollectionMethod'EnumChargeAutomatically
  | -- | Represents the JSON value @"send_invoice"@
    GetInvoicesParametersQueryCollectionMethod'EnumSendInvoice
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetInvoicesParametersQueryCollectionMethod' where
  toJSON (GetInvoicesParametersQueryCollectionMethod'Other val) = val
  toJSON (GetInvoicesParametersQueryCollectionMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetInvoicesParametersQueryCollectionMethod'EnumChargeAutomatically) = "charge_automatically"
  toJSON (GetInvoicesParametersQueryCollectionMethod'EnumSendInvoice) = "send_invoice"

instance Data.Aeson.Types.FromJSON.FromJSON GetInvoicesParametersQueryCollectionMethod' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "charge_automatically" -> GetInvoicesParametersQueryCollectionMethod'EnumChargeAutomatically
            | val GHC.Classes.== "send_invoice" -> GetInvoicesParametersQueryCollectionMethod'EnumSendInvoice
            | GHC.Base.otherwise -> GetInvoicesParametersQueryCollectionMethod'Other val
      )

-- | Defines the object schema located at @paths.\/v1\/invoices.GET.parameters.properties.queryCreated.anyOf@ in the specification.
data GetInvoicesParametersQueryCreated'OneOf1 = GetInvoicesParametersQueryCreated'OneOf1
  { -- | gt
    getInvoicesParametersQueryCreated'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | gte
    getInvoicesParametersQueryCreated'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lt
    getInvoicesParametersQueryCreated'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lte
    getInvoicesParametersQueryCreated'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetInvoicesParametersQueryCreated'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetInvoicesParametersQueryCreated'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetInvoicesParametersQueryCreated'OneOf1" (\obj -> (((GHC.Base.pure GetInvoicesParametersQueryCreated'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lte"))

-- | Create a new 'GetInvoicesParametersQueryCreated'OneOf1' with all required fields.
mkGetInvoicesParametersQueryCreated'OneOf1 :: GetInvoicesParametersQueryCreated'OneOf1
mkGetInvoicesParametersQueryCreated'OneOf1 =
  GetInvoicesParametersQueryCreated'OneOf1
    { getInvoicesParametersQueryCreated'OneOf1Gt = GHC.Maybe.Nothing,
      getInvoicesParametersQueryCreated'OneOf1Gte = GHC.Maybe.Nothing,
      getInvoicesParametersQueryCreated'OneOf1Lt = GHC.Maybe.Nothing,
      getInvoicesParametersQueryCreated'OneOf1Lte = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/invoices.GET.parameters.properties.queryCreated.anyOf@ in the specification.
--
-- Represents the parameter named \'created\'
data GetInvoicesParametersQueryCreated'Variants
  = GetInvoicesParametersQueryCreated'GetInvoicesParametersQueryCreated'OneOf1 GetInvoicesParametersQueryCreated'OneOf1
  | GetInvoicesParametersQueryCreated'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetInvoicesParametersQueryCreated'Variants where
  toJSON (GetInvoicesParametersQueryCreated'GetInvoicesParametersQueryCreated'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetInvoicesParametersQueryCreated'Int a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetInvoicesParametersQueryCreated'Variants where
  parseJSON val = case (GetInvoicesParametersQueryCreated'GetInvoicesParametersQueryCreated'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetInvoicesParametersQueryCreated'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the object schema located at @paths.\/v1\/invoices.GET.parameters.properties.queryDue_date.anyOf@ in the specification.
data GetInvoicesParametersQueryDueDate'OneOf1 = GetInvoicesParametersQueryDueDate'OneOf1
  { -- | gt
    getInvoicesParametersQueryDueDate'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | gte
    getInvoicesParametersQueryDueDate'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lt
    getInvoicesParametersQueryDueDate'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lte
    getInvoicesParametersQueryDueDate'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetInvoicesParametersQueryDueDate'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryDueDate'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryDueDate'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryDueDate'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryDueDate'OneOf1Lte obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryDueDate'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryDueDate'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryDueDate'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getInvoicesParametersQueryDueDate'OneOf1Lte obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetInvoicesParametersQueryDueDate'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetInvoicesParametersQueryDueDate'OneOf1" (\obj -> (((GHC.Base.pure GetInvoicesParametersQueryDueDate'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lte"))

-- | Create a new 'GetInvoicesParametersQueryDueDate'OneOf1' with all required fields.
mkGetInvoicesParametersQueryDueDate'OneOf1 :: GetInvoicesParametersQueryDueDate'OneOf1
mkGetInvoicesParametersQueryDueDate'OneOf1 =
  GetInvoicesParametersQueryDueDate'OneOf1
    { getInvoicesParametersQueryDueDate'OneOf1Gt = GHC.Maybe.Nothing,
      getInvoicesParametersQueryDueDate'OneOf1Gte = GHC.Maybe.Nothing,
      getInvoicesParametersQueryDueDate'OneOf1Lt = GHC.Maybe.Nothing,
      getInvoicesParametersQueryDueDate'OneOf1Lte = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/invoices.GET.parameters.properties.queryDue_date.anyOf@ in the specification.
--
-- Represents the parameter named \'due_date\'
data GetInvoicesParametersQueryDueDate'Variants
  = GetInvoicesParametersQueryDueDate'GetInvoicesParametersQueryDueDate'OneOf1 GetInvoicesParametersQueryDueDate'OneOf1
  | GetInvoicesParametersQueryDueDate'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetInvoicesParametersQueryDueDate'Variants where
  toJSON (GetInvoicesParametersQueryDueDate'GetInvoicesParametersQueryDueDate'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetInvoicesParametersQueryDueDate'Int a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetInvoicesParametersQueryDueDate'Variants where
  parseJSON val = case (GetInvoicesParametersQueryDueDate'GetInvoicesParametersQueryDueDate'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetInvoicesParametersQueryDueDate'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @paths.\/v1\/invoices.GET.parameters.properties.queryStatus@ in the specification.
--
-- Represents the parameter named \'status\'
--
-- The status of the invoice, one of \`draft\`, \`open\`, \`paid\`, \`uncollectible\`, or \`void\`. [Learn more](https:\/\/stripe.com\/docs\/billing\/invoices\/workflow\#workflow-overview)
data GetInvoicesParametersQueryStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetInvoicesParametersQueryStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetInvoicesParametersQueryStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"draft"@
    GetInvoicesParametersQueryStatus'EnumDraft
  | -- | Represents the JSON value @"open"@
    GetInvoicesParametersQueryStatus'EnumOpen
  | -- | Represents the JSON value @"paid"@
    GetInvoicesParametersQueryStatus'EnumPaid
  | -- | Represents the JSON value @"uncollectible"@
    GetInvoicesParametersQueryStatus'EnumUncollectible
  | -- | Represents the JSON value @"void"@
    GetInvoicesParametersQueryStatus'EnumVoid
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetInvoicesParametersQueryStatus' where
  toJSON (GetInvoicesParametersQueryStatus'Other val) = val
  toJSON (GetInvoicesParametersQueryStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetInvoicesParametersQueryStatus'EnumDraft) = "draft"
  toJSON (GetInvoicesParametersQueryStatus'EnumOpen) = "open"
  toJSON (GetInvoicesParametersQueryStatus'EnumPaid) = "paid"
  toJSON (GetInvoicesParametersQueryStatus'EnumUncollectible) = "uncollectible"
  toJSON (GetInvoicesParametersQueryStatus'EnumVoid) = "void"

instance Data.Aeson.Types.FromJSON.FromJSON GetInvoicesParametersQueryStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "draft" -> GetInvoicesParametersQueryStatus'EnumDraft
            | val GHC.Classes.== "open" -> GetInvoicesParametersQueryStatus'EnumOpen
            | val GHC.Classes.== "paid" -> GetInvoicesParametersQueryStatus'EnumPaid
            | val GHC.Classes.== "uncollectible" -> GetInvoicesParametersQueryStatus'EnumUncollectible
            | val GHC.Classes.== "void" -> GetInvoicesParametersQueryStatus'EnumVoid
            | GHC.Base.otherwise -> GetInvoicesParametersQueryStatus'Other val
      )

-- | Represents a response of the operation 'getInvoices'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetInvoicesResponseError' is used.
data GetInvoicesResponse
  = -- | Means either no matching case available or a parse error
    GetInvoicesResponseError GHC.Base.String
  | -- | Successful response.
    GetInvoicesResponse200 GetInvoicesResponseBody200
  | -- | Error response.
    GetInvoicesResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/invoices.GET.responses.200.content.application\/json.schema@ in the specification.
data GetInvoicesResponseBody200 = GetInvoicesResponseBody200
  { -- | data
    getInvoicesResponseBody200Data :: ([Invoice]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getInvoicesResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    -- * Must match pattern \'^\/v1\/invoices\'
    getInvoicesResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetInvoicesResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getInvoicesResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getInvoicesResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getInvoicesResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getInvoicesResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getInvoicesResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getInvoicesResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetInvoicesResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetInvoicesResponseBody200" (\obj -> ((GHC.Base.pure GetInvoicesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetInvoicesResponseBody200' with all required fields.
mkGetInvoicesResponseBody200 ::
  -- | 'getInvoicesResponseBody200Data'
  [Invoice] ->
  -- | 'getInvoicesResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getInvoicesResponseBody200Url'
  Data.Text.Internal.Text ->
  GetInvoicesResponseBody200
mkGetInvoicesResponseBody200 getInvoicesResponseBody200Data getInvoicesResponseBody200HasMore getInvoicesResponseBody200Url =
  GetInvoicesResponseBody200
    { getInvoicesResponseBody200Data = getInvoicesResponseBody200Data,
      getInvoicesResponseBody200HasMore = getInvoicesResponseBody200HasMore,
      getInvoicesResponseBody200Url = getInvoicesResponseBody200Url
    }
