{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PortalBusinessProfile
module StripeAPI.Types.PortalBusinessProfile where

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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.portal_business_profile@ in the specification.
data PortalBusinessProfile = PortalBusinessProfile
  { -- | headline: The messaging shown to customers in the portal.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    portalBusinessProfileHeadline :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | privacy_policy_url: A link to the business’s publicly available privacy policy.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    portalBusinessProfilePrivacyPolicyUrl :: Data.Text.Internal.Text,
    -- | terms_of_service_url: A link to the business’s publicly available terms of service.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    portalBusinessProfileTermsOfServiceUrl :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PortalBusinessProfile where
  toJSON obj = Data.Aeson.Types.Internal.object ("headline" Data.Aeson.Types.ToJSON..= portalBusinessProfileHeadline obj : "privacy_policy_url" Data.Aeson.Types.ToJSON..= portalBusinessProfilePrivacyPolicyUrl obj : "terms_of_service_url" Data.Aeson.Types.ToJSON..= portalBusinessProfileTermsOfServiceUrl obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("headline" Data.Aeson.Types.ToJSON..= portalBusinessProfileHeadline obj) GHC.Base.<> (("privacy_policy_url" Data.Aeson.Types.ToJSON..= portalBusinessProfilePrivacyPolicyUrl obj) GHC.Base.<> ("terms_of_service_url" Data.Aeson.Types.ToJSON..= portalBusinessProfileTermsOfServiceUrl obj)))

instance Data.Aeson.Types.FromJSON.FromJSON PortalBusinessProfile where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PortalBusinessProfile" (\obj -> ((GHC.Base.pure PortalBusinessProfile GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "headline")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "privacy_policy_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "terms_of_service_url"))

-- | Create a new 'PortalBusinessProfile' with all required fields.
mkPortalBusinessProfile ::
  -- | 'portalBusinessProfilePrivacyPolicyUrl'
  Data.Text.Internal.Text ->
  -- | 'portalBusinessProfileTermsOfServiceUrl'
  Data.Text.Internal.Text ->
  PortalBusinessProfile
mkPortalBusinessProfile portalBusinessProfilePrivacyPolicyUrl portalBusinessProfileTermsOfServiceUrl =
  PortalBusinessProfile
    { portalBusinessProfileHeadline = GHC.Maybe.Nothing,
      portalBusinessProfilePrivacyPolicyUrl = portalBusinessProfilePrivacyPolicyUrl,
      portalBusinessProfileTermsOfServiceUrl = portalBusinessProfileTermsOfServiceUrl
    }
