{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema InvoicesStatusTransitions
module StripeAPI.Types.InvoicesStatusTransitions where

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

-- | Defines the object schema located at @components.schemas.invoices_status_transitions@ in the specification.
data InvoicesStatusTransitions = InvoicesStatusTransitions
  { -- | finalized_at: The time that the invoice draft was finalized.
    invoicesStatusTransitionsFinalizedAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | marked_uncollectible_at: The time that the invoice was marked uncollectible.
    invoicesStatusTransitionsMarkedUncollectibleAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | paid_at: The time that the invoice was paid.
    invoicesStatusTransitionsPaidAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | voided_at: The time that the invoice was voided.
    invoicesStatusTransitionsVoidedAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON InvoicesStatusTransitions where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("finalized_at" Data.Aeson.Types.ToJSON..=)) (invoicesStatusTransitionsFinalizedAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("marked_uncollectible_at" Data.Aeson.Types.ToJSON..=)) (invoicesStatusTransitionsMarkedUncollectibleAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("paid_at" Data.Aeson.Types.ToJSON..=)) (invoicesStatusTransitionsPaidAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("voided_at" Data.Aeson.Types.ToJSON..=)) (invoicesStatusTransitionsVoidedAt obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("finalized_at" Data.Aeson.Types.ToJSON..=)) (invoicesStatusTransitionsFinalizedAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("marked_uncollectible_at" Data.Aeson.Types.ToJSON..=)) (invoicesStatusTransitionsMarkedUncollectibleAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("paid_at" Data.Aeson.Types.ToJSON..=)) (invoicesStatusTransitionsPaidAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("voided_at" Data.Aeson.Types.ToJSON..=)) (invoicesStatusTransitionsVoidedAt obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON InvoicesStatusTransitions where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoicesStatusTransitions" (\obj -> (((GHC.Base.pure InvoicesStatusTransitions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "finalized_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "marked_uncollectible_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "paid_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "voided_at"))

-- | Create a new 'InvoicesStatusTransitions' with all required fields.
mkInvoicesStatusTransitions :: InvoicesStatusTransitions
mkInvoicesStatusTransitions =
  InvoicesStatusTransitions
    { invoicesStatusTransitionsFinalizedAt = GHC.Maybe.Nothing,
      invoicesStatusTransitionsMarkedUncollectibleAt = GHC.Maybe.Nothing,
      invoicesStatusTransitionsPaidAt = GHC.Maybe.Nothing,
      invoicesStatusTransitionsVoidedAt = GHC.Maybe.Nothing
    }
