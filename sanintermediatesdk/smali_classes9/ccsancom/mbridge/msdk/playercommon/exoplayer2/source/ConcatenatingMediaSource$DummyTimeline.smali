.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DummyTimeline;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DummyTimeline"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 855
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$1;)V
    .locals 0

    .line 855
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DummyTimeline;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 0

    .line 897
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;
    .locals 8

    .line 887
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v6, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public final getPeriodCount()I
    .locals 1

    .line 882
    const/4 v0, 0x1

    return v0
.end method

.method public final getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;ZJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;
    .locals 18

    .line 865
    nop

    .line 873
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :cond_0
    move-wide v10, v0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    .line 865
    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v17}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;->set(Ljava/lang/Object;JJZZJJIIJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    move-result-object v0

    return-object v0
.end method

.method public final getWindowCount()I
    .locals 1

    .line 859
    const/4 v0, 0x1

    return v0
.end method
