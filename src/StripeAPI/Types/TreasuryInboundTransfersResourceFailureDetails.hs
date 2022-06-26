{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema TreasuryInboundTransfersResourceFailureDetails
module StripeAPI.Types.TreasuryInboundTransfersResourceFailureDetails where

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

-- | Defines the object schema located at @components.schemas.treasury_inbound_transfers_resource_failure_details@ in the specification.
data TreasuryInboundTransfersResourceFailureDetails = TreasuryInboundTransfersResourceFailureDetails
  { -- | code: Reason for the failure.
    treasuryInboundTransfersResourceFailureDetailsCode :: TreasuryInboundTransfersResourceFailureDetailsCode'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON TreasuryInboundTransfersResourceFailureDetails where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= treasuryInboundTransfersResourceFailureDetailsCode obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= treasuryInboundTransfersResourceFailureDetailsCode obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON TreasuryInboundTransfersResourceFailureDetails where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "TreasuryInboundTransfersResourceFailureDetails" (\obj -> GHC.Base.pure TreasuryInboundTransfersResourceFailureDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code"))

-- | Create a new 'TreasuryInboundTransfersResourceFailureDetails' with all required fields.
mkTreasuryInboundTransfersResourceFailureDetails ::
  -- | 'treasuryInboundTransfersResourceFailureDetailsCode'
  TreasuryInboundTransfersResourceFailureDetailsCode' ->
  TreasuryInboundTransfersResourceFailureDetails
mkTreasuryInboundTransfersResourceFailureDetails treasuryInboundTransfersResourceFailureDetailsCode = TreasuryInboundTransfersResourceFailureDetails {treasuryInboundTransfersResourceFailureDetailsCode = treasuryInboundTransfersResourceFailureDetailsCode}

-- | Defines the enum schema located at @components.schemas.treasury_inbound_transfers_resource_failure_details.properties.code@ in the specification.
--
-- Reason for the failure.
data TreasuryInboundTransfersResourceFailureDetailsCode'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    TreasuryInboundTransfersResourceFailureDetailsCode'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    TreasuryInboundTransfersResourceFailureDetailsCode'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"account_closed"@
    TreasuryInboundTransfersResourceFailureDetailsCode'EnumAccountClosed
  | -- | Represents the JSON value @"account_frozen"@
    TreasuryInboundTransfersResourceFailureDetailsCode'EnumAccountFrozen
  | -- | Represents the JSON value @"bank_account_restricted"@
    TreasuryInboundTransfersResourceFailureDetailsCode'EnumBankAccountRestricted
  | -- | Represents the JSON value @"bank_ownership_changed"@
    TreasuryInboundTransfersResourceFailureDetailsCode'EnumBankOwnershipChanged
  | -- | Represents the JSON value @"debit_not_authorized"@
    TreasuryInboundTransfersResourceFailureDetailsCode'EnumDebitNotAuthorized
  | -- | Represents the JSON value @"incorrect_account_holder_address"@
    TreasuryInboundTransfersResourceFailureDetailsCode'EnumIncorrectAccountHolderAddress
  | -- | Represents the JSON value @"incorrect_account_holder_name"@
    TreasuryInboundTransfersResourceFailureDetailsCode'EnumIncorrectAccountHolderName
  | -- | Represents the JSON value @"incorrect_account_holder_tax_id"@
    TreasuryInboundTransfersResourceFailureDetailsCode'EnumIncorrectAccountHolderTaxId
  | -- | Represents the JSON value @"insufficient_funds"@
    TreasuryInboundTransfersResourceFailureDetailsCode'EnumInsufficientFunds
  | -- | Represents the JSON value @"invalid_account_number"@
    TreasuryInboundTransfersResourceFailureDetailsCode'EnumInvalidAccountNumber
  | -- | Represents the JSON value @"invalid_currency"@
    TreasuryInboundTransfersResourceFailureDetailsCode'EnumInvalidCurrency
  | -- | Represents the JSON value @"no_account"@
    TreasuryInboundTransfersResourceFailureDetailsCode'EnumNoAccount
  | -- | Represents the JSON value @"other"@
    TreasuryInboundTransfersResourceFailureDetailsCode'EnumOther
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON TreasuryInboundTransfersResourceFailureDetailsCode' where
  toJSON (TreasuryInboundTransfersResourceFailureDetailsCode'Other val) = val
  toJSON (TreasuryInboundTransfersResourceFailureDetailsCode'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (TreasuryInboundTransfersResourceFailureDetailsCode'EnumAccountClosed) = "account_closed"
  toJSON (TreasuryInboundTransfersResourceFailureDetailsCode'EnumAccountFrozen) = "account_frozen"
  toJSON (TreasuryInboundTransfersResourceFailureDetailsCode'EnumBankAccountRestricted) = "bank_account_restricted"
  toJSON (TreasuryInboundTransfersResourceFailureDetailsCode'EnumBankOwnershipChanged) = "bank_ownership_changed"
  toJSON (TreasuryInboundTransfersResourceFailureDetailsCode'EnumDebitNotAuthorized) = "debit_not_authorized"
  toJSON (TreasuryInboundTransfersResourceFailureDetailsCode'EnumIncorrectAccountHolderAddress) = "incorrect_account_holder_address"
  toJSON (TreasuryInboundTransfersResourceFailureDetailsCode'EnumIncorrectAccountHolderName) = "incorrect_account_holder_name"
  toJSON (TreasuryInboundTransfersResourceFailureDetailsCode'EnumIncorrectAccountHolderTaxId) = "incorrect_account_holder_tax_id"
  toJSON (TreasuryInboundTransfersResourceFailureDetailsCode'EnumInsufficientFunds) = "insufficient_funds"
  toJSON (TreasuryInboundTransfersResourceFailureDetailsCode'EnumInvalidAccountNumber) = "invalid_account_number"
  toJSON (TreasuryInboundTransfersResourceFailureDetailsCode'EnumInvalidCurrency) = "invalid_currency"
  toJSON (TreasuryInboundTransfersResourceFailureDetailsCode'EnumNoAccount) = "no_account"
  toJSON (TreasuryInboundTransfersResourceFailureDetailsCode'EnumOther) = "other"

instance Data.Aeson.Types.FromJSON.FromJSON TreasuryInboundTransfersResourceFailureDetailsCode' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "account_closed" -> TreasuryInboundTransfersResourceFailureDetailsCode'EnumAccountClosed
            | val GHC.Classes.== "account_frozen" -> TreasuryInboundTransfersResourceFailureDetailsCode'EnumAccountFrozen
            | val GHC.Classes.== "bank_account_restricted" -> TreasuryInboundTransfersResourceFailureDetailsCode'EnumBankAccountRestricted
            | val GHC.Classes.== "bank_ownership_changed" -> TreasuryInboundTransfersResourceFailureDetailsCode'EnumBankOwnershipChanged
            | val GHC.Classes.== "debit_not_authorized" -> TreasuryInboundTransfersResourceFailureDetailsCode'EnumDebitNotAuthorized
            | val GHC.Classes.== "incorrect_account_holder_address" -> TreasuryInboundTransfersResourceFailureDetailsCode'EnumIncorrectAccountHolderAddress
            | val GHC.Classes.== "incorrect_account_holder_name" -> TreasuryInboundTransfersResourceFailureDetailsCode'EnumIncorrectAccountHolderName
            | val GHC.Classes.== "incorrect_account_holder_tax_id" -> TreasuryInboundTransfersResourceFailureDetailsCode'EnumIncorrectAccountHolderTaxId
            | val GHC.Classes.== "insufficient_funds" -> TreasuryInboundTransfersResourceFailureDetailsCode'EnumInsufficientFunds
            | val GHC.Classes.== "invalid_account_number" -> TreasuryInboundTransfersResourceFailureDetailsCode'EnumInvalidAccountNumber
            | val GHC.Classes.== "invalid_currency" -> TreasuryInboundTransfersResourceFailureDetailsCode'EnumInvalidCurrency
            | val GHC.Classes.== "no_account" -> TreasuryInboundTransfersResourceFailureDetailsCode'EnumNoAccount
            | val GHC.Classes.== "other" -> TreasuryInboundTransfersResourceFailureDetailsCode'EnumOther
            | GHC.Base.otherwise -> TreasuryInboundTransfersResourceFailureDetailsCode'Other val
      )
