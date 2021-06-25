{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SourceTypeCard
module StripeAPI.Types.SourceTypeCard where

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

-- | Defines the object schema located at @components.schemas.source_type_card@ in the specification.
data SourceTypeCard = SourceTypeCard
  { -- | address_line1_check
    sourceTypeCardAddressLine1Check :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_zip_check
    sourceTypeCardAddressZipCheck :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | brand
    sourceTypeCardBrand :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | country
    sourceTypeCardCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | cvc_check
    sourceTypeCardCvcCheck :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | dynamic_last4
    sourceTypeCardDynamicLast4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | exp_month
    sourceTypeCardExpMonth :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | exp_year
    sourceTypeCardExpYear :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | fingerprint
    sourceTypeCardFingerprint :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | funding
    sourceTypeCardFunding :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | last4
    sourceTypeCardLast4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | name
    sourceTypeCardName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | three_d_secure
    sourceTypeCardThreeDSecure :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | tokenization_method
    sourceTypeCardTokenizationMethod :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceTypeCard where
  toJSON obj = Data.Aeson.Types.Internal.object ("address_line1_check" Data.Aeson.Types.ToJSON..= sourceTypeCardAddressLine1Check obj : "address_zip_check" Data.Aeson.Types.ToJSON..= sourceTypeCardAddressZipCheck obj : "brand" Data.Aeson.Types.ToJSON..= sourceTypeCardBrand obj : "country" Data.Aeson.Types.ToJSON..= sourceTypeCardCountry obj : "cvc_check" Data.Aeson.Types.ToJSON..= sourceTypeCardCvcCheck obj : "dynamic_last4" Data.Aeson.Types.ToJSON..= sourceTypeCardDynamicLast4 obj : "exp_month" Data.Aeson.Types.ToJSON..= sourceTypeCardExpMonth obj : "exp_year" Data.Aeson.Types.ToJSON..= sourceTypeCardExpYear obj : "fingerprint" Data.Aeson.Types.ToJSON..= sourceTypeCardFingerprint obj : "funding" Data.Aeson.Types.ToJSON..= sourceTypeCardFunding obj : "last4" Data.Aeson.Types.ToJSON..= sourceTypeCardLast4 obj : "name" Data.Aeson.Types.ToJSON..= sourceTypeCardName obj : "three_d_secure" Data.Aeson.Types.ToJSON..= sourceTypeCardThreeDSecure obj : "tokenization_method" Data.Aeson.Types.ToJSON..= sourceTypeCardTokenizationMethod obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("address_line1_check" Data.Aeson.Types.ToJSON..= sourceTypeCardAddressLine1Check obj) GHC.Base.<> (("address_zip_check" Data.Aeson.Types.ToJSON..= sourceTypeCardAddressZipCheck obj) GHC.Base.<> (("brand" Data.Aeson.Types.ToJSON..= sourceTypeCardBrand obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= sourceTypeCardCountry obj) GHC.Base.<> (("cvc_check" Data.Aeson.Types.ToJSON..= sourceTypeCardCvcCheck obj) GHC.Base.<> (("dynamic_last4" Data.Aeson.Types.ToJSON..= sourceTypeCardDynamicLast4 obj) GHC.Base.<> (("exp_month" Data.Aeson.Types.ToJSON..= sourceTypeCardExpMonth obj) GHC.Base.<> (("exp_year" Data.Aeson.Types.ToJSON..= sourceTypeCardExpYear obj) GHC.Base.<> (("fingerprint" Data.Aeson.Types.ToJSON..= sourceTypeCardFingerprint obj) GHC.Base.<> (("funding" Data.Aeson.Types.ToJSON..= sourceTypeCardFunding obj) GHC.Base.<> (("last4" Data.Aeson.Types.ToJSON..= sourceTypeCardLast4 obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= sourceTypeCardName obj) GHC.Base.<> (("three_d_secure" Data.Aeson.Types.ToJSON..= sourceTypeCardThreeDSecure obj) GHC.Base.<> ("tokenization_method" Data.Aeson.Types.ToJSON..= sourceTypeCardTokenizationMethod obj))))))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeCard where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeCard" (\obj -> (((((((((((((GHC.Base.pure SourceTypeCard GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "brand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dynamic_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "funding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "three_d_secure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tokenization_method"))

-- | Create a new 'SourceTypeCard' with all required fields.
mkSourceTypeCard :: SourceTypeCard
mkSourceTypeCard =
  SourceTypeCard
    { sourceTypeCardAddressLine1Check = GHC.Maybe.Nothing,
      sourceTypeCardAddressZipCheck = GHC.Maybe.Nothing,
      sourceTypeCardBrand = GHC.Maybe.Nothing,
      sourceTypeCardCountry = GHC.Maybe.Nothing,
      sourceTypeCardCvcCheck = GHC.Maybe.Nothing,
      sourceTypeCardDynamicLast4 = GHC.Maybe.Nothing,
      sourceTypeCardExpMonth = GHC.Maybe.Nothing,
      sourceTypeCardExpYear = GHC.Maybe.Nothing,
      sourceTypeCardFingerprint = GHC.Maybe.Nothing,
      sourceTypeCardFunding = GHC.Maybe.Nothing,
      sourceTypeCardLast4 = GHC.Maybe.Nothing,
      sourceTypeCardName = GHC.Maybe.Nothing,
      sourceTypeCardThreeDSecure = GHC.Maybe.Nothing,
      sourceTypeCardTokenizationMethod = GHC.Maybe.Nothing
    }
