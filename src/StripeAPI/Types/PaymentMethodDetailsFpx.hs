{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodDetailsFpx
module StripeAPI.Types.PaymentMethodDetailsFpx where

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

-- | Defines the object schema located at @components.schemas.payment_method_details_fpx@ in the specification.
data PaymentMethodDetailsFpx = PaymentMethodDetailsFpx
  { -- | bank: The customer\'s bank. Can be one of \`affin_bank\`, \`alliance_bank\`, \`ambank\`, \`bank_islam\`, \`bank_muamalat\`, \`bank_rakyat\`, \`bsn\`, \`cimb\`, \`hong_leong_bank\`, \`hsbc\`, \`kfh\`, \`maybank2u\`, \`ocbc\`, \`public_bank\`, \`rhb\`, \`standard_chartered\`, \`uob\`, \`deutsche_bank\`, \`maybank2e\`, or \`pb_enterprise\`.
    paymentMethodDetailsFpxBank :: PaymentMethodDetailsFpxBank',
    -- | transaction_id: Unique transaction id generated by FPX for every request from the merchant
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsFpxTransactionId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsFpx where
  toJSON obj = Data.Aeson.Types.Internal.object ("bank" Data.Aeson.Types.ToJSON..= paymentMethodDetailsFpxBank obj : "transaction_id" Data.Aeson.Types.ToJSON..= paymentMethodDetailsFpxTransactionId obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("bank" Data.Aeson.Types.ToJSON..= paymentMethodDetailsFpxBank obj) GHC.Base.<> ("transaction_id" Data.Aeson.Types.ToJSON..= paymentMethodDetailsFpxTransactionId obj))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsFpx where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsFpx" (\obj -> (GHC.Base.pure PaymentMethodDetailsFpx GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "bank")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transaction_id"))

-- | Create a new 'PaymentMethodDetailsFpx' with all required fields.
mkPaymentMethodDetailsFpx ::
  -- | 'paymentMethodDetailsFpxBank'
  PaymentMethodDetailsFpxBank' ->
  PaymentMethodDetailsFpx
mkPaymentMethodDetailsFpx paymentMethodDetailsFpxBank =
  PaymentMethodDetailsFpx
    { paymentMethodDetailsFpxBank = paymentMethodDetailsFpxBank,
      paymentMethodDetailsFpxTransactionId = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_method_details_fpx.properties.bank@ in the specification.
--
-- The customer\'s bank. Can be one of \`affin_bank\`, \`alliance_bank\`, \`ambank\`, \`bank_islam\`, \`bank_muamalat\`, \`bank_rakyat\`, \`bsn\`, \`cimb\`, \`hong_leong_bank\`, \`hsbc\`, \`kfh\`, \`maybank2u\`, \`ocbc\`, \`public_bank\`, \`rhb\`, \`standard_chartered\`, \`uob\`, \`deutsche_bank\`, \`maybank2e\`, or \`pb_enterprise\`.
data PaymentMethodDetailsFpxBank'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodDetailsFpxBank'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodDetailsFpxBank'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"affin_bank"@
    PaymentMethodDetailsFpxBank'EnumAffinBank
  | -- | Represents the JSON value @"alliance_bank"@
    PaymentMethodDetailsFpxBank'EnumAllianceBank
  | -- | Represents the JSON value @"ambank"@
    PaymentMethodDetailsFpxBank'EnumAmbank
  | -- | Represents the JSON value @"bank_islam"@
    PaymentMethodDetailsFpxBank'EnumBankIslam
  | -- | Represents the JSON value @"bank_muamalat"@
    PaymentMethodDetailsFpxBank'EnumBankMuamalat
  | -- | Represents the JSON value @"bank_rakyat"@
    PaymentMethodDetailsFpxBank'EnumBankRakyat
  | -- | Represents the JSON value @"bsn"@
    PaymentMethodDetailsFpxBank'EnumBsn
  | -- | Represents the JSON value @"cimb"@
    PaymentMethodDetailsFpxBank'EnumCimb
  | -- | Represents the JSON value @"deutsche_bank"@
    PaymentMethodDetailsFpxBank'EnumDeutscheBank
  | -- | Represents the JSON value @"hong_leong_bank"@
    PaymentMethodDetailsFpxBank'EnumHongLeongBank
  | -- | Represents the JSON value @"hsbc"@
    PaymentMethodDetailsFpxBank'EnumHsbc
  | -- | Represents the JSON value @"kfh"@
    PaymentMethodDetailsFpxBank'EnumKfh
  | -- | Represents the JSON value @"maybank2e"@
    PaymentMethodDetailsFpxBank'EnumMaybank2e
  | -- | Represents the JSON value @"maybank2u"@
    PaymentMethodDetailsFpxBank'EnumMaybank2u
  | -- | Represents the JSON value @"ocbc"@
    PaymentMethodDetailsFpxBank'EnumOcbc
  | -- | Represents the JSON value @"pb_enterprise"@
    PaymentMethodDetailsFpxBank'EnumPbEnterprise
  | -- | Represents the JSON value @"public_bank"@
    PaymentMethodDetailsFpxBank'EnumPublicBank
  | -- | Represents the JSON value @"rhb"@
    PaymentMethodDetailsFpxBank'EnumRhb
  | -- | Represents the JSON value @"standard_chartered"@
    PaymentMethodDetailsFpxBank'EnumStandardChartered
  | -- | Represents the JSON value @"uob"@
    PaymentMethodDetailsFpxBank'EnumUob
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsFpxBank' where
  toJSON (PaymentMethodDetailsFpxBank'Other val) = val
  toJSON (PaymentMethodDetailsFpxBank'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodDetailsFpxBank'EnumAffinBank) = "affin_bank"
  toJSON (PaymentMethodDetailsFpxBank'EnumAllianceBank) = "alliance_bank"
  toJSON (PaymentMethodDetailsFpxBank'EnumAmbank) = "ambank"
  toJSON (PaymentMethodDetailsFpxBank'EnumBankIslam) = "bank_islam"
  toJSON (PaymentMethodDetailsFpxBank'EnumBankMuamalat) = "bank_muamalat"
  toJSON (PaymentMethodDetailsFpxBank'EnumBankRakyat) = "bank_rakyat"
  toJSON (PaymentMethodDetailsFpxBank'EnumBsn) = "bsn"
  toJSON (PaymentMethodDetailsFpxBank'EnumCimb) = "cimb"
  toJSON (PaymentMethodDetailsFpxBank'EnumDeutscheBank) = "deutsche_bank"
  toJSON (PaymentMethodDetailsFpxBank'EnumHongLeongBank) = "hong_leong_bank"
  toJSON (PaymentMethodDetailsFpxBank'EnumHsbc) = "hsbc"
  toJSON (PaymentMethodDetailsFpxBank'EnumKfh) = "kfh"
  toJSON (PaymentMethodDetailsFpxBank'EnumMaybank2e) = "maybank2e"
  toJSON (PaymentMethodDetailsFpxBank'EnumMaybank2u) = "maybank2u"
  toJSON (PaymentMethodDetailsFpxBank'EnumOcbc) = "ocbc"
  toJSON (PaymentMethodDetailsFpxBank'EnumPbEnterprise) = "pb_enterprise"
  toJSON (PaymentMethodDetailsFpxBank'EnumPublicBank) = "public_bank"
  toJSON (PaymentMethodDetailsFpxBank'EnumRhb) = "rhb"
  toJSON (PaymentMethodDetailsFpxBank'EnumStandardChartered) = "standard_chartered"
  toJSON (PaymentMethodDetailsFpxBank'EnumUob) = "uob"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsFpxBank' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "affin_bank" -> PaymentMethodDetailsFpxBank'EnumAffinBank
            | val GHC.Classes.== "alliance_bank" -> PaymentMethodDetailsFpxBank'EnumAllianceBank
            | val GHC.Classes.== "ambank" -> PaymentMethodDetailsFpxBank'EnumAmbank
            | val GHC.Classes.== "bank_islam" -> PaymentMethodDetailsFpxBank'EnumBankIslam
            | val GHC.Classes.== "bank_muamalat" -> PaymentMethodDetailsFpxBank'EnumBankMuamalat
            | val GHC.Classes.== "bank_rakyat" -> PaymentMethodDetailsFpxBank'EnumBankRakyat
            | val GHC.Classes.== "bsn" -> PaymentMethodDetailsFpxBank'EnumBsn
            | val GHC.Classes.== "cimb" -> PaymentMethodDetailsFpxBank'EnumCimb
            | val GHC.Classes.== "deutsche_bank" -> PaymentMethodDetailsFpxBank'EnumDeutscheBank
            | val GHC.Classes.== "hong_leong_bank" -> PaymentMethodDetailsFpxBank'EnumHongLeongBank
            | val GHC.Classes.== "hsbc" -> PaymentMethodDetailsFpxBank'EnumHsbc
            | val GHC.Classes.== "kfh" -> PaymentMethodDetailsFpxBank'EnumKfh
            | val GHC.Classes.== "maybank2e" -> PaymentMethodDetailsFpxBank'EnumMaybank2e
            | val GHC.Classes.== "maybank2u" -> PaymentMethodDetailsFpxBank'EnumMaybank2u
            | val GHC.Classes.== "ocbc" -> PaymentMethodDetailsFpxBank'EnumOcbc
            | val GHC.Classes.== "pb_enterprise" -> PaymentMethodDetailsFpxBank'EnumPbEnterprise
            | val GHC.Classes.== "public_bank" -> PaymentMethodDetailsFpxBank'EnumPublicBank
            | val GHC.Classes.== "rhb" -> PaymentMethodDetailsFpxBank'EnumRhb
            | val GHC.Classes.== "standard_chartered" -> PaymentMethodDetailsFpxBank'EnumStandardChartered
            | val GHC.Classes.== "uob" -> PaymentMethodDetailsFpxBank'EnumUob
            | GHC.Base.otherwise -> PaymentMethodDetailsFpxBank'Other val
      )
