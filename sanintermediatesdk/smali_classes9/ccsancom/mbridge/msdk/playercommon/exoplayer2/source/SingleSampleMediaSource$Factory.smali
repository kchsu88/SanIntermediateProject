.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource$Factory;
.super Ljava/lang/Object;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final dataSourceFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

.field private isCreateCalled:Z

.field private minLoadableRetryCount:I

.field private tag:Ljava/lang/Object;

.field private treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource$Factory;->dataSourceFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

    .line 71
    const/4 p1, 0x3

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource$Factory;->minLoadableRetryCount:I

    .line 72
    return-void
.end method


# virtual methods
.method public final createMediaSource(Lccsanandroid/net/Uri;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource;
    .locals 11

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource$Factory;->isCreateCalled:Z

    .line 128
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource$Factory;->dataSourceFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

    iget v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource$Factory;->minLoadableRetryCount:I

    iget-boolean v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    iget-object v9, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource$Factory;->tag:Ljava/lang/Object;

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource;-><init>(Lccsanandroid/net/Uri;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;JIZLjava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource$1;)V

    return-object v0
.end method

.method public final createMediaSource(Lccsanandroid/net/Uri;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;JLccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource;
    .locals 0

    .line 149
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource$Factory;->createMediaSource(Lccsanandroid/net/Uri;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource;

    move-result-object p1

    .line 150
    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    .line 151
    invoke-virtual {p1, p5, p6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource;->addEventListener(Lccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;)V

    .line 153
    :cond_0
    return-object p1
.end method

.method public final setMinLoadableRetryCount(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource$Factory;
    .locals 1

    .line 97
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 98
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource$Factory;->minLoadableRetryCount:I

    .line 99
    return-object p0
.end method

.method public final setTag(Ljava/lang/Object;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource$Factory;
    .locals 1

    .line 83
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 84
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource$Factory;->tag:Ljava/lang/Object;

    .line 85
    return-object p0
.end method

.method public final setTreatLoadErrorsAsEndOfStream(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource$Factory;
    .locals 1

    .line 113
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 114
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    .line 115
    return-object p0
.end method
