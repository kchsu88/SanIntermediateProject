.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
.super Ljava/lang/Object;
.source "DefaultBandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private clock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;

.field private eventHandler:Lccsanandroid/os/Handler;

.field private eventListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/BandwidthMeter$EventListener;

.field private initialBitrateEstimate:J

.field private slidingWindowMaxWeight:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimate:J

    .line 48
    const/16 v0, 0x7d0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->slidingWindowMaxWeight:I

    .line 49
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;->DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->clock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;

    .line 50
    return-void
.end method


# virtual methods
.method public final build()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter;
    .locals 9

    .line 108
    new-instance v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->eventHandler:Lccsanandroid/os/Handler;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->eventListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/BandwidthMeter$EventListener;

    iget-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimate:J

    iget v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->slidingWindowMaxWeight:I

    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->clock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(Lccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/BandwidthMeter$EventListener;JILccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter$1;)V

    return-object v8
.end method

.method public final setClock(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    .locals 0

    .line 98
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->clock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;

    .line 99
    return-object p0
.end method

.method public final setEventListener(Lccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/BandwidthMeter$EventListener;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    .locals 1

    .line 61
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 62
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->eventHandler:Lccsanandroid/os/Handler;

    .line 63
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->eventListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/BandwidthMeter$EventListener;

    .line 64
    return-object p0
.end method

.method public final setInitialBitrateEstimate(J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    .locals 0

    .line 86
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimate:J

    .line 87
    return-object p0
.end method

.method public final setSlidingWindowMaxWeight(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    .locals 0

    .line 74
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->slidingWindowMaxWeight:I

    .line 75
    return-object p0
.end method
