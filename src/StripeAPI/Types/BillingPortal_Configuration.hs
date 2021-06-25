{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema BillingPortal_Configuration
module StripeAPI.Types.BillingPortal_Configuration where

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
import {-# SOURCE #-} StripeAPI.Types.PortalBusinessProfile
import {-# SOURCE #-} StripeAPI.Types.PortalFeatures
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.billing_portal.configuration@ in the specification.
--
-- A portal configuration describes the functionality and behavior of a portal session.
data BillingPortal'configuration = BillingPortal'configuration
  { -- | active: Whether the configuration is active and can be used to create portal sessions.
    billingPortal'configurationActive :: GHC.Types.Bool,
    -- | application: ID of the Connect Application that created the configuration.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    billingPortal'configurationApplication :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | business_profile:
    billingPortal'configurationBusinessProfile :: PortalBusinessProfile,
    -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    billingPortal'configurationCreated :: GHC.Types.Int,
    -- | default_return_url: The default URL to redirect customers to when they click on the portal\'s link to return to your website. This can be [overriden](https:\/\/stripe.com\/docs\/api\/customer_portal\/sessions\/create\#create_portal_session-return_url) when creating the session.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    billingPortal'configurationDefaultReturnUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | features:
    billingPortal'configurationFeatures :: PortalFeatures,
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    billingPortal'configurationId :: Data.Text.Internal.Text,
    -- | is_default: Whether the configuration is the default. If \`true\`, this configuration can be managed in the Dashboard and portal sessions will use this configuration unless it is overriden when creating the session.
    billingPortal'configurationIsDefault :: GHC.Types.Bool,
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    billingPortal'configurationLivemode :: GHC.Types.Bool,
    -- | updated: Time at which the object was last updated. Measured in seconds since the Unix epoch.
    billingPortal'configurationUpdated :: GHC.Types.Int
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON BillingPortal'configuration where
  toJSON obj = Data.Aeson.Types.Internal.object ("active" Data.Aeson.Types.ToJSON..= billingPortal'configurationActive obj : "application" Data.Aeson.Types.ToJSON..= billingPortal'configurationApplication obj : "business_profile" Data.Aeson.Types.ToJSON..= billingPortal'configurationBusinessProfile obj : "created" Data.Aeson.Types.ToJSON..= billingPortal'configurationCreated obj : "default_return_url" Data.Aeson.Types.ToJSON..= billingPortal'configurationDefaultReturnUrl obj : "features" Data.Aeson.Types.ToJSON..= billingPortal'configurationFeatures obj : "id" Data.Aeson.Types.ToJSON..= billingPortal'configurationId obj : "is_default" Data.Aeson.Types.ToJSON..= billingPortal'configurationIsDefault obj : "livemode" Data.Aeson.Types.ToJSON..= billingPortal'configurationLivemode obj : "updated" Data.Aeson.Types.ToJSON..= billingPortal'configurationUpdated obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "billing_portal.configuration" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("active" Data.Aeson.Types.ToJSON..= billingPortal'configurationActive obj) GHC.Base.<> (("application" Data.Aeson.Types.ToJSON..= billingPortal'configurationApplication obj) GHC.Base.<> (("business_profile" Data.Aeson.Types.ToJSON..= billingPortal'configurationBusinessProfile obj) GHC.Base.<> (("created" Data.Aeson.Types.ToJSON..= billingPortal'configurationCreated obj) GHC.Base.<> (("default_return_url" Data.Aeson.Types.ToJSON..= billingPortal'configurationDefaultReturnUrl obj) GHC.Base.<> (("features" Data.Aeson.Types.ToJSON..= billingPortal'configurationFeatures obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= billingPortal'configurationId obj) GHC.Base.<> (("is_default" Data.Aeson.Types.ToJSON..= billingPortal'configurationIsDefault obj) GHC.Base.<> (("livemode" Data.Aeson.Types.ToJSON..= billingPortal'configurationLivemode obj) GHC.Base.<> (("updated" Data.Aeson.Types.ToJSON..= billingPortal'configurationUpdated obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "billing_portal.configuration")))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON BillingPortal'configuration where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "BillingPortal'configuration" (\obj -> (((((((((GHC.Base.pure BillingPortal'configuration GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "business_profile")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_return_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "features")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "is_default")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "updated"))

-- | Create a new 'BillingPortal'configuration' with all required fields.
mkBillingPortal'configuration ::
  -- | 'billingPortal'configurationActive'
  GHC.Types.Bool ->
  -- | 'billingPortal'configurationBusinessProfile'
  PortalBusinessProfile ->
  -- | 'billingPortal'configurationCreated'
  GHC.Types.Int ->
  -- | 'billingPortal'configurationFeatures'
  PortalFeatures ->
  -- | 'billingPortal'configurationId'
  Data.Text.Internal.Text ->
  -- | 'billingPortal'configurationIsDefault'
  GHC.Types.Bool ->
  -- | 'billingPortal'configurationLivemode'
  GHC.Types.Bool ->
  -- | 'billingPortal'configurationUpdated'
  GHC.Types.Int ->
  BillingPortal'configuration
mkBillingPortal'configuration billingPortal'configurationActive billingPortal'configurationBusinessProfile billingPortal'configurationCreated billingPortal'configurationFeatures billingPortal'configurationId billingPortal'configurationIsDefault billingPortal'configurationLivemode billingPortal'configurationUpdated =
  BillingPortal'configuration
    { billingPortal'configurationActive = billingPortal'configurationActive,
      billingPortal'configurationApplication = GHC.Maybe.Nothing,
      billingPortal'configurationBusinessProfile = billingPortal'configurationBusinessProfile,
      billingPortal'configurationCreated = billingPortal'configurationCreated,
      billingPortal'configurationDefaultReturnUrl = GHC.Maybe.Nothing,
      billingPortal'configurationFeatures = billingPortal'configurationFeatures,
      billingPortal'configurationId = billingPortal'configurationId,
      billingPortal'configurationIsDefault = billingPortal'configurationIsDefault,
      billingPortal'configurationLivemode = billingPortal'configurationLivemode,
      billingPortal'configurationUpdated = billingPortal'configurationUpdated
    }
