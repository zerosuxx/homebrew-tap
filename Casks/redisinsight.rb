cask "redisinsight" do
  version "3.0.2"

  on_intel do
    sha256 "18341722251abdd06c52c94a1819328773cd905ceced80ee06acbbd599571cda"

    url "https://github.com/redis/RedisInsight/releases/download/#{version}/Redis-Insight-mac-x64.dmg",
        verified: "github.com/redis/RedisInsight/releases/download/"
  end

  on_arm do
    sha256 "7fdc10124c2a5f9ca5bd9af38bcd7beb99b4db2e2dcdc0d3c5855a84577c4fe9"

    url "https://github.com/redis/RedisInsight/releases/download/#{version}/Redis-Insight-mac-arm64.dmg",
        verified: "github.com/redis/RedisInsight/releases/download/"
  end

  name "RedisInsight"
  desc "GUI tool for managing Redis databases"
  homepage "https://redis.com/redis-enterprise/redis-insight/"

  app "RedisInsight.app"

  zap trash: [
    "~/Library/Application Support/RedisInsight",
    "~/Library/Preferences/com.redis.RedisInsight.plist",
    "~/Library/Saved Application State/com.redis.RedisInsight.savedState"
  ]
end
