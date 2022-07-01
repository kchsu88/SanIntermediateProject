.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceAndListener"
.end annotation


# instance fields
.field public final eventListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;

.field public final listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$SourceInfoRefreshListener;

.field public final mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$SourceInfoRefreshListener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    .line 173
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$SourceInfoRefreshListener;

    .line 174
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;

    .line 175
    return-void
.end method
