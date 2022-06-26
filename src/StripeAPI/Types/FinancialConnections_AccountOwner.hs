{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema FinancialConnections_AccountOwner
module StripeAPI.Types.FinancialConnections_AccountOwner where

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

-- | Defines the object schema located at @components.schemas.financial_connections.account_owner@ in the specification.
data FinancialConnections'accountOwner = FinancialConnections'accountOwner
  { -- | email: The email address of the owner.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    financialConnections'accountOwnerEmail :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    financialConnections'accountOwnerId :: Data.Text.Internal.Text,
    -- | name: The full name of the owner.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    financialConnections'accountOwnerName :: Data.Text.Internal.Text,
    -- | ownership: The ownership object that this owner belongs to.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    financialConnections'accountOwnerOwnership :: Data.Text.Internal.Text,
    -- | phone: The raw phone number of the owner.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    financialConnections'accountOwnerPhone :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | raw_address: The raw physical address of the owner.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    financialConnections'accountOwnerRawAddress :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | refreshed_at: The timestamp of the refresh that updated this owner.
    financialConnections'accountOwnerRefreshedAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON FinancialConnections'accountOwner where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("email" Data.Aeson.Types.ToJSON..=)) (financialConnections'accountOwnerEmail obj) : ["id" Data.Aeson.Types.ToJSON..= financialConnections'accountOwnerId obj] : ["name" Data.Aeson.Types.ToJSON..= financialConnections'accountOwnerName obj] : ["ownership" Data.Aeson.Types.ToJSON..= financialConnections'accountOwnerOwnership obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("phone" Data.Aeson.Types.ToJSON..=)) (financialConnections'accountOwnerPhone obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("raw_address" Data.Aeson.Types.ToJSON..=)) (financialConnections'accountOwnerRawAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refreshed_at" Data.Aeson.Types.ToJSON..=)) (financialConnections'accountOwnerRefreshedAt obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "financial_connections.account_owner"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("email" Data.Aeson.Types.ToJSON..=)) (financialConnections'accountOwnerEmail obj) : ["id" Data.Aeson.Types.ToJSON..= financialConnections'accountOwnerId obj] : ["name" Data.Aeson.Types.ToJSON..= financialConnections'accountOwnerName obj] : ["ownership" Data.Aeson.Types.ToJSON..= financialConnections'accountOwnerOwnership obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("phone" Data.Aeson.Types.ToJSON..=)) (financialConnections'accountOwnerPhone obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("raw_address" Data.Aeson.Types.ToJSON..=)) (financialConnections'accountOwnerRawAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refreshed_at" Data.Aeson.Types.ToJSON..=)) (financialConnections'accountOwnerRefreshedAt obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "financial_connections.account_owner"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON FinancialConnections'accountOwner where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "FinancialConnections'accountOwner" (\obj -> ((((((GHC.Base.pure FinancialConnections'accountOwner GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ownership")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "raw_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refreshed_at"))

-- | Create a new 'FinancialConnections'accountOwner' with all required fields.
mkFinancialConnections'accountOwner ::
  -- | 'financialConnections'accountOwnerId'
  Data.Text.Internal.Text ->
  -- | 'financialConnections'accountOwnerName'
  Data.Text.Internal.Text ->
  -- | 'financialConnections'accountOwnerOwnership'
  Data.Text.Internal.Text ->
  FinancialConnections'accountOwner
mkFinancialConnections'accountOwner financialConnections'accountOwnerId financialConnections'accountOwnerName financialConnections'accountOwnerOwnership =
  FinancialConnections'accountOwner
    { financialConnections'accountOwnerEmail = GHC.Maybe.Nothing,
      financialConnections'accountOwnerId = financialConnections'accountOwnerId,
      financialConnections'accountOwnerName = financialConnections'accountOwnerName,
      financialConnections'accountOwnerOwnership = financialConnections'accountOwnerOwnership,
      financialConnections'accountOwnerPhone = GHC.Maybe.Nothing,
      financialConnections'accountOwnerRawAddress = GHC.Maybe.Nothing,
      financialConnections'accountOwnerRefreshedAt = GHC.Maybe.Nothing
    }
