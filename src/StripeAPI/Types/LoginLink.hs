{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema LoginLink
module StripeAPI.Types.LoginLink where

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

-- | Defines the object schema located at @components.schemas.login_link@ in the specification.
data LoginLink = LoginLink
  { -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    loginLinkCreated :: GHC.Types.Int,
    -- | url: The URL for the login link.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    loginLinkUrl :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON LoginLink where
  toJSON obj = Data.Aeson.Types.Internal.object ("created" Data.Aeson.Types.ToJSON..= loginLinkCreated obj : "url" Data.Aeson.Types.ToJSON..= loginLinkUrl obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "login_link" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("created" Data.Aeson.Types.ToJSON..= loginLinkCreated obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= loginLinkUrl obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "login_link")))

instance Data.Aeson.Types.FromJSON.FromJSON LoginLink where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "LoginLink" (\obj -> (GHC.Base.pure LoginLink GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'LoginLink' with all required fields.
mkLoginLink ::
  -- | 'loginLinkCreated'
  GHC.Types.Int ->
  -- | 'loginLinkUrl'
  Data.Text.Internal.Text ->
  LoginLink
mkLoginLink loginLinkCreated loginLinkUrl =
  LoginLink
    { loginLinkCreated = loginLinkCreated,
      loginLinkUrl = loginLinkUrl
    }
