.class public abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/BaseMediaSource;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/BaseMediaSource;"
    }
.end annotation


# instance fields
.field private final childSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;",
            ">;"
        }
    .end annotation
.end field

.field private eventHandler:Lccsanandroid/os/Handler;

.field private player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    .line 44
    return-void
.end method


# virtual methods
.method protected getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;",
            ")",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;"
        }
    .end annotation

    .line 147
    return-object p2
.end method

.method protected getMediaTimeForChildMediaTime(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    .line 159
    return-wide p2
.end method

.method protected getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 132
    return p2
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    .line 57
    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method protected abstract onChildSourceInfoRefreshed(Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method protected final prepareChildSource(Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;",
            ")V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 98
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$1;

    invoke-direct {v0, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$1;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;Ljava/lang/Object;)V

    .line 106
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;Ljava/lang/Object;)V

    .line 107
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    invoke-direct {v3, p2, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$SourceInfoRefreshListener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;->eventHandler:Lccsanandroid/os/Handler;

    invoke-interface {p2, p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;->addEventListener(Lccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;)V

    .line 109
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;->prepareSource(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;ZLccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$SourceInfoRefreshListener;)V

    .line 110
    return-void
.end method

.method public prepareSourceInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;Z)V
    .locals 0

    .line 49
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    .line 50
    new-instance p1, Lccsanandroid/os/Handler;

    invoke-direct {p1}, Lccsanandroid/os/Handler;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;->eventHandler:Lccsanandroid/os/Handler;

    .line 51
    return-void
.end method

.method protected final releaseChildSource(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    .line 119
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    iget-object v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$SourceInfoRefreshListener;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;->releaseSource(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$SourceInfoRefreshListener;)V

    .line 120
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;->removeEventListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;)V

    .line 121
    return-void
.end method

.method public releaseSourceInternal()V
    .locals 4

    .line 64
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    .line 65
    iget-object v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    iget-object v3, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$SourceInfoRefreshListener;

    invoke-interface {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;->releaseSource(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$SourceInfoRefreshListener;)V

    .line 66
    iget-object v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;

    invoke-interface {v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;->removeEventListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;)V

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    .line 70
    return-void
.end method
