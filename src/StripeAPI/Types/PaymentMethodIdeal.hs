{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodIdeal
module StripeAPI.Types.PaymentMethodIdeal where

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

-- | Defines the object schema located at @components.schemas.payment_method_ideal@ in the specification.
data PaymentMethodIdeal = PaymentMethodIdeal
  { -- | bank: The customer\'s bank, if provided. Can be one of \`abn_amro\`, \`asn_bank\`, \`bunq\`, \`handelsbanken\`, \`ing\`, \`knab\`, \`moneyou\`, \`rabobank\`, \`regiobank\`, \`revolut\`, \`sns_bank\`, \`triodos_bank\`, or \`van_lanschot\`.
    paymentMethodIdealBank :: (GHC.Maybe.Maybe PaymentMethodIdealBank'),
    -- | bic: The Bank Identifier Code of the customer\'s bank, if the bank was provided.
    paymentMethodIdealBic :: (GHC.Maybe.Maybe PaymentMethodIdealBic')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodIdeal where
  toJSON obj = Data.Aeson.Types.Internal.object ("bank" Data.Aeson.Types.ToJSON..= paymentMethodIdealBank obj : "bic" Data.Aeson.Types.ToJSON..= paymentMethodIdealBic obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("bank" Data.Aeson.Types.ToJSON..= paymentMethodIdealBank obj) GHC.Base.<> ("bic" Data.Aeson.Types.ToJSON..= paymentMethodIdealBic obj))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodIdeal where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodIdeal" (\obj -> (GHC.Base.pure PaymentMethodIdeal GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bic"))

-- | Create a new 'PaymentMethodIdeal' with all required fields.
mkPaymentMethodIdeal :: PaymentMethodIdeal
mkPaymentMethodIdeal =
  PaymentMethodIdeal
    { paymentMethodIdealBank = GHC.Maybe.Nothing,
      paymentMethodIdealBic = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_method_ideal.properties.bank@ in the specification.
--
-- The customer\'s bank, if provided. Can be one of \`abn_amro\`, \`asn_bank\`, \`bunq\`, \`handelsbanken\`, \`ing\`, \`knab\`, \`moneyou\`, \`rabobank\`, \`regiobank\`, \`revolut\`, \`sns_bank\`, \`triodos_bank\`, or \`van_lanschot\`.
data PaymentMethodIdealBank'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodIdealBank'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodIdealBank'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"abn_amro"@
    PaymentMethodIdealBank'EnumAbnAmro
  | -- | Represents the JSON value @"asn_bank"@
    PaymentMethodIdealBank'EnumAsnBank
  | -- | Represents the JSON value @"bunq"@
    PaymentMethodIdealBank'EnumBunq
  | -- | Represents the JSON value @"handelsbanken"@
    PaymentMethodIdealBank'EnumHandelsbanken
  | -- | Represents the JSON value @"ing"@
    PaymentMethodIdealBank'EnumIng
  | -- | Represents the JSON value @"knab"@
    PaymentMethodIdealBank'EnumKnab
  | -- | Represents the JSON value @"moneyou"@
    PaymentMethodIdealBank'EnumMoneyou
  | -- | Represents the JSON value @"rabobank"@
    PaymentMethodIdealBank'EnumRabobank
  | -- | Represents the JSON value @"regiobank"@
    PaymentMethodIdealBank'EnumRegiobank
  | -- | Represents the JSON value @"revolut"@
    PaymentMethodIdealBank'EnumRevolut
  | -- | Represents the JSON value @"sns_bank"@
    PaymentMethodIdealBank'EnumSnsBank
  | -- | Represents the JSON value @"triodos_bank"@
    PaymentMethodIdealBank'EnumTriodosBank
  | -- | Represents the JSON value @"van_lanschot"@
    PaymentMethodIdealBank'EnumVanLanschot
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodIdealBank' where
  toJSON (PaymentMethodIdealBank'Other val) = val
  toJSON (PaymentMethodIdealBank'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodIdealBank'EnumAbnAmro) = "abn_amro"
  toJSON (PaymentMethodIdealBank'EnumAsnBank) = "asn_bank"
  toJSON (PaymentMethodIdealBank'EnumBunq) = "bunq"
  toJSON (PaymentMethodIdealBank'EnumHandelsbanken) = "handelsbanken"
  toJSON (PaymentMethodIdealBank'EnumIng) = "ing"
  toJSON (PaymentMethodIdealBank'EnumKnab) = "knab"
  toJSON (PaymentMethodIdealBank'EnumMoneyou) = "moneyou"
  toJSON (PaymentMethodIdealBank'EnumRabobank) = "rabobank"
  toJSON (PaymentMethodIdealBank'EnumRegiobank) = "regiobank"
  toJSON (PaymentMethodIdealBank'EnumRevolut) = "revolut"
  toJSON (PaymentMethodIdealBank'EnumSnsBank) = "sns_bank"
  toJSON (PaymentMethodIdealBank'EnumTriodosBank) = "triodos_bank"
  toJSON (PaymentMethodIdealBank'EnumVanLanschot) = "van_lanschot"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodIdealBank' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "abn_amro" -> PaymentMethodIdealBank'EnumAbnAmro
            | val GHC.Classes.== "asn_bank" -> PaymentMethodIdealBank'EnumAsnBank
            | val GHC.Classes.== "bunq" -> PaymentMethodIdealBank'EnumBunq
            | val GHC.Classes.== "handelsbanken" -> PaymentMethodIdealBank'EnumHandelsbanken
            | val GHC.Classes.== "ing" -> PaymentMethodIdealBank'EnumIng
            | val GHC.Classes.== "knab" -> PaymentMethodIdealBank'EnumKnab
            | val GHC.Classes.== "moneyou" -> PaymentMethodIdealBank'EnumMoneyou
            | val GHC.Classes.== "rabobank" -> PaymentMethodIdealBank'EnumRabobank
            | val GHC.Classes.== "regiobank" -> PaymentMethodIdealBank'EnumRegiobank
            | val GHC.Classes.== "revolut" -> PaymentMethodIdealBank'EnumRevolut
            | val GHC.Classes.== "sns_bank" -> PaymentMethodIdealBank'EnumSnsBank
            | val GHC.Classes.== "triodos_bank" -> PaymentMethodIdealBank'EnumTriodosBank
            | val GHC.Classes.== "van_lanschot" -> PaymentMethodIdealBank'EnumVanLanschot
            | GHC.Base.otherwise -> PaymentMethodIdealBank'Other val
      )

-- | Defines the enum schema located at @components.schemas.payment_method_ideal.properties.bic@ in the specification.
--
-- The Bank Identifier Code of the customer\'s bank, if the bank was provided.
data PaymentMethodIdealBic'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodIdealBic'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodIdealBic'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"ABNANL2A"@
    PaymentMethodIdealBic'EnumABNANL2A
  | -- | Represents the JSON value @"ASNBNL21"@
    PaymentMethodIdealBic'EnumASNBNL21
  | -- | Represents the JSON value @"BUNQNL2A"@
    PaymentMethodIdealBic'EnumBUNQNL2A
  | -- | Represents the JSON value @"FVLBNL22"@
    PaymentMethodIdealBic'EnumFVLBNL22
  | -- | Represents the JSON value @"HANDNL2A"@
    PaymentMethodIdealBic'EnumHANDNL2A
  | -- | Represents the JSON value @"INGBNL2A"@
    PaymentMethodIdealBic'EnumINGBNL2A
  | -- | Represents the JSON value @"KNABNL2H"@
    PaymentMethodIdealBic'EnumKNABNL2H
  | -- | Represents the JSON value @"MOYONL21"@
    PaymentMethodIdealBic'EnumMOYONL21
  | -- | Represents the JSON value @"RABONL2U"@
    PaymentMethodIdealBic'EnumRABONL2U
  | -- | Represents the JSON value @"RBRBNL21"@
    PaymentMethodIdealBic'EnumRBRBNL21
  | -- | Represents the JSON value @"REVOLT21"@
    PaymentMethodIdealBic'EnumREVOLT21
  | -- | Represents the JSON value @"SNSBNL2A"@
    PaymentMethodIdealBic'EnumSNSBNL2A
  | -- | Represents the JSON value @"TRIONL2U"@
    PaymentMethodIdealBic'EnumTRIONL2U
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodIdealBic' where
  toJSON (PaymentMethodIdealBic'Other val) = val
  toJSON (PaymentMethodIdealBic'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodIdealBic'EnumABNANL2A) = "ABNANL2A"
  toJSON (PaymentMethodIdealBic'EnumASNBNL21) = "ASNBNL21"
  toJSON (PaymentMethodIdealBic'EnumBUNQNL2A) = "BUNQNL2A"
  toJSON (PaymentMethodIdealBic'EnumFVLBNL22) = "FVLBNL22"
  toJSON (PaymentMethodIdealBic'EnumHANDNL2A) = "HANDNL2A"
  toJSON (PaymentMethodIdealBic'EnumINGBNL2A) = "INGBNL2A"
  toJSON (PaymentMethodIdealBic'EnumKNABNL2H) = "KNABNL2H"
  toJSON (PaymentMethodIdealBic'EnumMOYONL21) = "MOYONL21"
  toJSON (PaymentMethodIdealBic'EnumRABONL2U) = "RABONL2U"
  toJSON (PaymentMethodIdealBic'EnumRBRBNL21) = "RBRBNL21"
  toJSON (PaymentMethodIdealBic'EnumREVOLT21) = "REVOLT21"
  toJSON (PaymentMethodIdealBic'EnumSNSBNL2A) = "SNSBNL2A"
  toJSON (PaymentMethodIdealBic'EnumTRIONL2U) = "TRIONL2U"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodIdealBic' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "ABNANL2A" -> PaymentMethodIdealBic'EnumABNANL2A
            | val GHC.Classes.== "ASNBNL21" -> PaymentMethodIdealBic'EnumASNBNL21
            | val GHC.Classes.== "BUNQNL2A" -> PaymentMethodIdealBic'EnumBUNQNL2A
            | val GHC.Classes.== "FVLBNL22" -> PaymentMethodIdealBic'EnumFVLBNL22
            | val GHC.Classes.== "HANDNL2A" -> PaymentMethodIdealBic'EnumHANDNL2A
            | val GHC.Classes.== "INGBNL2A" -> PaymentMethodIdealBic'EnumINGBNL2A
            | val GHC.Classes.== "KNABNL2H" -> PaymentMethodIdealBic'EnumKNABNL2H
            | val GHC.Classes.== "MOYONL21" -> PaymentMethodIdealBic'EnumMOYONL21
            | val GHC.Classes.== "RABONL2U" -> PaymentMethodIdealBic'EnumRABONL2U
            | val GHC.Classes.== "RBRBNL21" -> PaymentMethodIdealBic'EnumRBRBNL21
            | val GHC.Classes.== "REVOLT21" -> PaymentMethodIdealBic'EnumREVOLT21
            | val GHC.Classes.== "SNSBNL2A" -> PaymentMethodIdealBic'EnumSNSBNL2A
            | val GHC.Classes.== "TRIONL2U" -> PaymentMethodIdealBic'EnumTRIONL2U
            | GHC.Base.otherwise -> PaymentMethodIdealBic'Other val
      )
