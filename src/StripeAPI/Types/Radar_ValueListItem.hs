{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Radar_ValueListItem
module StripeAPI.Types.Radar_ValueListItem where

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

-- | Defines the object schema located at @components.schemas.radar.value_list_item@ in the specification.
--
-- Value list items allow you to add specific values to a given Radar value list, which can then be used in rules.
--
-- Related guide: [Managing List Items](https:\/\/stripe.com\/docs\/radar\/lists\#managing-list-items).
data Radar'valueListItem = Radar'valueListItem
  { -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    radar'valueListItemCreated :: GHC.Types.Int,
    -- | created_by: The name or email address of the user who added this item to the value list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    radar'valueListItemCreatedBy :: Data.Text.Internal.Text,
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    radar'valueListItemId :: Data.Text.Internal.Text,
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    radar'valueListItemLivemode :: GHC.Types.Bool,
    -- | value: The value of the item.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    radar'valueListItemValue :: Data.Text.Internal.Text,
    -- | value_list: The identifier of the value list this item belongs to.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    radar'valueListItemValueList :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Radar'valueListItem where
  toJSON obj = Data.Aeson.Types.Internal.object ("created" Data.Aeson.Types.ToJSON..= radar'valueListItemCreated obj : "created_by" Data.Aeson.Types.ToJSON..= radar'valueListItemCreatedBy obj : "id" Data.Aeson.Types.ToJSON..= radar'valueListItemId obj : "livemode" Data.Aeson.Types.ToJSON..= radar'valueListItemLivemode obj : "value" Data.Aeson.Types.ToJSON..= radar'valueListItemValue obj : "value_list" Data.Aeson.Types.ToJSON..= radar'valueListItemValueList obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "radar.value_list_item" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("created" Data.Aeson.Types.ToJSON..= radar'valueListItemCreated obj) GHC.Base.<> (("created_by" Data.Aeson.Types.ToJSON..= radar'valueListItemCreatedBy obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= radar'valueListItemId obj) GHC.Base.<> (("livemode" Data.Aeson.Types.ToJSON..= radar'valueListItemLivemode obj) GHC.Base.<> (("value" Data.Aeson.Types.ToJSON..= radar'valueListItemValue obj) GHC.Base.<> (("value_list" Data.Aeson.Types.ToJSON..= radar'valueListItemValueList obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "radar.value_list_item")))))))

instance Data.Aeson.Types.FromJSON.FromJSON Radar'valueListItem where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Radar'valueListItem" (\obj -> (((((GHC.Base.pure Radar'valueListItem GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created_by")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value_list"))

-- | Create a new 'Radar'valueListItem' with all required fields.
mkRadar'valueListItem ::
  -- | 'radar'valueListItemCreated'
  GHC.Types.Int ->
  -- | 'radar'valueListItemCreatedBy'
  Data.Text.Internal.Text ->
  -- | 'radar'valueListItemId'
  Data.Text.Internal.Text ->
  -- | 'radar'valueListItemLivemode'
  GHC.Types.Bool ->
  -- | 'radar'valueListItemValue'
  Data.Text.Internal.Text ->
  -- | 'radar'valueListItemValueList'
  Data.Text.Internal.Text ->
  Radar'valueListItem
mkRadar'valueListItem radar'valueListItemCreated radar'valueListItemCreatedBy radar'valueListItemId radar'valueListItemLivemode radar'valueListItemValue radar'valueListItemValueList =
  Radar'valueListItem
    { radar'valueListItemCreated = radar'valueListItemCreated,
      radar'valueListItemCreatedBy = radar'valueListItemCreatedBy,
      radar'valueListItemId = radar'valueListItemId,
      radar'valueListItemLivemode = radar'valueListItemLivemode,
      radar'valueListItemValue = radar'valueListItemValue,
      radar'valueListItemValueList = radar'valueListItemValueList
    }
