.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$2;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;->releaseSourceInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$2;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 393
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource$2;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsMediaSource;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsLoader;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ads/AdsLoader;->detachPlayer()V

    .line 394
    return-void
.end method
