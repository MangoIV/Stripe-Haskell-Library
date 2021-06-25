{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SourceTransactionPaperCheckData
module StripeAPI.Types.SourceTransactionPaperCheckData where

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

-- | Defines the object schema located at @components.schemas.source_transaction_paper_check_data@ in the specification.
data SourceTransactionPaperCheckData = SourceTransactionPaperCheckData
  { -- | available_at: Time at which the deposited funds will be available for use. Measured in seconds since the Unix epoch.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceTransactionPaperCheckDataAvailableAt :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | invoices: Comma-separated list of invoice IDs associated with the paper check.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceTransactionPaperCheckDataInvoices :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceTransactionPaperCheckData where
  toJSON obj = Data.Aeson.Types.Internal.object ("available_at" Data.Aeson.Types.ToJSON..= sourceTransactionPaperCheckDataAvailableAt obj : "invoices" Data.Aeson.Types.ToJSON..= sourceTransactionPaperCheckDataInvoices obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("available_at" Data.Aeson.Types.ToJSON..= sourceTransactionPaperCheckDataAvailableAt obj) GHC.Base.<> ("invoices" Data.Aeson.Types.ToJSON..= sourceTransactionPaperCheckDataInvoices obj))

instance Data.Aeson.Types.FromJSON.FromJSON SourceTransactionPaperCheckData where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTransactionPaperCheckData" (\obj -> (GHC.Base.pure SourceTransactionPaperCheckData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "available_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoices"))

-- | Create a new 'SourceTransactionPaperCheckData' with all required fields.
mkSourceTransactionPaperCheckData :: SourceTransactionPaperCheckData
mkSourceTransactionPaperCheckData =
  SourceTransactionPaperCheckData
    { sourceTransactionPaperCheckDataAvailableAt = GHC.Maybe.Nothing,
      sourceTransactionPaperCheckDataInvoices = GHC.Maybe.Nothing
    }
