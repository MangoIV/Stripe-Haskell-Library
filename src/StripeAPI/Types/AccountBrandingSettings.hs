{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema AccountBrandingSettings
module StripeAPI.Types.AccountBrandingSettings where

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
import {-# SOURCE #-} StripeAPI.Types.File
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.account_branding_settings@ in the specification.
data AccountBrandingSettings = AccountBrandingSettings
  { -- | icon: (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) An icon for the account. Must be square and at least 128px x 128px.
    accountBrandingSettingsIcon :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable AccountBrandingSettingsIcon'NonNullableVariants)),
    -- | logo: (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) A logo for the account that will be used in Checkout instead of the icon and without the account\'s name next to it if provided. Must be at least 128px x 128px.
    accountBrandingSettingsLogo :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable AccountBrandingSettingsLogo'NonNullableVariants)),
    -- | primary_color: A CSS hex color value representing the primary branding color for this account
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    accountBrandingSettingsPrimaryColor :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | secondary_color: A CSS hex color value representing the secondary branding color for this account
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    accountBrandingSettingsSecondaryColor :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON AccountBrandingSettings where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("icon" Data.Aeson.Types.ToJSON..=)) (accountBrandingSettingsIcon obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("logo" Data.Aeson.Types.ToJSON..=)) (accountBrandingSettingsLogo obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("primary_color" Data.Aeson.Types.ToJSON..=)) (accountBrandingSettingsPrimaryColor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("secondary_color" Data.Aeson.Types.ToJSON..=)) (accountBrandingSettingsSecondaryColor obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("icon" Data.Aeson.Types.ToJSON..=)) (accountBrandingSettingsIcon obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("logo" Data.Aeson.Types.ToJSON..=)) (accountBrandingSettingsLogo obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("primary_color" Data.Aeson.Types.ToJSON..=)) (accountBrandingSettingsPrimaryColor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("secondary_color" Data.Aeson.Types.ToJSON..=)) (accountBrandingSettingsSecondaryColor obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON AccountBrandingSettings where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountBrandingSettings" (\obj -> (((GHC.Base.pure AccountBrandingSettings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "icon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "logo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "primary_color")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "secondary_color"))

-- | Create a new 'AccountBrandingSettings' with all required fields.
mkAccountBrandingSettings :: AccountBrandingSettings
mkAccountBrandingSettings =
  AccountBrandingSettings
    { accountBrandingSettingsIcon = GHC.Maybe.Nothing,
      accountBrandingSettingsLogo = GHC.Maybe.Nothing,
      accountBrandingSettingsPrimaryColor = GHC.Maybe.Nothing,
      accountBrandingSettingsSecondaryColor = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.account_branding_settings.properties.icon.anyOf@ in the specification.
--
-- (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) An icon for the account. Must be square and at least 128px x 128px.
data AccountBrandingSettingsIcon'NonNullableVariants
  = AccountBrandingSettingsIcon'NonNullableText Data.Text.Internal.Text
  | AccountBrandingSettingsIcon'NonNullableFile File
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON AccountBrandingSettingsIcon'NonNullableVariants where
  toJSON (AccountBrandingSettingsIcon'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (AccountBrandingSettingsIcon'NonNullableFile a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON AccountBrandingSettingsIcon'NonNullableVariants where
  parseJSON val = case (AccountBrandingSettingsIcon'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((AccountBrandingSettingsIcon'NonNullableFile Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.account_branding_settings.properties.logo.anyOf@ in the specification.
--
-- (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) A logo for the account that will be used in Checkout instead of the icon and without the account\'s name next to it if provided. Must be at least 128px x 128px.
data AccountBrandingSettingsLogo'NonNullableVariants
  = AccountBrandingSettingsLogo'NonNullableText Data.Text.Internal.Text
  | AccountBrandingSettingsLogo'NonNullableFile File
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON AccountBrandingSettingsLogo'NonNullableVariants where
  toJSON (AccountBrandingSettingsLogo'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (AccountBrandingSettingsLogo'NonNullableFile a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON AccountBrandingSettingsLogo'NonNullableVariants where
  parseJSON val = case (AccountBrandingSettingsLogo'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((AccountBrandingSettingsLogo'NonNullableFile Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
