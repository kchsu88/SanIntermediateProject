.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;
.source "SinglePeriodTimeline.java"


# static fields
.field private static final UID:Ljava/lang/Object;


# instance fields
.field private final isDynamic:Z

.field private final isSeekable:Z

.field private final periodDurationUs:J

.field private final presentationStartTimeMs:J

.field private final tag:Ljava/lang/Object;

.field private final windowDefaultStartPositionUs:J

.field private final windowDurationUs:J

.field private final windowPositionInPeriodUs:J

.field private final windowStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JJJJJJZZLjava/lang/Object;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;-><init>()V

    .line 132
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->presentationStartTimeMs:J

    .line 133
    iput-wide p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->windowStartTimeMs:J

    .line 134
    iput-wide p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->periodDurationUs:J

    .line 135
    iput-wide p7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->windowDurationUs:J

    .line 136
    iput-wide p9, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->windowPositionInPeriodUs:J

    .line 137
    iput-wide p11, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->windowDefaultStartPositionUs:J

    .line 138
    iput-boolean p13, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->isSeekable:Z

    .line 139
    iput-boolean p14, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->isDynamic:Z

    .line 140
    iput-object p15, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->tag:Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public constructor <init>(JJJJZZLjava/lang/Object;)V
    .locals 16

    .line 93
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    invoke-direct/range {v0 .. v15}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJJJZZLjava/lang/Object;)V

    .line 103
    return-void
.end method

.method public constructor <init>(JZZ)V
    .locals 6

    .line 48
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;-><init>(JZZLjava/lang/Object;)V

    .line 49
    return-void
.end method

.method public constructor <init>(JZZLjava/lang/Object;)V
    .locals 12

    .line 61
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZLjava/lang/Object;)V

    .line 69
    return-void
.end method


# virtual methods
.method public final getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 1

    .line 193
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;
    .locals 8

    .line 186
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 187
    if-eqz p3, :cond_0

    sget-object p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    .line 188
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->periodDurationUs:J

    iget-wide v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->windowPositionInPeriodUs:J

    neg-long v6, v6

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public final getPeriodCount()I
    .locals 1

    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public final getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;ZJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;
    .locals 18

    .line 151
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    invoke-static {v3, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 152
    if-eqz p3, :cond_0

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->tag:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v3, v1

    .line 153
    iget-wide v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->windowDefaultStartPositionUs:J

    .line 154
    iget-boolean v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->isDynamic:Z

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v9, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v8, p4, v6

    if-eqz v8, :cond_3

    .line 155
    iget-wide v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->windowDurationUs:J

    cmp-long v8, v6, v4

    if-nez v8, :cond_1

    .line 157
    move-wide v10, v4

    goto :goto_1

    .line 159
    :cond_1
    add-long v1, v1, p4

    .line 160
    cmp-long v8, v1, v6

    if-lez v8, :cond_2

    .line 162
    move-wide v10, v4

    goto :goto_1

    .line 160
    :cond_2
    move-wide v10, v1

    goto :goto_1

    .line 166
    :cond_3
    move-wide v10, v1

    :goto_1
    iget-wide v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->presentationStartTimeMs:J

    iget-wide v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->windowStartTimeMs:J

    iget-boolean v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->isSeekable:Z

    iget-wide v12, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->windowDurationUs:J

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-wide v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SinglePeriodTimeline;->windowPositionInPeriodUs:J

    move-wide/from16 v16, v1

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v17}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;->set(Ljava/lang/Object;JJZZJJIIJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    move-result-object v1

    return-object v1
.end method

.method public final getWindowCount()I
    .locals 1

    .line 145
    const/4 v0, 0x1

    return v0
.end method
