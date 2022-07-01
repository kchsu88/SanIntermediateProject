.class public final Lccsancom/google/android/exoplayer2/MediaItem$PlaybackProperties;
.super Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackProperties"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>(Lccsanandroid/net/Uri;Ljava/lang/String;Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lccsancom/google/common/collect/ImmutableList;Ljava/lang/Object;)V
    .locals 10
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "drmConfiguration"    # Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;
    .param p4, "adsConfiguration"    # Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration;
    .param p6, "customCacheKey"    # Ljava/lang/String;
    .param p8, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/net/Uri;",
            "Ljava/lang/String;",
            "Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;",
            "Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration;",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/offline/StreamKey;",
            ">;",
            "Ljava/lang/String;",
            "Lccsancom/google/common/collect/ImmutableList<",
            "Lccsancom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 986
    .local p5, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/exoplayer2/offline/StreamKey;>;"
    .local p7, "subtitleConfigurations":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;>;"
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;-><init>(Lccsanandroid/net/Uri;Ljava/lang/String;Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lccsancom/google/common/collect/ImmutableList;Ljava/lang/Object;Lccsancom/google/android/exoplayer2/MediaItem$1;)V

    .line 995
    return-void
.end method

.method synthetic constructor <init>(Lccsanandroid/net/Uri;Ljava/lang/String;Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lccsancom/google/common/collect/ImmutableList;Ljava/lang/Object;Lccsancom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0
    .param p1, "x0"    # Lccsanandroid/net/Uri;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;
    .param p4, "x3"    # Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration;
    .param p5, "x4"    # Ljava/util/List;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Lccsancom/google/common/collect/ImmutableList;
    .param p8, "x7"    # Ljava/lang/Object;
    .param p9, "x8"    # Lccsancom/google/android/exoplayer2/MediaItem$1;

    .line 975
    invoke-direct/range {p0 .. p8}, Lccsancom/google/android/exoplayer2/MediaItem$PlaybackProperties;-><init>(Lccsanandroid/net/Uri;Ljava/lang/String;Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lccsancom/google/common/collect/ImmutableList;Ljava/lang/Object;)V

    return-void
.end method
