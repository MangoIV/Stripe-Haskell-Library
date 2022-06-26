{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema BankConnectionsResourceBalanceRefresh
module StripeAPI.Types.BankConnectionsResourceBalanceRefresh where

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

-- | Defines the object schema located at @components.schemas.bank_connections_resource_balance_refresh@ in the specification.
data BankConnectionsResourceBalanceRefresh = BankConnectionsResourceBalanceRefresh
  { -- | last_attempted_at: The time at which the last refresh attempt was initiated. Measured in seconds since the Unix epoch.
    bankConnectionsResourceBalanceRefreshLastAttemptedAt :: GHC.Types.Int,
    -- | status: The status of the last refresh attempt.
    bankConnectionsResourceBalanceRefreshStatus :: BankConnectionsResourceBalanceRefreshStatus'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON BankConnectionsResourceBalanceRefresh where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["last_attempted_at" Data.Aeson.Types.ToJSON..= bankConnectionsResourceBalanceRefreshLastAttemptedAt obj] : ["status" Data.Aeson.Types.ToJSON..= bankConnectionsResourceBalanceRefreshStatus obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["last_attempted_at" Data.Aeson.Types.ToJSON..= bankConnectionsResourceBalanceRefreshLastAttemptedAt obj] : ["status" Data.Aeson.Types.ToJSON..= bankConnectionsResourceBalanceRefreshStatus obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON BankConnectionsResourceBalanceRefresh where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "BankConnectionsResourceBalanceRefresh" (\obj -> (GHC.Base.pure BankConnectionsResourceBalanceRefresh GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "last_attempted_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))

-- | Create a new 'BankConnectionsResourceBalanceRefresh' with all required fields.
mkBankConnectionsResourceBalanceRefresh ::
  -- | 'bankConnectionsResourceBalanceRefreshLastAttemptedAt'
  GHC.Types.Int ->
  -- | 'bankConnectionsResourceBalanceRefreshStatus'
  BankConnectionsResourceBalanceRefreshStatus' ->
  BankConnectionsResourceBalanceRefresh
mkBankConnectionsResourceBalanceRefresh bankConnectionsResourceBalanceRefreshLastAttemptedAt bankConnectionsResourceBalanceRefreshStatus =
  BankConnectionsResourceBalanceRefresh
    { bankConnectionsResourceBalanceRefreshLastAttemptedAt = bankConnectionsResourceBalanceRefreshLastAttemptedAt,
      bankConnectionsResourceBalanceRefreshStatus = bankConnectionsResourceBalanceRefreshStatus
    }

-- | Defines the enum schema located at @components.schemas.bank_connections_resource_balance_refresh.properties.status@ in the specification.
--
-- The status of the last refresh attempt.
data BankConnectionsResourceBalanceRefreshStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    BankConnectionsResourceBalanceRefreshStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    BankConnectionsResourceBalanceRefreshStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"failed"@
    BankConnectionsResourceBalanceRefreshStatus'EnumFailed
  | -- | Represents the JSON value @"pending"@
    BankConnectionsResourceBalanceRefreshStatus'EnumPending
  | -- | Represents the JSON value @"succeeded"@
    BankConnectionsResourceBalanceRefreshStatus'EnumSucceeded
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON BankConnectionsResourceBalanceRefreshStatus' where
  toJSON (BankConnectionsResourceBalanceRefreshStatus'Other val) = val
  toJSON (BankConnectionsResourceBalanceRefreshStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (BankConnectionsResourceBalanceRefreshStatus'EnumFailed) = "failed"
  toJSON (BankConnectionsResourceBalanceRefreshStatus'EnumPending) = "pending"
  toJSON (BankConnectionsResourceBalanceRefreshStatus'EnumSucceeded) = "succeeded"

instance Data.Aeson.Types.FromJSON.FromJSON BankConnectionsResourceBalanceRefreshStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "failed" -> BankConnectionsResourceBalanceRefreshStatus'EnumFailed
            | val GHC.Classes.== "pending" -> BankConnectionsResourceBalanceRefreshStatus'EnumPending
            | val GHC.Classes.== "succeeded" -> BankConnectionsResourceBalanceRefreshStatus'EnumSucceeded
            | GHC.Base.otherwise -> BankConnectionsResourceBalanceRefreshStatus'Other val
      )
