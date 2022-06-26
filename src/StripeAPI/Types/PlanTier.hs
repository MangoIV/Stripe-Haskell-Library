{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PlanTier
module StripeAPI.Types.PlanTier where

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

-- | Defines the object schema located at @components.schemas.plan_tier@ in the specification.
data PlanTier = PlanTier
  { -- | flat_amount: Price for the entire tier.
    planTierFlatAmount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | flat_amount_decimal: Same as \`flat_amount\`, but contains a decimal value with at most 12 decimal places.
    planTierFlatAmountDecimal :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | unit_amount: Per unit price for units relevant to the tier.
    planTierUnitAmount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | unit_amount_decimal: Same as \`unit_amount\`, but contains a decimal value with at most 12 decimal places.
    planTierUnitAmountDecimal :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | up_to: Up to and including to this quantity will be contained in the tier.
    planTierUpTo :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PlanTier where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flat_amount" Data.Aeson.Types.ToJSON..=)) (planTierFlatAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flat_amount_decimal" Data.Aeson.Types.ToJSON..=)) (planTierFlatAmountDecimal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount" Data.Aeson.Types.ToJSON..=)) (planTierUnitAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount_decimal" Data.Aeson.Types.ToJSON..=)) (planTierUnitAmountDecimal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("up_to" Data.Aeson.Types.ToJSON..=)) (planTierUpTo obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flat_amount" Data.Aeson.Types.ToJSON..=)) (planTierFlatAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flat_amount_decimal" Data.Aeson.Types.ToJSON..=)) (planTierFlatAmountDecimal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount" Data.Aeson.Types.ToJSON..=)) (planTierUnitAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount_decimal" Data.Aeson.Types.ToJSON..=)) (planTierUnitAmountDecimal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("up_to" Data.Aeson.Types.ToJSON..=)) (planTierUpTo obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PlanTier where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PlanTier" (\obj -> ((((GHC.Base.pure PlanTier GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "flat_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "flat_amount_decimal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "unit_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "unit_amount_decimal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "up_to"))

-- | Create a new 'PlanTier' with all required fields.
mkPlanTier :: PlanTier
mkPlanTier =
  PlanTier
    { planTierFlatAmount = GHC.Maybe.Nothing,
      planTierFlatAmountDecimal = GHC.Maybe.Nothing,
      planTierUnitAmount = GHC.Maybe.Nothing,
      planTierUnitAmountDecimal = GHC.Maybe.Nothing,
      planTierUpTo = GHC.Maybe.Nothing
    }
