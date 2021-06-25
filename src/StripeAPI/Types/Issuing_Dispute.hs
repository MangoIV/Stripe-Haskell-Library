{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Issuing_Dispute
module StripeAPI.Types.Issuing_Dispute where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import {-# SOURCE #-} StripeAPI.Types.BalanceTransaction
import {-# SOURCE #-} StripeAPI.Types.IssuingDisputeEvidence
import {-# SOURCE #-} StripeAPI.Types.Issuing_Transaction
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.issuing.dispute@ in the specification.
--
-- As a [card issuer](https:\/\/stripe.com\/docs\/issuing), you can dispute transactions that the cardholder does not recognize, suspects to be fraudulent, or has other issues with.
--
-- Related guide: [Disputing Transactions](https:\/\/stripe.com\/docs\/issuing\/purchases\/disputes)
data Issuing'dispute = Issuing'dispute
  { -- | amount: Disputed amount. Usually the amount of the \`transaction\`, but can differ (usually because of currency fluctuation).
    issuing'disputeAmount :: GHC.Types.Int,
    -- | balance_transactions: List of balance transactions associated with the dispute.
    issuing'disputeBalanceTransactions :: (GHC.Maybe.Maybe ([BalanceTransaction])),
    -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    issuing'disputeCreated :: GHC.Types.Int,
    -- | currency: The currency the \`transaction\` was made in.
    issuing'disputeCurrency :: Data.Text.Internal.Text,
    -- | evidence:
    issuing'disputeEvidence :: IssuingDisputeEvidence,
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    issuing'disputeId :: Data.Text.Internal.Text,
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    issuing'disputeLivemode :: GHC.Types.Bool,
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    issuing'disputeMetadata :: Data.Aeson.Types.Internal.Object,
    -- | status: Current status of the dispute.
    issuing'disputeStatus :: Issuing'disputeStatus',
    -- | transaction: The transaction being disputed.
    issuing'disputeTransaction :: Issuing'disputeTransaction'Variants
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Issuing'dispute where
  toJSON obj = Data.Aeson.Types.Internal.object ("amount" Data.Aeson.Types.ToJSON..= issuing'disputeAmount obj : "balance_transactions" Data.Aeson.Types.ToJSON..= issuing'disputeBalanceTransactions obj : "created" Data.Aeson.Types.ToJSON..= issuing'disputeCreated obj : "currency" Data.Aeson.Types.ToJSON..= issuing'disputeCurrency obj : "evidence" Data.Aeson.Types.ToJSON..= issuing'disputeEvidence obj : "id" Data.Aeson.Types.ToJSON..= issuing'disputeId obj : "livemode" Data.Aeson.Types.ToJSON..= issuing'disputeLivemode obj : "metadata" Data.Aeson.Types.ToJSON..= issuing'disputeMetadata obj : "status" Data.Aeson.Types.ToJSON..= issuing'disputeStatus obj : "transaction" Data.Aeson.Types.ToJSON..= issuing'disputeTransaction obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "issuing.dispute" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("amount" Data.Aeson.Types.ToJSON..= issuing'disputeAmount obj) GHC.Base.<> (("balance_transactions" Data.Aeson.Types.ToJSON..= issuing'disputeBalanceTransactions obj) GHC.Base.<> (("created" Data.Aeson.Types.ToJSON..= issuing'disputeCreated obj) GHC.Base.<> (("currency" Data.Aeson.Types.ToJSON..= issuing'disputeCurrency obj) GHC.Base.<> (("evidence" Data.Aeson.Types.ToJSON..= issuing'disputeEvidence obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= issuing'disputeId obj) GHC.Base.<> (("livemode" Data.Aeson.Types.ToJSON..= issuing'disputeLivemode obj) GHC.Base.<> (("metadata" Data.Aeson.Types.ToJSON..= issuing'disputeMetadata obj) GHC.Base.<> (("status" Data.Aeson.Types.ToJSON..= issuing'disputeStatus obj) GHC.Base.<> (("transaction" Data.Aeson.Types.ToJSON..= issuing'disputeTransaction obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "issuing.dispute")))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON Issuing'dispute where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Issuing'dispute" (\obj -> (((((((((GHC.Base.pure Issuing'dispute GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "balance_transactions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "evidence")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "transaction"))

-- | Create a new 'Issuing'dispute' with all required fields.
mkIssuing'dispute ::
  -- | 'issuing'disputeAmount'
  GHC.Types.Int ->
  -- | 'issuing'disputeCreated'
  GHC.Types.Int ->
  -- | 'issuing'disputeCurrency'
  Data.Text.Internal.Text ->
  -- | 'issuing'disputeEvidence'
  IssuingDisputeEvidence ->
  -- | 'issuing'disputeId'
  Data.Text.Internal.Text ->
  -- | 'issuing'disputeLivemode'
  GHC.Types.Bool ->
  -- | 'issuing'disputeMetadata'
  Data.Aeson.Types.Internal.Object ->
  -- | 'issuing'disputeStatus'
  Issuing'disputeStatus' ->
  -- | 'issuing'disputeTransaction'
  Issuing'disputeTransaction'Variants ->
  Issuing'dispute
mkIssuing'dispute issuing'disputeAmount issuing'disputeCreated issuing'disputeCurrency issuing'disputeEvidence issuing'disputeId issuing'disputeLivemode issuing'disputeMetadata issuing'disputeStatus issuing'disputeTransaction =
  Issuing'dispute
    { issuing'disputeAmount = issuing'disputeAmount,
      issuing'disputeBalanceTransactions = GHC.Maybe.Nothing,
      issuing'disputeCreated = issuing'disputeCreated,
      issuing'disputeCurrency = issuing'disputeCurrency,
      issuing'disputeEvidence = issuing'disputeEvidence,
      issuing'disputeId = issuing'disputeId,
      issuing'disputeLivemode = issuing'disputeLivemode,
      issuing'disputeMetadata = issuing'disputeMetadata,
      issuing'disputeStatus = issuing'disputeStatus,
      issuing'disputeTransaction = issuing'disputeTransaction
    }

-- | Defines the enum schema located at @components.schemas.issuing.dispute.properties.status@ in the specification.
--
-- Current status of the dispute.
data Issuing'disputeStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    Issuing'disputeStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    Issuing'disputeStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"expired"@
    Issuing'disputeStatus'EnumExpired
  | -- | Represents the JSON value @"lost"@
    Issuing'disputeStatus'EnumLost
  | -- | Represents the JSON value @"submitted"@
    Issuing'disputeStatus'EnumSubmitted
  | -- | Represents the JSON value @"unsubmitted"@
    Issuing'disputeStatus'EnumUnsubmitted
  | -- | Represents the JSON value @"won"@
    Issuing'disputeStatus'EnumWon
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON Issuing'disputeStatus' where
  toJSON (Issuing'disputeStatus'Other val) = val
  toJSON (Issuing'disputeStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (Issuing'disputeStatus'EnumExpired) = "expired"
  toJSON (Issuing'disputeStatus'EnumLost) = "lost"
  toJSON (Issuing'disputeStatus'EnumSubmitted) = "submitted"
  toJSON (Issuing'disputeStatus'EnumUnsubmitted) = "unsubmitted"
  toJSON (Issuing'disputeStatus'EnumWon) = "won"

instance Data.Aeson.Types.FromJSON.FromJSON Issuing'disputeStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "expired" -> Issuing'disputeStatus'EnumExpired
            | val GHC.Classes.== "lost" -> Issuing'disputeStatus'EnumLost
            | val GHC.Classes.== "submitted" -> Issuing'disputeStatus'EnumSubmitted
            | val GHC.Classes.== "unsubmitted" -> Issuing'disputeStatus'EnumUnsubmitted
            | val GHC.Classes.== "won" -> Issuing'disputeStatus'EnumWon
            | GHC.Base.otherwise -> Issuing'disputeStatus'Other val
      )

-- | Defines the oneOf schema located at @components.schemas.issuing.dispute.properties.transaction.anyOf@ in the specification.
--
-- The transaction being disputed.
data Issuing'disputeTransaction'Variants
  = Issuing'disputeTransaction'Text Data.Text.Internal.Text
  | Issuing'disputeTransaction'Issuing'transaction Issuing'transaction
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON Issuing'disputeTransaction'Variants where
  toJSON (Issuing'disputeTransaction'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (Issuing'disputeTransaction'Issuing'transaction a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON Issuing'disputeTransaction'Variants where
  parseJSON val = case (Issuing'disputeTransaction'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((Issuing'disputeTransaction'Issuing'transaction Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
