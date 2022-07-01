.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field final synthetic val$listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;

.field final synthetic val$loadEventInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;

.field final synthetic val$mediaLoadData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;

    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$loadEventInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;

    iput-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$mediaLoadData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 407
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$loadEventInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$mediaLoadData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;

    invoke-interface {v0, v1, v2, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;->onLoadStarted(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    .line 408
    return-void
.end method
