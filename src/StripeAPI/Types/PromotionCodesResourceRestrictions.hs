{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PromotionCodesResourceRestrictions
module StripeAPI.Types.PromotionCodesResourceRestrictions where

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

-- | Defines the object schema located at @components.schemas.promotion_codes_resource_restrictions@ in the specification.
data PromotionCodesResourceRestrictions = PromotionCodesResourceRestrictions
  { -- | first_time_transaction: A Boolean indicating if the Promotion Code should only be redeemed for Customers without any successful payments or invoices
    promotionCodesResourceRestrictionsFirstTimeTransaction :: GHC.Types.Bool,
    -- | minimum_amount: Minimum amount required to redeem this Promotion Code into a Coupon (e.g., a purchase must be \$100 or more to work).
    promotionCodesResourceRestrictionsMinimumAmount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | minimum_amount_currency: Three-letter [ISO code](https:\/\/stripe.com\/docs\/currencies) for minimum_amount
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    promotionCodesResourceRestrictionsMinimumAmountCurrency :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PromotionCodesResourceRestrictions where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["first_time_transaction" Data.Aeson.Types.ToJSON..= promotionCodesResourceRestrictionsFirstTimeTransaction obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("minimum_amount" Data.Aeson.Types.ToJSON..=)) (promotionCodesResourceRestrictionsMinimumAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("minimum_amount_currency" Data.Aeson.Types.ToJSON..=)) (promotionCodesResourceRestrictionsMinimumAmountCurrency obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["first_time_transaction" Data.Aeson.Types.ToJSON..= promotionCodesResourceRestrictionsFirstTimeTransaction obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("minimum_amount" Data.Aeson.Types.ToJSON..=)) (promotionCodesResourceRestrictionsMinimumAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("minimum_amount_currency" Data.Aeson.Types.ToJSON..=)) (promotionCodesResourceRestrictionsMinimumAmountCurrency obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PromotionCodesResourceRestrictions where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PromotionCodesResourceRestrictions" (\obj -> ((GHC.Base.pure PromotionCodesResourceRestrictions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "first_time_transaction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "minimum_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "minimum_amount_currency"))

-- | Create a new 'PromotionCodesResourceRestrictions' with all required fields.
mkPromotionCodesResourceRestrictions ::
  -- | 'promotionCodesResourceRestrictionsFirstTimeTransaction'
  GHC.Types.Bool ->
  PromotionCodesResourceRestrictions
mkPromotionCodesResourceRestrictions promotionCodesResourceRestrictionsFirstTimeTransaction =
  PromotionCodesResourceRestrictions
    { promotionCodesResourceRestrictionsFirstTimeTransaction = promotionCodesResourceRestrictionsFirstTimeTransaction,
      promotionCodesResourceRestrictionsMinimumAmount = GHC.Maybe.Nothing,
      promotionCodesResourceRestrictionsMinimumAmountCurrency = GHC.Maybe.Nothing
    }
