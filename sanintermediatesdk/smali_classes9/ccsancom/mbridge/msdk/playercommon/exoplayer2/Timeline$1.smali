.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$1;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 496
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 0

    .line 521
    const/4 p1, -0x1

    return p1
.end method

.method public getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;
    .locals 0

    .line 516
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getPeriodCount()I
    .locals 1

    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method public getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;ZJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;
    .locals 0

    .line 506
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getWindowCount()I
    .locals 1

    .line 500
    const/4 v0, 0x0

    return v0
.end method
