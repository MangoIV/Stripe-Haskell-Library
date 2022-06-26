{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema CountrySpecVerificationFieldDetails
module StripeAPI.Types.CountrySpecVerificationFieldDetails where

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

-- | Defines the object schema located at @components.schemas.country_spec_verification_field_details@ in the specification.
data CountrySpecVerificationFieldDetails = CountrySpecVerificationFieldDetails
  { -- | additional: Additional fields which are only required for some users.
    countrySpecVerificationFieldDetailsAdditional :: ([Data.Text.Internal.Text]),
    -- | minimum: Fields which every account must eventually provide.
    countrySpecVerificationFieldDetailsMinimum :: ([Data.Text.Internal.Text])
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON CountrySpecVerificationFieldDetails where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["additional" Data.Aeson.Types.ToJSON..= countrySpecVerificationFieldDetailsAdditional obj] : ["minimum" Data.Aeson.Types.ToJSON..= countrySpecVerificationFieldDetailsMinimum obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["additional" Data.Aeson.Types.ToJSON..= countrySpecVerificationFieldDetailsAdditional obj] : ["minimum" Data.Aeson.Types.ToJSON..= countrySpecVerificationFieldDetailsMinimum obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON CountrySpecVerificationFieldDetails where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "CountrySpecVerificationFieldDetails" (\obj -> (GHC.Base.pure CountrySpecVerificationFieldDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "additional")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "minimum"))

-- | Create a new 'CountrySpecVerificationFieldDetails' with all required fields.
mkCountrySpecVerificationFieldDetails ::
  -- | 'countrySpecVerificationFieldDetailsAdditional'
  [Data.Text.Internal.Text] ->
  -- | 'countrySpecVerificationFieldDetailsMinimum'
  [Data.Text.Internal.Text] ->
  CountrySpecVerificationFieldDetails
mkCountrySpecVerificationFieldDetails countrySpecVerificationFieldDetailsAdditional countrySpecVerificationFieldDetailsMinimum =
  CountrySpecVerificationFieldDetails
    { countrySpecVerificationFieldDetailsAdditional = countrySpecVerificationFieldDetailsAdditional,
      countrySpecVerificationFieldDetailsMinimum = countrySpecVerificationFieldDetailsMinimum
    }
