{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema AccountCapabilityRequirements
module StripeAPI.Types.AccountCapabilityRequirements where

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
import {-# SOURCE #-} StripeAPI.Types.AccountRequirementsError
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.account_capability_requirements@ in the specification.
data AccountCapabilityRequirements = AccountCapabilityRequirements
  { -- | current_deadline: Date by which the fields in \`currently_due\` must be collected to keep the capability enabled for the account. These fields may disable the capability sooner if the next threshold is reached before they are collected.
    accountCapabilityRequirementsCurrentDeadline :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | currently_due: Fields that need to be collected to keep the capability enabled. If not collected by \`current_deadline\`, these fields appear in \`past_due\` as well, and the capability is disabled.
    accountCapabilityRequirementsCurrentlyDue :: ([Data.Text.Internal.Text]),
    -- | disabled_reason: If the capability is disabled, this string describes why. Can be \`requirements.past_due\`, \`requirements.pending_verification\`, \`listed\`, \`platform_paused\`, \`rejected.fraud\`, \`rejected.listed\`, \`rejected.terms_of_service\`, \`rejected.other\`, \`under_review\`, or \`other\`.
    --
    -- \`rejected.unsupported_business\` means that the account\'s business is not supported by the capability. For example, payment methods may restrict the businesses they support in their terms of service:
    --
    -- - [Afterpay Clearpay\'s terms of service](\/afterpay-clearpay\/legal\#restricted-businesses)
    --
    -- If you believe that the rejection is in error, please contact support\@stripe.com for assistance.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    accountCapabilityRequirementsDisabledReason :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | errors: Fields that are \`currently_due\` and need to be collected again because validation or verification failed.
    accountCapabilityRequirementsErrors :: ([AccountRequirementsError]),
    -- | eventually_due: Fields that need to be collected assuming all volume thresholds are reached. As they become required, they appear in \`currently_due\` as well, and \`current_deadline\` becomes set.
    accountCapabilityRequirementsEventuallyDue :: ([Data.Text.Internal.Text]),
    -- | past_due: Fields that weren\'t collected by \`current_deadline\`. These fields need to be collected to enable the capability on the account.
    accountCapabilityRequirementsPastDue :: ([Data.Text.Internal.Text]),
    -- | pending_verification: Fields that may become required depending on the results of verification or review. Will be an empty array unless an asynchronous verification is pending. If verification fails, these fields move to \`eventually_due\`, \`currently_due\`, or \`past_due\`.
    accountCapabilityRequirementsPendingVerification :: ([Data.Text.Internal.Text])
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON AccountCapabilityRequirements where
  toJSON obj = Data.Aeson.Types.Internal.object ("current_deadline" Data.Aeson.Types.ToJSON..= accountCapabilityRequirementsCurrentDeadline obj : "currently_due" Data.Aeson.Types.ToJSON..= accountCapabilityRequirementsCurrentlyDue obj : "disabled_reason" Data.Aeson.Types.ToJSON..= accountCapabilityRequirementsDisabledReason obj : "errors" Data.Aeson.Types.ToJSON..= accountCapabilityRequirementsErrors obj : "eventually_due" Data.Aeson.Types.ToJSON..= accountCapabilityRequirementsEventuallyDue obj : "past_due" Data.Aeson.Types.ToJSON..= accountCapabilityRequirementsPastDue obj : "pending_verification" Data.Aeson.Types.ToJSON..= accountCapabilityRequirementsPendingVerification obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("current_deadline" Data.Aeson.Types.ToJSON..= accountCapabilityRequirementsCurrentDeadline obj) GHC.Base.<> (("currently_due" Data.Aeson.Types.ToJSON..= accountCapabilityRequirementsCurrentlyDue obj) GHC.Base.<> (("disabled_reason" Data.Aeson.Types.ToJSON..= accountCapabilityRequirementsDisabledReason obj) GHC.Base.<> (("errors" Data.Aeson.Types.ToJSON..= accountCapabilityRequirementsErrors obj) GHC.Base.<> (("eventually_due" Data.Aeson.Types.ToJSON..= accountCapabilityRequirementsEventuallyDue obj) GHC.Base.<> (("past_due" Data.Aeson.Types.ToJSON..= accountCapabilityRequirementsPastDue obj) GHC.Base.<> ("pending_verification" Data.Aeson.Types.ToJSON..= accountCapabilityRequirementsPendingVerification obj)))))))

instance Data.Aeson.Types.FromJSON.FromJSON AccountCapabilityRequirements where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountCapabilityRequirements" (\obj -> ((((((GHC.Base.pure AccountCapabilityRequirements GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "current_deadline")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currently_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disabled_reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "errors")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "eventually_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "past_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pending_verification"))

-- | Create a new 'AccountCapabilityRequirements' with all required fields.
mkAccountCapabilityRequirements ::
  -- | 'accountCapabilityRequirementsCurrentlyDue'
  [Data.Text.Internal.Text] ->
  -- | 'accountCapabilityRequirementsErrors'
  [AccountRequirementsError] ->
  -- | 'accountCapabilityRequirementsEventuallyDue'
  [Data.Text.Internal.Text] ->
  -- | 'accountCapabilityRequirementsPastDue'
  [Data.Text.Internal.Text] ->
  -- | 'accountCapabilityRequirementsPendingVerification'
  [Data.Text.Internal.Text] ->
  AccountCapabilityRequirements
mkAccountCapabilityRequirements accountCapabilityRequirementsCurrentlyDue accountCapabilityRequirementsErrors accountCapabilityRequirementsEventuallyDue accountCapabilityRequirementsPastDue accountCapabilityRequirementsPendingVerification =
  AccountCapabilityRequirements
    { accountCapabilityRequirementsCurrentDeadline = GHC.Maybe.Nothing,
      accountCapabilityRequirementsCurrentlyDue = accountCapabilityRequirementsCurrentlyDue,
      accountCapabilityRequirementsDisabledReason = GHC.Maybe.Nothing,
      accountCapabilityRequirementsErrors = accountCapabilityRequirementsErrors,
      accountCapabilityRequirementsEventuallyDue = accountCapabilityRequirementsEventuallyDue,
      accountCapabilityRequirementsPastDue = accountCapabilityRequirementsPastDue,
      accountCapabilityRequirementsPendingVerification = accountCapabilityRequirementsPendingVerification
    }
