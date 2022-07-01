.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsLoader$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field private final playerHandler:Lccsanandroid/os/Handler;

.field private volatile released:Z

.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    new-instance p1, Lccsanandroid/os/Handler;

    invoke-direct {p1}, Lccsanandroid/os/Handler;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->playerHandler:Lccsanandroid/os/Handler;

    .line 478
    return-void
.end method

.method static synthetic access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)Z
    .locals 0

    .line 466
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->released:Z

    return p0
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 2

    .line 504
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->released:Z

    if-eqz v0, :cond_0

    .line 505
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;->access$400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;)Lccsanandroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;->access$500(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$EventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;->access$400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;)Lccsanandroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener$2;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener$2;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 517
    :cond_1
    return-void
.end method

.method public final onAdLoadError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$AdLoadException;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)V
    .locals 13

    .line 538
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->released:Z

    if-eqz v0, :cond_0

    .line 539
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;->access$600(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v2

    const/4 v4, 0x6

    const-wide/16 v5, -0x1

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v12, 0x1

    .line 542
    move-object v3, p2

    move-object v11, p1

    invoke-virtual/range {v2 .. v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    .line 550
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;->access$400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;)Lccsanandroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;->access$500(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$EventListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 551
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;->access$400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;)Lccsanandroid/os/Handler;

    move-result-object p2

    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener$4;

    invoke-direct {v0, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener$4;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$AdLoadException;)V

    invoke-virtual {p2, v0}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 565
    :cond_1
    return-void
.end method

.method public final onAdPlaybackState(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 2

    .line 488
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->released:Z

    if-eqz v0, :cond_0

    .line 489
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->playerHandler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener$1;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener$1;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdPlaybackState;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 500
    return-void
.end method

.method public final onAdTapped()V
    .locals 2

    .line 521
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->released:Z

    if-eqz v0, :cond_0

    .line 522
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;->access$400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;)Lccsanandroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;->access$500(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$EventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;->access$400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;)Lccsanandroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener$3;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener$3;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 534
    :cond_1
    return-void
.end method

.method public final release()V
    .locals 2

    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->released:Z

    .line 483
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->playerHandler:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 484
    return-void
.end method
