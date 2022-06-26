{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema TerminalConfigurationConfigurationResourceCurrencySpecificConfig
module StripeAPI.Types.TerminalConfigurationConfigurationResourceCurrencySpecificConfig where

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

-- | Defines the object schema located at @components.schemas.terminal_configuration_configuration_resource_currency_specific_config@ in the specification.
data TerminalConfigurationConfigurationResourceCurrencySpecificConfig = TerminalConfigurationConfigurationResourceCurrencySpecificConfig
  { -- | fixed_amounts: Fixed amounts displayed when collecting a tip
    terminalConfigurationConfigurationResourceCurrencySpecificConfigFixedAmounts :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([GHC.Types.Int]))),
    -- | percentages: Percentages displayed when collecting a tip
    terminalConfigurationConfigurationResourceCurrencySpecificConfigPercentages :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([GHC.Types.Int]))),
    -- | smart_tip_threshold: Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
    terminalConfigurationConfigurationResourceCurrencySpecificConfigSmartTipThreshold :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON TerminalConfigurationConfigurationResourceCurrencySpecificConfig where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fixed_amounts" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceCurrencySpecificConfigFixedAmounts obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("percentages" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceCurrencySpecificConfigPercentages obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("smart_tip_threshold" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceCurrencySpecificConfigSmartTipThreshold obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fixed_amounts" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceCurrencySpecificConfigFixedAmounts obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("percentages" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceCurrencySpecificConfigPercentages obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("smart_tip_threshold" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceCurrencySpecificConfigSmartTipThreshold obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON TerminalConfigurationConfigurationResourceCurrencySpecificConfig where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "TerminalConfigurationConfigurationResourceCurrencySpecificConfig" (\obj -> ((GHC.Base.pure TerminalConfigurationConfigurationResourceCurrencySpecificConfig GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "fixed_amounts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "percentages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "smart_tip_threshold"))

-- | Create a new 'TerminalConfigurationConfigurationResourceCurrencySpecificConfig' with all required fields.
mkTerminalConfigurationConfigurationResourceCurrencySpecificConfig :: TerminalConfigurationConfigurationResourceCurrencySpecificConfig
mkTerminalConfigurationConfigurationResourceCurrencySpecificConfig =
  TerminalConfigurationConfigurationResourceCurrencySpecificConfig
    { terminalConfigurationConfigurationResourceCurrencySpecificConfigFixedAmounts = GHC.Maybe.Nothing,
      terminalConfigurationConfigurationResourceCurrencySpecificConfigPercentages = GHC.Maybe.Nothing,
      terminalConfigurationConfigurationResourceCurrencySpecificConfigSmartTipThreshold = GHC.Maybe.Nothing
    }
