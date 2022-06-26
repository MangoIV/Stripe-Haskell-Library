{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SepaDebitGeneratedFrom
module StripeAPI.Types.SepaDebitGeneratedFrom where

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
import {-# SOURCE #-} StripeAPI.Types.Charge
import {-# SOURCE #-} StripeAPI.Types.SetupAttempt
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.sepa_debit_generated_from@ in the specification.
data SepaDebitGeneratedFrom = SepaDebitGeneratedFrom
  { -- | charge: The ID of the Charge that generated this PaymentMethod, if any.
    sepaDebitGeneratedFromCharge :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SepaDebitGeneratedFromCharge'NonNullableVariants)),
    -- | setup_attempt: The ID of the SetupAttempt that generated this PaymentMethod, if any.
    sepaDebitGeneratedFromSetupAttempt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SepaDebitGeneratedFromSetupAttempt'NonNullableVariants))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SepaDebitGeneratedFrom where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("charge" Data.Aeson.Types.ToJSON..=)) (sepaDebitGeneratedFromCharge obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_attempt" Data.Aeson.Types.ToJSON..=)) (sepaDebitGeneratedFromSetupAttempt obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("charge" Data.Aeson.Types.ToJSON..=)) (sepaDebitGeneratedFromCharge obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_attempt" Data.Aeson.Types.ToJSON..=)) (sepaDebitGeneratedFromSetupAttempt obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SepaDebitGeneratedFrom where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SepaDebitGeneratedFrom" (\obj -> (GHC.Base.pure SepaDebitGeneratedFrom GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "charge")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "setup_attempt"))

-- | Create a new 'SepaDebitGeneratedFrom' with all required fields.
mkSepaDebitGeneratedFrom :: SepaDebitGeneratedFrom
mkSepaDebitGeneratedFrom =
  SepaDebitGeneratedFrom
    { sepaDebitGeneratedFromCharge = GHC.Maybe.Nothing,
      sepaDebitGeneratedFromSetupAttempt = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.sepa_debit_generated_from.properties.charge.anyOf@ in the specification.
--
-- The ID of the Charge that generated this PaymentMethod, if any.
data SepaDebitGeneratedFromCharge'NonNullableVariants
  = SepaDebitGeneratedFromCharge'NonNullableText Data.Text.Internal.Text
  | SepaDebitGeneratedFromCharge'NonNullableCharge Charge
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SepaDebitGeneratedFromCharge'NonNullableVariants where
  toJSON (SepaDebitGeneratedFromCharge'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (SepaDebitGeneratedFromCharge'NonNullableCharge a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON SepaDebitGeneratedFromCharge'NonNullableVariants where
  parseJSON val = case (SepaDebitGeneratedFromCharge'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SepaDebitGeneratedFromCharge'NonNullableCharge Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.sepa_debit_generated_from.properties.setup_attempt.anyOf@ in the specification.
--
-- The ID of the SetupAttempt that generated this PaymentMethod, if any.
data SepaDebitGeneratedFromSetupAttempt'NonNullableVariants
  = SepaDebitGeneratedFromSetupAttempt'NonNullableText Data.Text.Internal.Text
  | SepaDebitGeneratedFromSetupAttempt'NonNullableSetupAttempt SetupAttempt
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SepaDebitGeneratedFromSetupAttempt'NonNullableVariants where
  toJSON (SepaDebitGeneratedFromSetupAttempt'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (SepaDebitGeneratedFromSetupAttempt'NonNullableSetupAttempt a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON SepaDebitGeneratedFromSetupAttempt'NonNullableVariants where
  parseJSON val = case (SepaDebitGeneratedFromSetupAttempt'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SepaDebitGeneratedFromSetupAttempt'NonNullableSetupAttempt Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
