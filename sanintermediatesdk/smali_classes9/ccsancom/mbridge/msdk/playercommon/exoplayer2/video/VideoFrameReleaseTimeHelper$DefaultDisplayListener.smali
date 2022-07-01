.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;
.super Ljava/lang/Object;
.source "VideoFrameReleaseTimeHelper.java"

# interfaces
.implements Lccsanandroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultDisplayListener"
.end annotation


# instance fields
.field private final displayManager:Lccsanandroid/hardware/display/DisplayManager;

.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper;Lccsanandroid/hardware/display/DisplayManager;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->displayManager:Lccsanandroid/hardware/display/DisplayManager;

    .line 237
    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .line 250
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 0

    .line 259
    if-nez p1, :cond_0

    .line 260
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper;)V

    .line 262
    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 255
    return-void
.end method

.method public final register()V
    .locals 2

    .line 240
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->displayManager:Lccsanandroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lccsanandroid/hardware/display/DisplayManager;->registerDisplayListener(Lccsanandroid/hardware/display/DisplayManager$DisplayListener;Lccsanandroid/os/Handler;)V

    .line 241
    return-void
.end method

.method public final unregister()V
    .locals 1

    .line 244
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->displayManager:Lccsanandroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Lccsanandroid/hardware/display/DisplayManager;->unregisterDisplayListener(Lccsanandroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 245
    return-void
.end method
