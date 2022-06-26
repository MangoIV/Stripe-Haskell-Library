{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema AutomaticTax
module StripeAPI.Types.AutomaticTax where

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

-- | Defines the object schema located at @components.schemas.automatic_tax@ in the specification.
data AutomaticTax = AutomaticTax
  { -- | enabled: Whether Stripe automatically computes tax on this invoice.
    automaticTaxEnabled :: GHC.Types.Bool,
    -- | status: The status of the most recent automated tax calculation for this invoice.
    automaticTaxStatus :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable AutomaticTaxStatus'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON AutomaticTax where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= automaticTaxEnabled obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status" Data.Aeson.Types.ToJSON..=)) (automaticTaxStatus obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= automaticTaxEnabled obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status" Data.Aeson.Types.ToJSON..=)) (automaticTaxStatus obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON AutomaticTax where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "AutomaticTax" (\obj -> (GHC.Base.pure AutomaticTax GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "status"))

-- | Create a new 'AutomaticTax' with all required fields.
mkAutomaticTax ::
  -- | 'automaticTaxEnabled'
  GHC.Types.Bool ->
  AutomaticTax
mkAutomaticTax automaticTaxEnabled =
  AutomaticTax
    { automaticTaxEnabled = automaticTaxEnabled,
      automaticTaxStatus = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.automatic_tax.properties.status@ in the specification.
--
-- The status of the most recent automated tax calculation for this invoice.
data AutomaticTaxStatus'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    AutomaticTaxStatus'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    AutomaticTaxStatus'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"complete"@
    AutomaticTaxStatus'NonNullableEnumComplete
  | -- | Represents the JSON value @"failed"@
    AutomaticTaxStatus'NonNullableEnumFailed
  | -- | Represents the JSON value @"requires_location_inputs"@
    AutomaticTaxStatus'NonNullableEnumRequiresLocationInputs
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON AutomaticTaxStatus'NonNullable where
  toJSON (AutomaticTaxStatus'NonNullableOther val) = val
  toJSON (AutomaticTaxStatus'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (AutomaticTaxStatus'NonNullableEnumComplete) = "complete"
  toJSON (AutomaticTaxStatus'NonNullableEnumFailed) = "failed"
  toJSON (AutomaticTaxStatus'NonNullableEnumRequiresLocationInputs) = "requires_location_inputs"

instance Data.Aeson.Types.FromJSON.FromJSON AutomaticTaxStatus'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "complete" -> AutomaticTaxStatus'NonNullableEnumComplete
            | val GHC.Classes.== "failed" -> AutomaticTaxStatus'NonNullableEnumFailed
            | val GHC.Classes.== "requires_location_inputs" -> AutomaticTaxStatus'NonNullableEnumRequiresLocationInputs
            | GHC.Base.otherwise -> AutomaticTaxStatus'NonNullableOther val
      )
