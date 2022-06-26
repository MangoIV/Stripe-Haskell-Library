{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema FundingInstructions
module StripeAPI.Types.FundingInstructions where

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
import {-# SOURCE #-} StripeAPI.Types.FundingInstructionsBankTransfer
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.funding_instructions@ in the specification.
--
-- Each customer has a [\`balance\`](https:\/\/stripe.com\/docs\/api\/customers\/object\#customer_object-balance) that is
-- automatically applied to future invoices and payments using the \`customer_balance\` payment method.
-- Customers can fund this balance by initiating a bank transfer to any account in the
-- \`financial_addresses\` field.
-- Related guide: [Customer Balance - Funding Instructions](https:\/\/stripe.com\/docs\/payments\/customer-balance\/funding-instructions) to learn more
data FundingInstructions = FundingInstructions
  { -- | bank_transfer:
    fundingInstructionsBankTransfer :: FundingInstructionsBankTransfer,
    -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    fundingInstructionsCurrency :: Data.Text.Internal.Text,
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    fundingInstructionsLivemode :: GHC.Types.Bool
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON FundingInstructions where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["bank_transfer" Data.Aeson.Types.ToJSON..= fundingInstructionsBankTransfer obj] : ["currency" Data.Aeson.Types.ToJSON..= fundingInstructionsCurrency obj] : ["livemode" Data.Aeson.Types.ToJSON..= fundingInstructionsLivemode obj] : ["funding_type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "bank_transfer"] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "funding_instructions"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["bank_transfer" Data.Aeson.Types.ToJSON..= fundingInstructionsBankTransfer obj] : ["currency" Data.Aeson.Types.ToJSON..= fundingInstructionsCurrency obj] : ["livemode" Data.Aeson.Types.ToJSON..= fundingInstructionsLivemode obj] : ["funding_type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "bank_transfer"] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "funding_instructions"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON FundingInstructions where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "FundingInstructions" (\obj -> ((GHC.Base.pure FundingInstructions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "bank_transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode"))

-- | Create a new 'FundingInstructions' with all required fields.
mkFundingInstructions ::
  -- | 'fundingInstructionsBankTransfer'
  FundingInstructionsBankTransfer ->
  -- | 'fundingInstructionsCurrency'
  Data.Text.Internal.Text ->
  -- | 'fundingInstructionsLivemode'
  GHC.Types.Bool ->
  FundingInstructions
mkFundingInstructions fundingInstructionsBankTransfer fundingInstructionsCurrency fundingInstructionsLivemode =
  FundingInstructions
    { fundingInstructionsBankTransfer = fundingInstructionsBankTransfer,
      fundingInstructionsCurrency = fundingInstructionsCurrency,
      fundingInstructionsLivemode = fundingInstructionsLivemode
    }
