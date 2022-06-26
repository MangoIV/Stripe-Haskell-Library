{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions
module StripeAPI.Types.TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.treasury_transactions_resource_abstract_transaction_resource_status_transitions@ in the specification.
data TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions = TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions
  { -- | posted_at: Timestamp describing when the Transaction changed status to \`posted\`.
    treasuryTransactionsResourceAbstractTransactionResourceStatusTransitionsPostedAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | void_at: Timestamp describing when the Transaction changed status to \`void\`.
    treasuryTransactionsResourceAbstractTransactionResourceStatusTransitionsVoidAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("posted_at" Data.Aeson.Types.ToJSON..=)) (treasuryTransactionsResourceAbstractTransactionResourceStatusTransitionsPostedAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("void_at" Data.Aeson.Types.ToJSON..=)) (treasuryTransactionsResourceAbstractTransactionResourceStatusTransitionsVoidAt obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("posted_at" Data.Aeson.Types.ToJSON..=)) (treasuryTransactionsResourceAbstractTransactionResourceStatusTransitionsPostedAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("void_at" Data.Aeson.Types.ToJSON..=)) (treasuryTransactionsResourceAbstractTransactionResourceStatusTransitionsVoidAt obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions" (\obj -> (GHC.Base.pure TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "posted_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "void_at"))

-- | Create a new 'TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions' with all required fields.
mkTreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions :: TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions
mkTreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions =
  TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions
    { treasuryTransactionsResourceAbstractTransactionResourceStatusTransitionsPostedAt = GHC.Maybe.Nothing,
      treasuryTransactionsResourceAbstractTransactionResourceStatusTransitionsVoidAt = GHC.Maybe.Nothing
    }
