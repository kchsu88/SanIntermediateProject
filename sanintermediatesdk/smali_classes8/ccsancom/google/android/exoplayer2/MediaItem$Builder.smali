.class public final Lccsancom/google/android/exoplayer2/MediaItem$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adsConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration;

.field private clippingConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

.field private customCacheKey:Ljava/lang/String;

.field private drmConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

.field private liveConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

.field private mediaId:Ljava/lang/String;

.field private mediaMetadata:Lccsancom/google/android/exoplayer2/MediaMetadata;

.field private mimeType:Ljava/lang/String;

.field private streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field private subtitleConfigurations:Lccsancom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableList<",
            "Lccsancom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/Object;

.field private uri:Lccsanandroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 90
    new-instance v0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>(Lccsancom/google/android/exoplayer2/MediaItem$1;)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 91
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    .line 92
    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->of()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->subtitleConfigurations:Lccsancom/google/common/collect/ImmutableList;

    .line 93
    new-instance v0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 94
    return-void
.end method

.method private constructor <init>(Lccsancom/google/android/exoplayer2/MediaItem;)V
    .locals 3
    .param p1, "mediaItem"    # Lccsancom/google/android/exoplayer2/MediaItem;

    .line 97
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 98
    iget-object v0, p1, Lccsancom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->buildUpon()Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 99
    iget-object v0, p1, Lccsancom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->mediaId:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lccsancom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lccsancom/google/android/exoplayer2/MediaMetadata;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->mediaMetadata:Lccsancom/google/android/exoplayer2/MediaMetadata;

    .line 101
    iget-object v0, p1, Lccsancom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->buildUpon()Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 102
    iget-object v0, p1, Lccsancom/google/android/exoplayer2/MediaItem;->localConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    .line 103
    .local v0, "localConfiguration":Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;
    if-eqz v0, :cond_1

    .line 104
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    .line 105
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->mimeType:Ljava/lang/String;

    .line 106
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Lccsanandroid/net/Uri;

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->uri:Lccsanandroid/net/Uri;

    .line 107
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    .line 108
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;->subtitleConfigurations:Lccsancom/google/common/collect/ImmutableList;

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->subtitleConfigurations:Lccsancom/google/common/collect/ImmutableList;

    .line 109
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->tag:Ljava/lang/Object;

    .line 110
    nop

    .line 111
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;->drmConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;->drmConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;->buildUpon()Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    move-result-object v1

    goto :goto_0

    .line 113
    :cond_0
    new-instance v1, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>(Lccsancom/google/android/exoplayer2/MediaItem$1;)V

    :goto_0
    iput-object v1, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 114
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;->adsConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->adsConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    .line 116
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/MediaItem;Lccsancom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/MediaItem;
    .param p2, "x1"    # Lccsancom/google/android/exoplayer2/MediaItem$1;

    .line 65
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/MediaItem$Builder;-><init>(Lccsancom/google/android/exoplayer2/MediaItem;)V

    return-void
.end method


# virtual methods
.method public build()Lccsancom/google/android/exoplayer2/MediaItem;
    .locals 13

    .line 504
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$200(Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Lccsanandroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$300(Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "localConfiguration":Lccsancom/google/android/exoplayer2/MediaItem$PlaybackProperties;
    iget-object v11, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->uri:Lccsanandroid/net/Uri;

    .line 507
    .local v11, "uri":Lccsanandroid/net/Uri;
    if-eqz v11, :cond_3

    .line 508
    new-instance v12, Lccsancom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->mimeType:Ljava/lang/String;

    .line 512
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$300(Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->build()Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    move-object v4, v1

    iget-object v5, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->adsConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    iget-object v6, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    iget-object v7, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    iget-object v8, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->subtitleConfigurations:Lccsancom/google/common/collect/ImmutableList;

    iget-object v9, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->tag:Ljava/lang/Object;

    const/4 v10, 0x0

    move-object v1, v12

    move-object v2, v11

    invoke-direct/range {v1 .. v10}, Lccsancom/google/android/exoplayer2/MediaItem$PlaybackProperties;-><init>(Lccsanandroid/net/Uri;Ljava/lang/String;Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lccsancom/google/common/collect/ImmutableList;Ljava/lang/Object;Lccsancom/google/android/exoplayer2/MediaItem$1;)V

    move-object v0, v12

    .line 519
    :cond_3
    new-instance v8, Lccsancom/google/android/exoplayer2/MediaItem;

    .line 520
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->mediaId:Ljava/lang/String;

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const-string v1, ""

    :goto_3
    move-object v2, v1

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 521
    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->buildClippingProperties()Lccsancom/google/android/exoplayer2/MediaItem$ClippingProperties;

    move-result-object v3

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 523
    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->build()Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-result-object v5

    .line 524
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->mediaMetadata:Lccsancom/google/android/exoplayer2/MediaMetadata;

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    sget-object v1, Lccsancom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lccsancom/google/android/exoplayer2/MediaMetadata;

    :goto_4
    move-object v6, v1

    const/4 v7, 0x0

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lccsancom/google/android/exoplayer2/MediaItem;-><init>(Ljava/lang/String;Lccsancom/google/android/exoplayer2/MediaItem$ClippingProperties;Lccsancom/google/android/exoplayer2/MediaItem$PlaybackProperties;Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lccsancom/google/android/exoplayer2/MediaMetadata;Lccsancom/google/android/exoplayer2/MediaItem$1;)V

    .line 519
    return-object v8
.end method

.method public setAdTagUri(Lccsanandroid/net/Uri;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "adTagUri"    # Lccsanandroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 411
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->setAdTagUri(Lccsanandroid/net/Uri;Ljava/lang/Object;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAdTagUri(Lccsanandroid/net/Uri;Ljava/lang/Object;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "adTagUri"    # Lccsanandroid/net/Uri;
    .param p2, "adsId"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 421
    nop

    .line 422
    if-eqz p1, :cond_0

    new-instance v0, Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;

    invoke-direct {v0, p1}, Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;-><init>(Lccsanandroid/net/Uri;)V

    invoke-virtual {v0, p2}, Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;->setAdsId(Ljava/lang/Object;)Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;->build()Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->adsConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    .line 423
    return-object p0
.end method

.method public setAdTagUri(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "adTagUri"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 402
    if-eqz p1, :cond_0

    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->setAdTagUri(Lccsanandroid/net/Uri;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAdsConfiguration(Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0
    .param p1, "adsConfiguration"    # Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    .line 391
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->adsConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    .line 392
    return-object p0
.end method

.method public setClipEndPositionMs(J)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "endPositionMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setEndPositionMs(J)Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 188
    return-object p0
.end method

.method public setClipRelativeToDefaultPosition(Z)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "relativeToDefaultPosition"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setRelativeToDefaultPosition(Z)Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 208
    return-object p0
.end method

.method public setClipRelativeToLiveWindow(Z)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "relativeToLiveWindow"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setRelativeToLiveWindow(Z)Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 198
    return-object p0
.end method

.method public setClipStartPositionMs(J)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "startPositionMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setStartPositionMs(J)Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 178
    return-object p0
.end method

.method public setClipStartsAtKeyFrame(Z)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "startsAtKeyFrame"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setStartsAtKeyFrame(Z)Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 218
    return-object p0
.end method

.method public setClippingConfiguration(Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "clippingConfiguration"    # Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    .line 167
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->buildUpon()Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 168
    return-object p0
.end method

.method public setCustomCacheKey(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0
    .param p1, "customCacheKey"    # Ljava/lang/String;

    .line 359
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    .line 360
    return-object p0
.end method

.method public setDrmConfiguration(Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 2
    .param p1, "drmConfiguration"    # Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    .line 223
    nop

    .line 224
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;->buildUpon()Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>(Lccsancom/google/android/exoplayer2/MediaItem$1;)V

    :goto_0
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 225
    return-object p0
.end method

.method public setDrmForceDefaultLicenseUri(Z)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "forceDefaultLicenseUri"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setForceDefaultLicenseUri(Z)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 289
    return-object p0
.end method

.method public setDrmKeySetId([B)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "keySetId"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setKeySetId([B)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 333
    return-object p0
.end method

.method public setDrmLicenseRequestHeaders(Ljava/util/Map;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lccsancom/google/android/exoplayer2/MediaItem$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    .local p1, "licenseRequestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 258
    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lccsancom/google/common/collect/ImmutableMap;->of()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 257
    :goto_0
    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setLicenseRequestHeaders(Ljava/util/Map;)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 259
    return-object p0
.end method

.method public setDrmLicenseUri(Lccsanandroid/net/Uri;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "licenseUri"    # Lccsanandroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setLicenseUri(Lccsanandroid/net/Uri;)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 235
    return-object p0
.end method

.method public setDrmLicenseUri(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "licenseUri"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setLicenseUri(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 245
    return-object p0
.end method

.method public setDrmMultiSession(Z)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "multiSession"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setMultiSession(Z)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 279
    return-object p0
.end method

.method public setDrmPlayClearContentWithoutKey(Z)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "playClearContentWithoutKey"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setPlayClearContentWithoutKey(Z)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 299
    return-object p0
.end method

.method public setDrmSessionForClearPeriods(Z)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "sessionForClearPeriods"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forceSessionsForAudioAndVideoTracks(Z)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 309
    return-object p0
.end method

.method public setDrmSessionForClearTypes(Ljava/util/List;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lccsancom/google/android/exoplayer2/MediaItem$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 321
    .local p1, "sessionForClearTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 322
    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->of()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 321
    :goto_0
    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setForcedSessionTrackTypes(Ljava/util/List;)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 323
    return-object p0
.end method

.method public setDrmUuid(Ljava/util/UUID;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$100(Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;Ljava/util/UUID;)Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 269
    return-object p0
.end method

.method public setLiveConfiguration(Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "liveConfiguration"    # Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 428
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->buildUpon()Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 429
    return-object p0
.end method

.method public setLiveMaxOffsetMs(J)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "liveMaxOffsetMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 458
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMaxOffsetMs(J)Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 459
    return-object p0
.end method

.method public setLiveMaxPlaybackSpeed(F)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "maxPlaybackSpeed"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 478
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMaxPlaybackSpeed(F)Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 479
    return-object p0
.end method

.method public setLiveMinOffsetMs(J)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "liveMinOffsetMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 448
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMinOffsetMs(J)Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 449
    return-object p0
.end method

.method public setLiveMinPlaybackSpeed(F)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "minPlaybackSpeed"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 468
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMinPlaybackSpeed(F)Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 469
    return-object p0
.end method

.method public setLiveTargetOffsetMs(J)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "liveTargetOffsetMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 438
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setTargetOffsetMs(J)Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 439
    return-object p0
.end method

.method public setMediaId(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;

    .line 124
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->mediaId:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public setMediaMetadata(Lccsancom/google/android/exoplayer2/MediaMetadata;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0
    .param p1, "mediaMetadata"    # Lccsancom/google/android/exoplayer2/MediaMetadata;

    .line 496
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->mediaMetadata:Lccsancom/google/android/exoplayer2/MediaMetadata;

    .line 497
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->mimeType:Ljava/lang/String;

    .line 162
    return-object p0
.end method

.method public setStreamKeys(Ljava/util/List;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/offline/StreamKey;",
            ">;)",
            "Lccsancom/google/android/exoplayer2/MediaItem$Builder;"
        }
    .end annotation

    .line 346
    .local p1, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/exoplayer2/offline/StreamKey;>;"
    nop

    .line 347
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 349
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    .line 350
    return-object p0
.end method

.method public setSubtitleConfigurations(Ljava/util/List;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;",
            ">;)",
            "Lccsancom/google/android/exoplayer2/MediaItem$Builder;"
        }
    .end annotation

    .line 381
    .local p1, "subtitleConfigurations":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;>;"
    invoke-static {p1}, Lccsancom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->subtitleConfigurations:Lccsancom/google/common/collect/ImmutableList;

    .line 382
    return-object p0
.end method

.method public setSubtitles(Ljava/util/List;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/MediaItem$Subtitle;",
            ">;)",
            "Lccsancom/google/android/exoplayer2/MediaItem$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 370
    .local p1, "subtitles":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/exoplayer2/MediaItem$Subtitle;>;"
    nop

    .line 371
    if-eqz p1, :cond_0

    invoke-static {p1}, Lccsancom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->of()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->subtitleConfigurations:Lccsancom/google/common/collect/ImmutableList;

    .line 372
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .line 490
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->tag:Ljava/lang/Object;

    .line 491
    return-object p0
.end method

.method public setUri(Lccsanandroid/net/Uri;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0
    .param p1, "uri"    # Lccsanandroid/net/Uri;

    .line 147
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->uri:Lccsanandroid/net/Uri;

    .line 148
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 136
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->setUri(Lccsanandroid/net/Uri;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    return-object v0
.end method
