.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;
.source "WebvttCue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;
    }
.end annotation


# instance fields
.field public final endTime:J

.field public final startTime:J


# direct methods
.method public constructor <init>(JJLjava/lang/CharSequence;)V
    .locals 13

    .line 36
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x80000000

    const/high16 v9, -0x80000000

    const/4 v10, 0x1

    const/high16 v11, -0x80000000

    const/4 v12, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue;-><init>(JJLjava/lang/CharSequence;Lccsanandroid/text/Layout$Alignment;FIIFIF)V

    .line 38
    return-void
.end method

.method public constructor <init>(JJLjava/lang/CharSequence;Lccsanandroid/text/Layout$Alignment;FIIFIF)V
    .locals 10

    .line 43
    move-object v9, p0

    move-object v0, p0

    move-object v1, p5

    move-object/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Lccsanandroid/text/Layout$Alignment;FIIFIF)V

    .line 44
    move-wide v0, p1

    iput-wide v0, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue;->startTime:J

    .line 45
    move-wide v0, p3

    iput-wide v0, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue;->endTime:J

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 6

    .line 32
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue;-><init>(JJLjava/lang/CharSequence;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final isNormalCue()Z
    .locals 2

    .line 55
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue;->line:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue;->position:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
