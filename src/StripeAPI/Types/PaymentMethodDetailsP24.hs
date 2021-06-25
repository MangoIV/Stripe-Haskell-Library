{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodDetailsP24
module StripeAPI.Types.PaymentMethodDetailsP24 where

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

-- | Defines the object schema located at @components.schemas.payment_method_details_p24@ in the specification.
data PaymentMethodDetailsP24 = PaymentMethodDetailsP24
  { -- | bank: The customer\'s bank. Can be one of \`ing\`, \`citi_handlowy\`, \`tmobile_usbugi_bankowe\`, \`plus_bank\`, \`etransfer_pocztowy24\`, \`banki_spbdzielcze\`, \`bank_nowy_bfg_sa\`, \`getin_bank\`, \`blik\`, \`noble_pay\`, \`ideabank\`, \`envelobank\`, \`santander_przelew24\`, \`nest_przelew\`, \`mbank_mtransfer\`, \`inteligo\`, \`pbac_z_ipko\`, \`bnp_paribas\`, \`credit_agricole\`, \`toyota_bank\`, \`bank_pekao_sa\`, \`volkswagen_bank\`, \`bank_millennium\`, \`alior_bank\`, or \`boz\`.
    paymentMethodDetailsP24Bank :: (GHC.Maybe.Maybe PaymentMethodDetailsP24Bank'),
    -- | reference: Unique reference for this Przelewy24 payment.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsP24Reference :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | verified_name: Owner\'s verified full name. Values are verified or provided by Przelewy24 directly
    -- (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    -- Przelewy24 rarely provides this information so the attribute is usually empty.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsP24VerifiedName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsP24 where
  toJSON obj = Data.Aeson.Types.Internal.object ("bank" Data.Aeson.Types.ToJSON..= paymentMethodDetailsP24Bank obj : "reference" Data.Aeson.Types.ToJSON..= paymentMethodDetailsP24Reference obj : "verified_name" Data.Aeson.Types.ToJSON..= paymentMethodDetailsP24VerifiedName obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("bank" Data.Aeson.Types.ToJSON..= paymentMethodDetailsP24Bank obj) GHC.Base.<> (("reference" Data.Aeson.Types.ToJSON..= paymentMethodDetailsP24Reference obj) GHC.Base.<> ("verified_name" Data.Aeson.Types.ToJSON..= paymentMethodDetailsP24VerifiedName obj)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsP24 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsP24" (\obj -> ((GHC.Base.pure PaymentMethodDetailsP24 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_name"))

-- | Create a new 'PaymentMethodDetailsP24' with all required fields.
mkPaymentMethodDetailsP24 :: PaymentMethodDetailsP24
mkPaymentMethodDetailsP24 =
  PaymentMethodDetailsP24
    { paymentMethodDetailsP24Bank = GHC.Maybe.Nothing,
      paymentMethodDetailsP24Reference = GHC.Maybe.Nothing,
      paymentMethodDetailsP24VerifiedName = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_method_details_p24.properties.bank@ in the specification.
--
-- The customer\'s bank. Can be one of \`ing\`, \`citi_handlowy\`, \`tmobile_usbugi_bankowe\`, \`plus_bank\`, \`etransfer_pocztowy24\`, \`banki_spbdzielcze\`, \`bank_nowy_bfg_sa\`, \`getin_bank\`, \`blik\`, \`noble_pay\`, \`ideabank\`, \`envelobank\`, \`santander_przelew24\`, \`nest_przelew\`, \`mbank_mtransfer\`, \`inteligo\`, \`pbac_z_ipko\`, \`bnp_paribas\`, \`credit_agricole\`, \`toyota_bank\`, \`bank_pekao_sa\`, \`volkswagen_bank\`, \`bank_millennium\`, \`alior_bank\`, or \`boz\`.
data PaymentMethodDetailsP24Bank'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodDetailsP24Bank'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodDetailsP24Bank'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"alior_bank"@
    PaymentMethodDetailsP24Bank'EnumAliorBank
  | -- | Represents the JSON value @"bank_millennium"@
    PaymentMethodDetailsP24Bank'EnumBankMillennium
  | -- | Represents the JSON value @"bank_nowy_bfg_sa"@
    PaymentMethodDetailsP24Bank'EnumBankNowyBfgSa
  | -- | Represents the JSON value @"bank_pekao_sa"@
    PaymentMethodDetailsP24Bank'EnumBankPekaoSa
  | -- | Represents the JSON value @"banki_spbdzielcze"@
    PaymentMethodDetailsP24Bank'EnumBankiSpbdzielcze
  | -- | Represents the JSON value @"blik"@
    PaymentMethodDetailsP24Bank'EnumBlik
  | -- | Represents the JSON value @"bnp_paribas"@
    PaymentMethodDetailsP24Bank'EnumBnpParibas
  | -- | Represents the JSON value @"boz"@
    PaymentMethodDetailsP24Bank'EnumBoz
  | -- | Represents the JSON value @"citi_handlowy"@
    PaymentMethodDetailsP24Bank'EnumCitiHandlowy
  | -- | Represents the JSON value @"credit_agricole"@
    PaymentMethodDetailsP24Bank'EnumCreditAgricole
  | -- | Represents the JSON value @"envelobank"@
    PaymentMethodDetailsP24Bank'EnumEnvelobank
  | -- | Represents the JSON value @"etransfer_pocztowy24"@
    PaymentMethodDetailsP24Bank'EnumEtransferPocztowy24
  | -- | Represents the JSON value @"getin_bank"@
    PaymentMethodDetailsP24Bank'EnumGetinBank
  | -- | Represents the JSON value @"ideabank"@
    PaymentMethodDetailsP24Bank'EnumIdeabank
  | -- | Represents the JSON value @"ing"@
    PaymentMethodDetailsP24Bank'EnumIng
  | -- | Represents the JSON value @"inteligo"@
    PaymentMethodDetailsP24Bank'EnumInteligo
  | -- | Represents the JSON value @"mbank_mtransfer"@
    PaymentMethodDetailsP24Bank'EnumMbankMtransfer
  | -- | Represents the JSON value @"nest_przelew"@
    PaymentMethodDetailsP24Bank'EnumNestPrzelew
  | -- | Represents the JSON value @"noble_pay"@
    PaymentMethodDetailsP24Bank'EnumNoblePay
  | -- | Represents the JSON value @"pbac_z_ipko"@
    PaymentMethodDetailsP24Bank'EnumPbacZIpko
  | -- | Represents the JSON value @"plus_bank"@
    PaymentMethodDetailsP24Bank'EnumPlusBank
  | -- | Represents the JSON value @"santander_przelew24"@
    PaymentMethodDetailsP24Bank'EnumSantanderPrzelew24
  | -- | Represents the JSON value @"tmobile_usbugi_bankowe"@
    PaymentMethodDetailsP24Bank'EnumTmobileUsbugiBankowe
  | -- | Represents the JSON value @"toyota_bank"@
    PaymentMethodDetailsP24Bank'EnumToyotaBank
  | -- | Represents the JSON value @"volkswagen_bank"@
    PaymentMethodDetailsP24Bank'EnumVolkswagenBank
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsP24Bank' where
  toJSON (PaymentMethodDetailsP24Bank'Other val) = val
  toJSON (PaymentMethodDetailsP24Bank'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodDetailsP24Bank'EnumAliorBank) = "alior_bank"
  toJSON (PaymentMethodDetailsP24Bank'EnumBankMillennium) = "bank_millennium"
  toJSON (PaymentMethodDetailsP24Bank'EnumBankNowyBfgSa) = "bank_nowy_bfg_sa"
  toJSON (PaymentMethodDetailsP24Bank'EnumBankPekaoSa) = "bank_pekao_sa"
  toJSON (PaymentMethodDetailsP24Bank'EnumBankiSpbdzielcze) = "banki_spbdzielcze"
  toJSON (PaymentMethodDetailsP24Bank'EnumBlik) = "blik"
  toJSON (PaymentMethodDetailsP24Bank'EnumBnpParibas) = "bnp_paribas"
  toJSON (PaymentMethodDetailsP24Bank'EnumBoz) = "boz"
  toJSON (PaymentMethodDetailsP24Bank'EnumCitiHandlowy) = "citi_handlowy"
  toJSON (PaymentMethodDetailsP24Bank'EnumCreditAgricole) = "credit_agricole"
  toJSON (PaymentMethodDetailsP24Bank'EnumEnvelobank) = "envelobank"
  toJSON (PaymentMethodDetailsP24Bank'EnumEtransferPocztowy24) = "etransfer_pocztowy24"
  toJSON (PaymentMethodDetailsP24Bank'EnumGetinBank) = "getin_bank"
  toJSON (PaymentMethodDetailsP24Bank'EnumIdeabank) = "ideabank"
  toJSON (PaymentMethodDetailsP24Bank'EnumIng) = "ing"
  toJSON (PaymentMethodDetailsP24Bank'EnumInteligo) = "inteligo"
  toJSON (PaymentMethodDetailsP24Bank'EnumMbankMtransfer) = "mbank_mtransfer"
  toJSON (PaymentMethodDetailsP24Bank'EnumNestPrzelew) = "nest_przelew"
  toJSON (PaymentMethodDetailsP24Bank'EnumNoblePay) = "noble_pay"
  toJSON (PaymentMethodDetailsP24Bank'EnumPbacZIpko) = "pbac_z_ipko"
  toJSON (PaymentMethodDetailsP24Bank'EnumPlusBank) = "plus_bank"
  toJSON (PaymentMethodDetailsP24Bank'EnumSantanderPrzelew24) = "santander_przelew24"
  toJSON (PaymentMethodDetailsP24Bank'EnumTmobileUsbugiBankowe) = "tmobile_usbugi_bankowe"
  toJSON (PaymentMethodDetailsP24Bank'EnumToyotaBank) = "toyota_bank"
  toJSON (PaymentMethodDetailsP24Bank'EnumVolkswagenBank) = "volkswagen_bank"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsP24Bank' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "alior_bank" -> PaymentMethodDetailsP24Bank'EnumAliorBank
            | val GHC.Classes.== "bank_millennium" -> PaymentMethodDetailsP24Bank'EnumBankMillennium
            | val GHC.Classes.== "bank_nowy_bfg_sa" -> PaymentMethodDetailsP24Bank'EnumBankNowyBfgSa
            | val GHC.Classes.== "bank_pekao_sa" -> PaymentMethodDetailsP24Bank'EnumBankPekaoSa
            | val GHC.Classes.== "banki_spbdzielcze" -> PaymentMethodDetailsP24Bank'EnumBankiSpbdzielcze
            | val GHC.Classes.== "blik" -> PaymentMethodDetailsP24Bank'EnumBlik
            | val GHC.Classes.== "bnp_paribas" -> PaymentMethodDetailsP24Bank'EnumBnpParibas
            | val GHC.Classes.== "boz" -> PaymentMethodDetailsP24Bank'EnumBoz
            | val GHC.Classes.== "citi_handlowy" -> PaymentMethodDetailsP24Bank'EnumCitiHandlowy
            | val GHC.Classes.== "credit_agricole" -> PaymentMethodDetailsP24Bank'EnumCreditAgricole
            | val GHC.Classes.== "envelobank" -> PaymentMethodDetailsP24Bank'EnumEnvelobank
            | val GHC.Classes.== "etransfer_pocztowy24" -> PaymentMethodDetailsP24Bank'EnumEtransferPocztowy24
            | val GHC.Classes.== "getin_bank" -> PaymentMethodDetailsP24Bank'EnumGetinBank
            | val GHC.Classes.== "ideabank" -> PaymentMethodDetailsP24Bank'EnumIdeabank
            | val GHC.Classes.== "ing" -> PaymentMethodDetailsP24Bank'EnumIng
            | val GHC.Classes.== "inteligo" -> PaymentMethodDetailsP24Bank'EnumInteligo
            | val GHC.Classes.== "mbank_mtransfer" -> PaymentMethodDetailsP24Bank'EnumMbankMtransfer
            | val GHC.Classes.== "nest_przelew" -> PaymentMethodDetailsP24Bank'EnumNestPrzelew
            | val GHC.Classes.== "noble_pay" -> PaymentMethodDetailsP24Bank'EnumNoblePay
            | val GHC.Classes.== "pbac_z_ipko" -> PaymentMethodDetailsP24Bank'EnumPbacZIpko
            | val GHC.Classes.== "plus_bank" -> PaymentMethodDetailsP24Bank'EnumPlusBank
            | val GHC.Classes.== "santander_przelew24" -> PaymentMethodDetailsP24Bank'EnumSantanderPrzelew24
            | val GHC.Classes.== "tmobile_usbugi_bankowe" -> PaymentMethodDetailsP24Bank'EnumTmobileUsbugiBankowe
            | val GHC.Classes.== "toyota_bank" -> PaymentMethodDetailsP24Bank'EnumToyotaBank
            | val GHC.Classes.== "volkswagen_bank" -> PaymentMethodDetailsP24Bank'EnumVolkswagenBank
            | GHC.Base.otherwise -> PaymentMethodDetailsP24Bank'Other val
      )
