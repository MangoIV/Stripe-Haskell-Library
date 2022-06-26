{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getTreasuryTransactionEntries
module StripeAPI.Operations.GetTreasuryTransactionEntries where

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

-- | > GET /v1/treasury/transaction_entries
--
-- \<p>Retrieves a list of TransactionEntry objects.\<\/p>
getTreasuryTransactionEntries ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetTreasuryTransactionEntriesParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetTreasuryTransactionEntriesResponse)
getTreasuryTransactionEntries parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetTreasuryTransactionEntriesResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetTreasuryTransactionEntriesResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetTreasuryTransactionEntriesResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetTreasuryTransactionEntriesResponseDefault
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
        (Data.Text.pack "/v1/treasury/transaction_entries")
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "created") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryTransactionEntriesParametersQueryCreated parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "effective_at") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryTransactionEntriesParametersQueryEffectiveAt parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryTransactionEntriesParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryTransactionEntriesParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "financial_account") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getTreasuryTransactionEntriesParametersQueryFinancialAccount parameters)) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryTransactionEntriesParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "order_by") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryTransactionEntriesParametersQueryOrderBy parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryTransactionEntriesParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "transaction") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryTransactionEntriesParametersQueryTransaction parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/treasury\/transaction_entries.GET.parameters@ in the specification.
data GetTreasuryTransactionEntriesParameters = GetTreasuryTransactionEntriesParameters
  { -- | queryCreated: Represents the parameter named \'created\'
    getTreasuryTransactionEntriesParametersQueryCreated :: (GHC.Maybe.Maybe GetTreasuryTransactionEntriesParametersQueryCreated'Variants),
    -- | queryEffective_at: Represents the parameter named \'effective_at\'
    getTreasuryTransactionEntriesParametersQueryEffectiveAt :: (GHC.Maybe.Maybe GetTreasuryTransactionEntriesParametersQueryEffectiveAt'Variants),
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getTreasuryTransactionEntriesParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getTreasuryTransactionEntriesParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryFinancial_account: Represents the parameter named \'financial_account\'
    --
    -- Returns objects associated with this FinancialAccount.
    getTreasuryTransactionEntriesParametersQueryFinancialAccount :: Data.Text.Internal.Text,
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getTreasuryTransactionEntriesParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryOrder_by: Represents the parameter named \'order_by\'
    --
    -- The results are in reverse chronological order by \`created\` or \`effective_at\`. The default is \`created\`.
    getTreasuryTransactionEntriesParametersQueryOrderBy :: (GHC.Maybe.Maybe GetTreasuryTransactionEntriesParametersQueryOrderBy'),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getTreasuryTransactionEntriesParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryTransaction: Represents the parameter named \'transaction\'
    --
    -- Only return TransactionEntries associated with this Transaction.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getTreasuryTransactionEntriesParametersQueryTransaction :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryTransactionEntriesParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEffective_at" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryEffectiveAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryExpand obj) : ["queryFinancial_account" Data.Aeson.Types.ToJSON..= getTreasuryTransactionEntriesParametersQueryFinancialAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrder_by" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryOrderBy obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryTransaction" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryTransaction obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEffective_at" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryEffectiveAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryExpand obj) : ["queryFinancial_account" Data.Aeson.Types.ToJSON..= getTreasuryTransactionEntriesParametersQueryFinancialAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrder_by" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryOrderBy obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryTransaction" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryTransaction obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryTransactionEntriesParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTreasuryTransactionEntriesParameters" (\obj -> ((((((((GHC.Base.pure GetTreasuryTransactionEntriesParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCreated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEffective_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryFinancial_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOrder_by")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryTransaction"))

-- | Create a new 'GetTreasuryTransactionEntriesParameters' with all required fields.
mkGetTreasuryTransactionEntriesParameters ::
  -- | 'getTreasuryTransactionEntriesParametersQueryFinancialAccount'
  Data.Text.Internal.Text ->
  GetTreasuryTransactionEntriesParameters
mkGetTreasuryTransactionEntriesParameters getTreasuryTransactionEntriesParametersQueryFinancialAccount =
  GetTreasuryTransactionEntriesParameters
    { getTreasuryTransactionEntriesParametersQueryCreated = GHC.Maybe.Nothing,
      getTreasuryTransactionEntriesParametersQueryEffectiveAt = GHC.Maybe.Nothing,
      getTreasuryTransactionEntriesParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getTreasuryTransactionEntriesParametersQueryExpand = GHC.Maybe.Nothing,
      getTreasuryTransactionEntriesParametersQueryFinancialAccount = getTreasuryTransactionEntriesParametersQueryFinancialAccount,
      getTreasuryTransactionEntriesParametersQueryLimit = GHC.Maybe.Nothing,
      getTreasuryTransactionEntriesParametersQueryOrderBy = GHC.Maybe.Nothing,
      getTreasuryTransactionEntriesParametersQueryStartingAfter = GHC.Maybe.Nothing,
      getTreasuryTransactionEntriesParametersQueryTransaction = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/treasury\/transaction_entries.GET.parameters.properties.queryCreated.anyOf@ in the specification.
data GetTreasuryTransactionEntriesParametersQueryCreated'OneOf1 = GetTreasuryTransactionEntriesParametersQueryCreated'OneOf1
  { -- | gt
    getTreasuryTransactionEntriesParametersQueryCreated'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | gte
    getTreasuryTransactionEntriesParametersQueryCreated'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lt
    getTreasuryTransactionEntriesParametersQueryCreated'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lte
    getTreasuryTransactionEntriesParametersQueryCreated'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryTransactionEntriesParametersQueryCreated'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryTransactionEntriesParametersQueryCreated'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTreasuryTransactionEntriesParametersQueryCreated'OneOf1" (\obj -> (((GHC.Base.pure GetTreasuryTransactionEntriesParametersQueryCreated'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lte"))

-- | Create a new 'GetTreasuryTransactionEntriesParametersQueryCreated'OneOf1' with all required fields.
mkGetTreasuryTransactionEntriesParametersQueryCreated'OneOf1 :: GetTreasuryTransactionEntriesParametersQueryCreated'OneOf1
mkGetTreasuryTransactionEntriesParametersQueryCreated'OneOf1 =
  GetTreasuryTransactionEntriesParametersQueryCreated'OneOf1
    { getTreasuryTransactionEntriesParametersQueryCreated'OneOf1Gt = GHC.Maybe.Nothing,
      getTreasuryTransactionEntriesParametersQueryCreated'OneOf1Gte = GHC.Maybe.Nothing,
      getTreasuryTransactionEntriesParametersQueryCreated'OneOf1Lt = GHC.Maybe.Nothing,
      getTreasuryTransactionEntriesParametersQueryCreated'OneOf1Lte = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/treasury\/transaction_entries.GET.parameters.properties.queryCreated.anyOf@ in the specification.
--
-- Represents the parameter named \'created\'
data GetTreasuryTransactionEntriesParametersQueryCreated'Variants
  = GetTreasuryTransactionEntriesParametersQueryCreated'GetTreasuryTransactionEntriesParametersQueryCreated'OneOf1 GetTreasuryTransactionEntriesParametersQueryCreated'OneOf1
  | GetTreasuryTransactionEntriesParametersQueryCreated'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryTransactionEntriesParametersQueryCreated'Variants where
  toJSON (GetTreasuryTransactionEntriesParametersQueryCreated'GetTreasuryTransactionEntriesParametersQueryCreated'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetTreasuryTransactionEntriesParametersQueryCreated'Int a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryTransactionEntriesParametersQueryCreated'Variants where
  parseJSON val = case (GetTreasuryTransactionEntriesParametersQueryCreated'GetTreasuryTransactionEntriesParametersQueryCreated'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetTreasuryTransactionEntriesParametersQueryCreated'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the object schema located at @paths.\/v1\/treasury\/transaction_entries.GET.parameters.properties.queryEffective_at.anyOf@ in the specification.
data GetTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1 = GetTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1
  { -- | gt
    getTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | gte
    getTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lt
    getTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lte
    getTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1Lte obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1Lte obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1" (\obj -> (((GHC.Base.pure GetTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lte"))

-- | Create a new 'GetTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1' with all required fields.
mkGetTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1 :: GetTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1
mkGetTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1 =
  GetTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1
    { getTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1Gt = GHC.Maybe.Nothing,
      getTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1Gte = GHC.Maybe.Nothing,
      getTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1Lt = GHC.Maybe.Nothing,
      getTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1Lte = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/treasury\/transaction_entries.GET.parameters.properties.queryEffective_at.anyOf@ in the specification.
--
-- Represents the parameter named \'effective_at\'
data GetTreasuryTransactionEntriesParametersQueryEffectiveAt'Variants
  = GetTreasuryTransactionEntriesParametersQueryEffectiveAt'GetTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1 GetTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1
  | GetTreasuryTransactionEntriesParametersQueryEffectiveAt'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryTransactionEntriesParametersQueryEffectiveAt'Variants where
  toJSON (GetTreasuryTransactionEntriesParametersQueryEffectiveAt'GetTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetTreasuryTransactionEntriesParametersQueryEffectiveAt'Int a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryTransactionEntriesParametersQueryEffectiveAt'Variants where
  parseJSON val = case (GetTreasuryTransactionEntriesParametersQueryEffectiveAt'GetTreasuryTransactionEntriesParametersQueryEffectiveAt'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetTreasuryTransactionEntriesParametersQueryEffectiveAt'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @paths.\/v1\/treasury\/transaction_entries.GET.parameters.properties.queryOrder_by@ in the specification.
--
-- Represents the parameter named \'order_by\'
--
-- The results are in reverse chronological order by \`created\` or \`effective_at\`. The default is \`created\`.
data GetTreasuryTransactionEntriesParametersQueryOrderBy'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetTreasuryTransactionEntriesParametersQueryOrderBy'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetTreasuryTransactionEntriesParametersQueryOrderBy'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"created"@
    GetTreasuryTransactionEntriesParametersQueryOrderBy'EnumCreated
  | -- | Represents the JSON value @"effective_at"@
    GetTreasuryTransactionEntriesParametersQueryOrderBy'EnumEffectiveAt
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryTransactionEntriesParametersQueryOrderBy' where
  toJSON (GetTreasuryTransactionEntriesParametersQueryOrderBy'Other val) = val
  toJSON (GetTreasuryTransactionEntriesParametersQueryOrderBy'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetTreasuryTransactionEntriesParametersQueryOrderBy'EnumCreated) = "created"
  toJSON (GetTreasuryTransactionEntriesParametersQueryOrderBy'EnumEffectiveAt) = "effective_at"

instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryTransactionEntriesParametersQueryOrderBy' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "created" -> GetTreasuryTransactionEntriesParametersQueryOrderBy'EnumCreated
            | val GHC.Classes.== "effective_at" -> GetTreasuryTransactionEntriesParametersQueryOrderBy'EnumEffectiveAt
            | GHC.Base.otherwise -> GetTreasuryTransactionEntriesParametersQueryOrderBy'Other val
      )

-- | Represents a response of the operation 'getTreasuryTransactionEntries'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTreasuryTransactionEntriesResponseError' is used.
data GetTreasuryTransactionEntriesResponse
  = -- | Means either no matching case available or a parse error
    GetTreasuryTransactionEntriesResponseError GHC.Base.String
  | -- | Successful response.
    GetTreasuryTransactionEntriesResponse200 GetTreasuryTransactionEntriesResponseBody200
  | -- | Error response.
    GetTreasuryTransactionEntriesResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/treasury\/transaction_entries.GET.responses.200.content.application\/json.schema@ in the specification.
data GetTreasuryTransactionEntriesResponseBody200 = GetTreasuryTransactionEntriesResponseBody200
  { -- | data: Details about each object.
    getTreasuryTransactionEntriesResponseBody200Data :: ([Treasury'transactionEntry]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getTreasuryTransactionEntriesResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    -- * Must match pattern \'^\/v1\/treasury\/transaction_entries\'
    getTreasuryTransactionEntriesResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryTransactionEntriesResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getTreasuryTransactionEntriesResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getTreasuryTransactionEntriesResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getTreasuryTransactionEntriesResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getTreasuryTransactionEntriesResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getTreasuryTransactionEntriesResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getTreasuryTransactionEntriesResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryTransactionEntriesResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTreasuryTransactionEntriesResponseBody200" (\obj -> ((GHC.Base.pure GetTreasuryTransactionEntriesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetTreasuryTransactionEntriesResponseBody200' with all required fields.
mkGetTreasuryTransactionEntriesResponseBody200 ::
  -- | 'getTreasuryTransactionEntriesResponseBody200Data'
  [Treasury'transactionEntry] ->
  -- | 'getTreasuryTransactionEntriesResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getTreasuryTransactionEntriesResponseBody200Url'
  Data.Text.Internal.Text ->
  GetTreasuryTransactionEntriesResponseBody200
mkGetTreasuryTransactionEntriesResponseBody200 getTreasuryTransactionEntriesResponseBody200Data getTreasuryTransactionEntriesResponseBody200HasMore getTreasuryTransactionEntriesResponseBody200Url =
  GetTreasuryTransactionEntriesResponseBody200
    { getTreasuryTransactionEntriesResponseBody200Data = getTreasuryTransactionEntriesResponseBody200Data,
      getTreasuryTransactionEntriesResponseBody200HasMore = getTreasuryTransactionEntriesResponseBody200HasMore,
      getTreasuryTransactionEntriesResponseBody200Url = getTreasuryTransactionEntriesResponseBody200Url
    }
