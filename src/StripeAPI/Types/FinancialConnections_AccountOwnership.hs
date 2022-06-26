{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema FinancialConnections_AccountOwnership
module StripeAPI.Types.FinancialConnections_AccountOwnership where

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
import {-# SOURCE #-} StripeAPI.Types.FinancialConnections_AccountOwner
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.financial_connections.account_ownership@ in the specification.
--
-- Describes a snapshot of the owners of an account at a particular point in time.
data FinancialConnections'accountOwnership = FinancialConnections'accountOwnership
  { -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    financialConnections'accountOwnershipCreated :: GHC.Types.Int,
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    financialConnections'accountOwnershipId :: Data.Text.Internal.Text,
    -- | owners: A paginated list of owners for this account.
    financialConnections'accountOwnershipOwners :: FinancialConnections'accountOwnershipOwners'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON FinancialConnections'accountOwnership where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= financialConnections'accountOwnershipCreated obj] : ["id" Data.Aeson.Types.ToJSON..= financialConnections'accountOwnershipId obj] : ["owners" Data.Aeson.Types.ToJSON..= financialConnections'accountOwnershipOwners obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "financial_connections.account_ownership"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= financialConnections'accountOwnershipCreated obj] : ["id" Data.Aeson.Types.ToJSON..= financialConnections'accountOwnershipId obj] : ["owners" Data.Aeson.Types.ToJSON..= financialConnections'accountOwnershipOwners obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "financial_connections.account_ownership"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON FinancialConnections'accountOwnership where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "FinancialConnections'accountOwnership" (\obj -> ((GHC.Base.pure FinancialConnections'accountOwnership GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "owners"))

-- | Create a new 'FinancialConnections'accountOwnership' with all required fields.
mkFinancialConnections'accountOwnership ::
  -- | 'financialConnections'accountOwnershipCreated'
  GHC.Types.Int ->
  -- | 'financialConnections'accountOwnershipId'
  Data.Text.Internal.Text ->
  -- | 'financialConnections'accountOwnershipOwners'
  FinancialConnections'accountOwnershipOwners' ->
  FinancialConnections'accountOwnership
mkFinancialConnections'accountOwnership financialConnections'accountOwnershipCreated financialConnections'accountOwnershipId financialConnections'accountOwnershipOwners =
  FinancialConnections'accountOwnership
    { financialConnections'accountOwnershipCreated = financialConnections'accountOwnershipCreated,
      financialConnections'accountOwnershipId = financialConnections'accountOwnershipId,
      financialConnections'accountOwnershipOwners = financialConnections'accountOwnershipOwners
    }

-- | Defines the object schema located at @components.schemas.financial_connections.account_ownership.properties.owners@ in the specification.
--
-- A paginated list of owners for this account.
data FinancialConnections'accountOwnershipOwners' = FinancialConnections'accountOwnershipOwners'
  { -- | data: Details about each object.
    financialConnections'accountOwnershipOwners'Data :: ([FinancialConnections'accountOwner]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    financialConnections'accountOwnershipOwners'HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    financialConnections'accountOwnershipOwners'Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON FinancialConnections'accountOwnershipOwners' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= financialConnections'accountOwnershipOwners'Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= financialConnections'accountOwnershipOwners'HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= financialConnections'accountOwnershipOwners'Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= financialConnections'accountOwnershipOwners'Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= financialConnections'accountOwnershipOwners'HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= financialConnections'accountOwnershipOwners'Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON FinancialConnections'accountOwnershipOwners' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "FinancialConnections'accountOwnershipOwners'" (\obj -> ((GHC.Base.pure FinancialConnections'accountOwnershipOwners' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'FinancialConnections'accountOwnershipOwners'' with all required fields.
mkFinancialConnections'accountOwnershipOwners' ::
  -- | 'financialConnections'accountOwnershipOwners'Data'
  [FinancialConnections'accountOwner] ->
  -- | 'financialConnections'accountOwnershipOwners'HasMore'
  GHC.Types.Bool ->
  -- | 'financialConnections'accountOwnershipOwners'Url'
  Data.Text.Internal.Text ->
  FinancialConnections'accountOwnershipOwners'
mkFinancialConnections'accountOwnershipOwners' financialConnections'accountOwnershipOwners'Data financialConnections'accountOwnershipOwners'HasMore financialConnections'accountOwnershipOwners'Url =
  FinancialConnections'accountOwnershipOwners'
    { financialConnections'accountOwnershipOwners'Data = financialConnections'accountOwnershipOwners'Data,
      financialConnections'accountOwnershipOwners'HasMore = financialConnections'accountOwnershipOwners'HasMore,
      financialConnections'accountOwnershipOwners'Url = financialConnections'accountOwnershipOwners'Url
    }
