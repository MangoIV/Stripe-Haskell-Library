{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SourceTypeAchDebit
module StripeAPI.Types.SourceTypeAchDebit where

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

-- | Defines the object schema located at @components.schemas.source_type_ach_debit@ in the specification.
data SourceTypeAchDebit = SourceTypeAchDebit
  { -- | bank_name
    sourceTypeAchDebitBankName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | country
    sourceTypeAchDebitCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | fingerprint
    sourceTypeAchDebitFingerprint :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | last4
    sourceTypeAchDebitLast4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | routing_number
    sourceTypeAchDebitRoutingNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | type
    sourceTypeAchDebitType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceTypeAchDebit where
  toJSON obj = Data.Aeson.Types.Internal.object ("bank_name" Data.Aeson.Types.ToJSON..= sourceTypeAchDebitBankName obj : "country" Data.Aeson.Types.ToJSON..= sourceTypeAchDebitCountry obj : "fingerprint" Data.Aeson.Types.ToJSON..= sourceTypeAchDebitFingerprint obj : "last4" Data.Aeson.Types.ToJSON..= sourceTypeAchDebitLast4 obj : "routing_number" Data.Aeson.Types.ToJSON..= sourceTypeAchDebitRoutingNumber obj : "type" Data.Aeson.Types.ToJSON..= sourceTypeAchDebitType obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("bank_name" Data.Aeson.Types.ToJSON..= sourceTypeAchDebitBankName obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= sourceTypeAchDebitCountry obj) GHC.Base.<> (("fingerprint" Data.Aeson.Types.ToJSON..= sourceTypeAchDebitFingerprint obj) GHC.Base.<> (("last4" Data.Aeson.Types.ToJSON..= sourceTypeAchDebitLast4 obj) GHC.Base.<> (("routing_number" Data.Aeson.Types.ToJSON..= sourceTypeAchDebitRoutingNumber obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= sourceTypeAchDebitType obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeAchDebit where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeAchDebit" (\obj -> (((((GHC.Base.pure SourceTypeAchDebit GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))

-- | Create a new 'SourceTypeAchDebit' with all required fields.
mkSourceTypeAchDebit :: SourceTypeAchDebit
mkSourceTypeAchDebit =
  SourceTypeAchDebit
    { sourceTypeAchDebitBankName = GHC.Maybe.Nothing,
      sourceTypeAchDebitCountry = GHC.Maybe.Nothing,
      sourceTypeAchDebitFingerprint = GHC.Maybe.Nothing,
      sourceTypeAchDebitLast4 = GHC.Maybe.Nothing,
      sourceTypeAchDebitRoutingNumber = GHC.Maybe.Nothing,
      sourceTypeAchDebitType = GHC.Maybe.Nothing
    }
