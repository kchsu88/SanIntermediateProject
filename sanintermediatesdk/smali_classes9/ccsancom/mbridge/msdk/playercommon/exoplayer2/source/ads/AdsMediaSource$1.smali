.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$1;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;->prepareSourceInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;

.field final synthetic val$componentListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

.field final synthetic val$player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$1;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$1;->val$player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$1;->val$componentListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 319
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$1;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsLoader;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$1;->val$player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$1;->val$componentListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$1;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;)Lccsanandroid/view/ViewGroup;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsLoader;->attachPlayer(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsLoader$EventListener;Lccsanandroid/view/ViewGroup;)V

    .line 320
    return-void
.end method
