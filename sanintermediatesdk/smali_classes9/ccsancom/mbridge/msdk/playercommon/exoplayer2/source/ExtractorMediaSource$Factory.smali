.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;
.super Ljava/lang/Object;
.source "ExtractorMediaSource.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private continueLoadingCheckIntervalBytes:I

.field private customCacheKey:Ljava/lang/String;

.field private final dataSourceFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

.field private extractorsFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

.field private isCreateCalled:Z

.field private minLoadableRetryCount:I

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->dataSourceFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

    .line 123
    const/4 p1, -0x1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->minLoadableRetryCount:I

    .line 124
    const/high16 p1, 0x100000

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    .line 125
    return-void
.end method


# virtual methods
.method public final createMediaSource(Lccsanandroid/net/Uri;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource;
    .locals 10

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    .line 213
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->extractorsFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->extractorsFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

    .line 216
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->dataSourceFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->extractorsFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

    iget v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->minLoadableRetryCount:I

    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->customCacheKey:Ljava/lang/String;

    iget v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    iget-object v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->tag:Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource;-><init>(Lccsanandroid/net/Uri;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;ILjava/lang/String;ILjava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$1;)V

    return-object v0
.end method

.method public final createMediaSource(Lccsanandroid/net/Uri;Lccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource;
    .locals 0

    .line 233
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Lccsanandroid/net/Uri;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    .line 234
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 235
    invoke-virtual {p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource;->addEventListener(Lccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;)V

    .line 237
    :cond_0
    return-object p1
.end method

.method public final bridge synthetic createMediaSource(Lccsanandroid/net/Uri;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Lccsanandroid/net/Uri;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public final getSupportedTypes()[I
    .locals 3

    .line 242
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    return-object v0
.end method

.method public final setContinueLoadingCheckIntervalBytes(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;
    .locals 1

    .line 199
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 200
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    .line 201
    return-object p0
.end method

.method public final setCustomCacheKey(Ljava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;
    .locals 1

    .line 153
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 154
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->customCacheKey:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public final setExtractorsFactory(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;
    .locals 1

    .line 138
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 139
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->extractorsFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

    .line 140
    return-object p0
.end method

.method public final setMinLoadableRetryCount(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;
    .locals 1

    .line 182
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 183
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->minLoadableRetryCount:I

    .line 184
    return-object p0
.end method

.method public final setTag(Ljava/lang/Object;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;
    .locals 1

    .line 168
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 169
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->tag:Ljava/lang/Object;

    .line 170
    return-object p0
.end method
