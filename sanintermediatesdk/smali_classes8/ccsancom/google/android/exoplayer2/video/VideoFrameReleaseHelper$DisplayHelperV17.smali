.class final Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;
.super Ljava/lang/Object;
.source "VideoFrameReleaseHelper.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;
.implements Lccsanandroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayHelperV17"
.end annotation


# instance fields
.field private final displayManager:Lccsanandroid/hardware/display/DisplayManager;

.field private listener:Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;


# direct methods
.method private constructor <init>(Lccsanandroid/hardware/display/DisplayManager;)V
    .locals 0
    .param p1, "displayManager"    # Lccsanandroid/hardware/display/DisplayManager;

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;->displayManager:Lccsanandroid/hardware/display/DisplayManager;

    .line 522
    return-void
.end method

.method private getDefaultDisplay()Lccsanandroid/view/Display;
    .locals 2

    .line 555
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;->displayManager:Lccsanandroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/hardware/display/DisplayManager;->getDisplay(I)Lccsanandroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static maybeBuildNewInstance(Lccsanandroid/content/Context;)Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 512
    nop

    .line 513
    const-string v0, "display"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/hardware/display/DisplayManager;

    .line 514
    .local v0, "displayManager":Lccsanandroid/hardware/display/DisplayManager;
    if-eqz v0, :cond_0

    new-instance v1, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;

    invoke-direct {v1, v0}, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;-><init>(Lccsanandroid/hardware/display/DisplayManager;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 547
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 539
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;->listener:Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 540
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;->onDefaultDisplayChanged(Lccsanandroid/view/Display;)V

    .line 542
    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 552
    return-void
.end method

.method public register(Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;)V
    .locals 2
    .param p1, "listener"    # Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;

    .line 526
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;->listener:Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;

    .line 527
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;->displayManager:Lccsanandroid/hardware/display/DisplayManager;

    invoke-static {}, Lccsancom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper()Lccsanandroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lccsanandroid/hardware/display/DisplayManager;->registerDisplayListener(Lccsanandroid/hardware/display/DisplayManager$DisplayListener;Lccsanandroid/os/Handler;)V

    .line 528
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object v0

    invoke-interface {p1, v0}, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;->onDefaultDisplayChanged(Lccsanandroid/view/Display;)V

    .line 529
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 533
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;->displayManager:Lccsanandroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Lccsanandroid/hardware/display/DisplayManager;->unregisterDisplayListener(Lccsanandroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;->listener:Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;

    .line 535
    return-void
.end method
