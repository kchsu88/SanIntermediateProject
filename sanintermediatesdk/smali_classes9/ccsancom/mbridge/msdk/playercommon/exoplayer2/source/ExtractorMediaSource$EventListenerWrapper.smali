.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/DefaultMediaSourceEventListener;
.source "ExtractorMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventListenerWrapper"
.end annotation


# instance fields
.field private final eventListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$EventListener;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$EventListener;)V
    .locals 0

    .line 413
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/DefaultMediaSourceEventListener;-><init>()V

    .line 414
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$EventListener;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;->eventListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$EventListener;

    .line 415
    return-void
.end method


# virtual methods
.method public final onLoadError(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    .line 425
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;->eventListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$EventListener;

    invoke-interface {p1, p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$EventListener;->onLoadError(Ljava/io/IOException;)V

    .line 426
    return-void
.end method
