.class public final synthetic Lccsancom/google/android/exoplayer2/upstream/cache/CacheKeyFactory$-CC;
.super Ljava/lang/Object;
.source "CacheKeyFactory.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lccsancom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->DEFAULT:Lccsancom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    return-void
.end method

.method public static synthetic lambda$static$0(Lccsancom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;
    .locals 1
    .param p0, "dataSpec"    # Lccsancom/google/android/exoplayer2/upstream/DataSpec;

    .line 25
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/DataSpec;->uri:Lccsanandroid/net/Uri;

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
