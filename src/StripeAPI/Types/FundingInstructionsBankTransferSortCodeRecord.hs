{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema FundingInstructionsBankTransferSortCodeRecord
module StripeAPI.Types.FundingInstructionsBankTransferSortCodeRecord where

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

-- | Defines the object schema located at @components.schemas.funding_instructions_bank_transfer_sort_code_record@ in the specification.
--
-- Sort Code Records contain U.K. bank account details per the sort code format.
data FundingInstructionsBankTransferSortCodeRecord = FundingInstructionsBankTransferSortCodeRecord
  { -- | account_holder_name: The name of the person or business that owns the bank account
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    fundingInstructionsBankTransferSortCodeRecordAccountHolderName :: Data.Text.Internal.Text,
    -- | account_number: The account number
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    fundingInstructionsBankTransferSortCodeRecordAccountNumber :: Data.Text.Internal.Text,
    -- | sort_code: The six-digit sort code
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    fundingInstructionsBankTransferSortCodeRecordSortCode :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON FundingInstructionsBankTransferSortCodeRecord where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["account_holder_name" Data.Aeson.Types.ToJSON..= fundingInstructionsBankTransferSortCodeRecordAccountHolderName obj] : ["account_number" Data.Aeson.Types.ToJSON..= fundingInstructionsBankTransferSortCodeRecordAccountNumber obj] : ["sort_code" Data.Aeson.Types.ToJSON..= fundingInstructionsBankTransferSortCodeRecordSortCode obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["account_holder_name" Data.Aeson.Types.ToJSON..= fundingInstructionsBankTransferSortCodeRecordAccountHolderName obj] : ["account_number" Data.Aeson.Types.ToJSON..= fundingInstructionsBankTransferSortCodeRecordAccountNumber obj] : ["sort_code" Data.Aeson.Types.ToJSON..= fundingInstructionsBankTransferSortCodeRecordSortCode obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON FundingInstructionsBankTransferSortCodeRecord where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "FundingInstructionsBankTransferSortCodeRecord" (\obj -> ((GHC.Base.pure FundingInstructionsBankTransferSortCodeRecord GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "sort_code"))

-- | Create a new 'FundingInstructionsBankTransferSortCodeRecord' with all required fields.
mkFundingInstructionsBankTransferSortCodeRecord ::
  -- | 'fundingInstructionsBankTransferSortCodeRecordAccountHolderName'
  Data.Text.Internal.Text ->
  -- | 'fundingInstructionsBankTransferSortCodeRecordAccountNumber'
  Data.Text.Internal.Text ->
  -- | 'fundingInstructionsBankTransferSortCodeRecordSortCode'
  Data.Text.Internal.Text ->
  FundingInstructionsBankTransferSortCodeRecord
mkFundingInstructionsBankTransferSortCodeRecord fundingInstructionsBankTransferSortCodeRecordAccountHolderName fundingInstructionsBankTransferSortCodeRecordAccountNumber fundingInstructionsBankTransferSortCodeRecordSortCode =
  FundingInstructionsBankTransferSortCodeRecord
    { fundingInstructionsBankTransferSortCodeRecordAccountHolderName = fundingInstructionsBankTransferSortCodeRecordAccountHolderName,
      fundingInstructionsBankTransferSortCodeRecordAccountNumber = fundingInstructionsBankTransferSortCodeRecordAccountNumber,
      fundingInstructionsBankTransferSortCodeRecordSortCode = fundingInstructionsBankTransferSortCodeRecordSortCode
    }
