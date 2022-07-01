.class public Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$Factory;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAnalyticsCollector(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;
    .locals 1

    .line 76
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;

    invoke-direct {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;)V

    return-object v0
.end method
