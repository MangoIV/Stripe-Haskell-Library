{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema DeletedTaxId
module StripeAPI.Types.DeletedTaxId where

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

-- | Defines the object schema located at @components.schemas.deleted_tax_id@ in the specification.
data DeletedTaxId = DeletedTaxId
  { -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    deletedTaxIdId :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DeletedTaxId where
  toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= deletedTaxIdId obj : "deleted" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.Bool GHC.Types.True : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "tax_id" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= deletedTaxIdId obj) GHC.Base.<> (("deleted" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.Bool GHC.Types.True) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "tax_id")))

instance Data.Aeson.Types.FromJSON.FromJSON DeletedTaxId where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedTaxId" (\obj -> GHC.Base.pure DeletedTaxId GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id"))

-- | Create a new 'DeletedTaxId' with all required fields.
mkDeletedTaxId ::
  -- | 'deletedTaxIdId'
  Data.Text.Internal.Text ->
  DeletedTaxId
mkDeletedTaxId deletedTaxIdId = DeletedTaxId {deletedTaxIdId = deletedTaxIdId}
