{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Balance
module StripeAPI.Types.Balance where

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
import {-# SOURCE #-} StripeAPI.Types.BalanceAmount
import {-# SOURCE #-} StripeAPI.Types.BalanceDetail
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.balance@ in the specification.
--
-- This is an object representing your Stripe balance. You can retrieve it to see
-- the balance currently on your Stripe account.
--
-- You can also retrieve the balance history, which contains a list of
-- [transactions](https:\/\/stripe.com\/docs\/reporting\/balance-transaction-types) that contributed to the balance
-- (charges, payouts, and so forth).
--
-- The available and pending amounts for each currency are broken down further by
-- payment source types.
--
-- Related guide: [Understanding Connect Account Balances](https:\/\/stripe.com\/docs\/connect\/account-balances).
data Balance = Balance
  { -- | available: Funds that are available to be transferred or paid out, whether automatically by Stripe or explicitly via the [Transfers API](https:\/\/stripe.com\/docs\/api\#transfers) or [Payouts API](https:\/\/stripe.com\/docs\/api\#payouts). The available balance for each currency and payment type can be found in the \`source_types\` property.
    balanceAvailable :: ([BalanceAmount]),
    -- | connect_reserved: Funds held due to negative balances on connected Custom accounts. The connect reserve balance for each currency and payment type can be found in the \`source_types\` property.
    balanceConnectReserved :: (GHC.Maybe.Maybe ([BalanceAmount])),
    -- | instant_available: Funds that can be paid out using Instant Payouts.
    balanceInstantAvailable :: (GHC.Maybe.Maybe ([BalanceAmount])),
    -- | issuing:
    balanceIssuing :: (GHC.Maybe.Maybe BalanceDetail),
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    balanceLivemode :: GHC.Types.Bool,
    -- | pending: Funds that are not yet available in the balance, due to the 7-day rolling pay cycle. The pending balance for each currency, and for each payment type, can be found in the \`source_types\` property.
    balancePending :: ([BalanceAmount])
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Balance where
  toJSON obj = Data.Aeson.Types.Internal.object ("available" Data.Aeson.Types.ToJSON..= balanceAvailable obj : "connect_reserved" Data.Aeson.Types.ToJSON..= balanceConnectReserved obj : "instant_available" Data.Aeson.Types.ToJSON..= balanceInstantAvailable obj : "issuing" Data.Aeson.Types.ToJSON..= balanceIssuing obj : "livemode" Data.Aeson.Types.ToJSON..= balanceLivemode obj : "pending" Data.Aeson.Types.ToJSON..= balancePending obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "balance" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("available" Data.Aeson.Types.ToJSON..= balanceAvailable obj) GHC.Base.<> (("connect_reserved" Data.Aeson.Types.ToJSON..= balanceConnectReserved obj) GHC.Base.<> (("instant_available" Data.Aeson.Types.ToJSON..= balanceInstantAvailable obj) GHC.Base.<> (("issuing" Data.Aeson.Types.ToJSON..= balanceIssuing obj) GHC.Base.<> (("livemode" Data.Aeson.Types.ToJSON..= balanceLivemode obj) GHC.Base.<> (("pending" Data.Aeson.Types.ToJSON..= balancePending obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "balance")))))))

instance Data.Aeson.Types.FromJSON.FromJSON Balance where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Balance" (\obj -> (((((GHC.Base.pure Balance GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "available")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "connect_reserved")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "instant_available")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "issuing")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pending"))

-- | Create a new 'Balance' with all required fields.
mkBalance ::
  -- | 'balanceAvailable'
  [BalanceAmount] ->
  -- | 'balanceLivemode'
  GHC.Types.Bool ->
  -- | 'balancePending'
  [BalanceAmount] ->
  Balance
mkBalance balanceAvailable balanceLivemode balancePending =
  Balance
    { balanceAvailable = balanceAvailable,
      balanceConnectReserved = GHC.Maybe.Nothing,
      balanceInstantAvailable = GHC.Maybe.Nothing,
      balanceIssuing = GHC.Maybe.Nothing,
      balanceLivemode = balanceLivemode,
      balancePending = balancePending
    }
