.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$1;
.super Lccsanandroid/os/Handler;
.source "ExoPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;-><init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$1;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;

    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$1;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->handleEvent(Lccsanandroid/os/Message;)V

    .line 112
    return-void
.end method
