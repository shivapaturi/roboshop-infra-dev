data "aws_cloudfront_cache_policy" "cacheEnable" {
    name = "Managed-CachingOptimized"
}

data "aws_cloudfront_cache_policy" "cacheDisable" {
    name = "Managed-CachingDisabled"
}