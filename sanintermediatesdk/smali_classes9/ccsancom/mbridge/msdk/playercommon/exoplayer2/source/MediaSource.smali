.class public interface abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$SourceInfoRefreshListener;
    }
.end annotation


# virtual methods
.method public abstract addEventListener(Lccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;)V
.end method

.method public abstract createPeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocator;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;
.end method

.method public abstract maybeThrowSourceInfoRefreshError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract prepareSource(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;ZLccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$SourceInfoRefreshListener;)V
.end method

.method public abstract releasePeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)V
.end method

.method public abstract releaseSource(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$SourceInfoRefreshListener;)V
.end method

.method public abstract removeEventListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;)V
.end method
