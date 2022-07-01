.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;
.super Ljava/lang/Object;
.source "MediaPeriodQueue.java"


# static fields
.field private static final MAXIMUM_BUFFER_AHEAD_PERIODS:I = 0x64


# instance fields
.field private length:I

.field private loading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

.field private nextWindowSequenceNumber:J

.field private oldFrontPeriodUid:Ljava/lang/Object;

.field private oldFrontPeriodWindowSequenceNumber:J

.field private final period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

.field private playing:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

.field private reading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

.field private repeatMode:I

.field private shuffleModeEnabled:Z

.field private timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

.field private final window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    .line 60
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    .line 61
    return-void
.end method

.method private canKeepMediaPeriodHolder(Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;)Z
    .locals 5

    .line 451
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    .line 452
    iget-wide v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-wide v2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    iget-wide v2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->id:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->id:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 454
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 452
    :goto_0
    return p1
.end method

.method private getFirstMediaPeriodInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;
    .locals 6

    .line 502
    iget-object v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->periodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->contentPositionUs:J

    iget-wide v4, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->startPositionUs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    move-result-object p1

    return-object p1
.end method

.method private getFollowingMediaPeriodInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;
    .locals 17

    .line 521
    move-object/from16 v8, p0

    move-object/from16 v0, p1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    .line 522
    iget-boolean v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    .line 523
    iget-object v9, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->id:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v10, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v11, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    iget-object v12, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    iget v13, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->repeatMode:I

    iget-boolean v14, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 524
    invoke-virtual/range {v9 .. v14}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getNextPeriodIndex(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;IZ)I

    move-result v2

    .line 526
    if-ne v2, v4, :cond_0

    .line 528
    return-object v5

    .line 532
    :cond_0
    iget-object v4, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v6, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    .line 533
    invoke-virtual {v4, v2, v6, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    move-result-object v3

    iget v12, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->windowIndex:I

    .line 534
    iget-object v3, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    iget-object v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 535
    iget-object v4, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->id:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v6, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 536
    iget-object v4, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v9, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    invoke-virtual {v4, v12, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    move-result-object v4

    iget v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    const-wide/16 v9, 0x0

    if-ne v4, v2, :cond_3

    .line 542
    nop

    .line 543
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v6

    iget-wide v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->durationUs:J

    add-long/2addr v6, v1

    sub-long v6, v6, p2

    .line 544
    iget-object v1, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v2, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    iget-object v11, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 550
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    .line 545
    move-object v9, v1

    move-object v10, v2

    invoke-virtual/range {v9 .. v16}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriodPosition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;IJJ)Lccsanandroid/util/Pair;

    move-result-object v1

    .line 551
    if-nez v1, :cond_1

    .line 552
    return-object v5

    .line 554
    :cond_1
    iget-object v2, v1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 555
    iget-object v1, v1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 556
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 557
    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->id:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    goto :goto_0

    .line 559
    :cond_2
    iget-wide v0, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    iput-wide v6, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->nextWindowSequenceNumber:J

    .line 561
    :goto_0
    move-wide v9, v4

    move-wide v4, v0

    move v1, v2

    goto :goto_1

    .line 562
    :cond_3
    move v1, v2

    move-wide v4, v6

    .line 564
    :goto_1
    nop

    .line 565
    move-object/from16 v0, p0

    move-wide v2, v9

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAds(IJJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v1

    .line 566
    move-wide v4, v9

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 569
    :cond_4
    iget-object v0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->id:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 570
    iget-object v2, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v7, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v6, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    .line 571
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 572
    iget v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 573
    iget-object v3, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v3

    .line 574
    if-ne v3, v4, :cond_5

    .line 575
    return-object v5

    .line 577
    :cond_5
    iget-object v4, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    iget v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 578
    invoke-virtual {v4, v2, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getNextAdIndexToPlay(II)I

    move-result v4

    .line 579
    if-ge v4, v3, :cond_7

    .line 581
    iget-object v3, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v3, v2, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->isAdAvailable(II)Z

    move-result v3

    if-nez v3, :cond_6

    .line 582
    goto :goto_2

    .line 583
    :cond_6
    iget v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-wide v5, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->contentPositionUs:J

    iget-wide v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move v1, v3

    move v3, v4

    move-wide v4, v5

    move-wide v6, v9

    invoke-direct/range {v0 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForAd(IIIJJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    move-result-object v5

    .line 581
    :goto_2
    return-object v5

    .line 591
    :cond_7
    iget v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-wide v3, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->contentPositionUs:J

    iget-wide v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move v1, v2

    move-wide v2, v3

    move-wide v4, v5

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForContent(IJJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 596
    :cond_8
    iget-wide v6, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v2, v6, v9

    if-eqz v2, :cond_b

    .line 598
    iget-object v2, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    iget-wide v6, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    invoke-virtual {v2, v6, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v2

    .line 599
    if-ne v2, v4, :cond_9

    .line 601
    iget v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-wide v3, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    iget-wide v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move v1, v2

    move-wide v2, v3

    move-wide v4, v5

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForContent(IJJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 606
    :cond_9
    iget-object v3, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v3

    .line 607
    iget-object v4, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->isAdAvailable(II)Z

    move-result v4

    if-nez v4, :cond_a

    .line 608
    goto :goto_3

    .line 609
    :cond_a
    iget v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-wide v5, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    iget-wide v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move v1, v4

    move-wide v4, v5

    move-wide v6, v9

    invoke-direct/range {v0 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForAd(IIIJJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    move-result-object v5

    .line 607
    :goto_3
    return-object v5

    .line 617
    :cond_b
    iget-object v1, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v1

    .line 618
    if-nez v1, :cond_c

    .line 619
    return-object v5

    .line 621
    :cond_c
    add-int/lit8 v2, v1, -0x1

    .line 622
    iget-object v1, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v3

    cmp-long v1, v3, v9

    if-nez v1, :cond_f

    iget-object v1, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    .line 623
    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_4

    .line 626
    :cond_d
    iget-object v1, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v3

    .line 627
    iget-object v1, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->isAdAvailable(II)Z

    move-result v1

    if-nez v1, :cond_e

    .line 628
    return-object v5

    .line 630
    :cond_e
    iget-object v1, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v4

    .line 631
    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-wide v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForAd(IIIJJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 624
    :cond_f
    :goto_4
    return-object v5
.end method

.method private getMediaPeriodInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;
    .locals 8

    .line 662
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    .line 663
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    iget-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    iget p5, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {p4, p5, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->isAdAvailable(II)Z

    move-result p4

    if-nez p4, :cond_0

    .line 665
    const/4 p1, 0x0

    return-object p1

    .line 667
    :cond_0
    iget v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget v2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v6, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForAd(IIIJJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    move-result-object p1

    return-object p1

    .line 674
    :cond_1
    iget v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-wide v4, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v0, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForContent(IJJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    move-result-object p1

    return-object p1
.end method

.method private getMediaPeriodInfoForAd(IIIJJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;
    .locals 14

    .line 684
    move-object v0, p0

    new-instance v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object v1, v7

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(IIIJ)V

    .line 686
    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {p0, v7, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->isLastInPeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;J)Z

    move-result v11

    .line 687
    invoke-direct {p0, v7, v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->isLastInTimeline(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z

    move-result v12

    .line 688
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget v2, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    .line 690
    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v2, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 691
    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v9

    .line 693
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v1

    move/from16 v2, p3

    if-ne v2, v1, :cond_0

    .line 694
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v1

    move-wide v3, v1

    goto :goto_0

    .line 695
    :cond_0
    const-wide/16 v1, 0x0

    move-wide v3, v1

    .line 696
    :goto_0
    new-instance v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    const-wide/high16 v5, -0x8000000000000000L

    move-object v1, v13

    move-object v2, v7

    move-wide/from16 v7, p4

    invoke-direct/range {v1 .. v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZ)V

    return-object v13
.end method

.method private getMediaPeriodInfoForContent(IJJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;
    .locals 16

    .line 708
    move-object/from16 v0, p0

    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    move/from16 v1, p1

    move-wide/from16 v3, p4

    invoke-direct {v2, v1, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(IJ)V

    .line 709
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget v3, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    .line 710
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    move-wide/from16 v3, p2

    invoke-virtual {v1, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v1

    .line 712
    const-wide/high16 v5, -0x8000000000000000L

    const/4 v7, -0x1

    if-ne v1, v7, :cond_0

    .line 713
    move-wide v7, v5

    goto :goto_0

    .line 714
    :cond_0
    iget-object v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v7, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v7

    .line 715
    :goto_0
    invoke-direct {v0, v2, v7, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->isLastInPeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;J)Z

    move-result v11

    .line 716
    invoke-direct {v0, v2, v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->isLastInTimeline(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z

    move-result v12

    .line 717
    cmp-long v1, v7, v5

    if-nez v1, :cond_1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v5

    move-wide v9, v5

    goto :goto_1

    :cond_1
    move-wide v9, v7

    .line 718
    :goto_1
    new-instance v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, v13

    move-wide/from16 v3, p2

    move-wide v5, v7

    move-wide v7, v14

    invoke-direct/range {v1 .. v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZ)V

    return-object v13
.end method

.method private getUpdatedMediaPeriodInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;
    .locals 13

    .line 641
    iget-wide v2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    .line 642
    iget-wide v4, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    .line 643
    invoke-direct {p0, p2, v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->isLastInPeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;J)Z

    move-result v10

    .line 644
    invoke-direct {p0, p2, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->isLastInTimeline(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z

    move-result v11

    .line 645
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget v1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    .line 647
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    iget v1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v6, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v0, v1, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    move-wide v8, v0

    goto :goto_0

    .line 649
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v6, v4, v0

    if-nez v6, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v0

    move-wide v8, v0

    goto :goto_0

    :cond_1
    move-wide v8, v4

    .line 650
    :goto_0
    new-instance v12, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    iget-wide v6, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->contentPositionUs:J

    move-object v0, v12

    move-object v1, p2

    invoke-direct/range {v0 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZ)V

    return-object v12
.end method

.method private isLastInPeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;J)Z
    .locals 9

    .line 723
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v0

    .line 724
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 725
    return v1

    .line 728
    :cond_0
    sub-int/2addr v0, v1

    .line 729
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    .line 730
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-eqz v8, :cond_2

    .line 732
    if-nez v2, :cond_1

    cmp-long p1, p2, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 735
    :cond_2
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result p2

    .line 736
    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    .line 738
    return v7

    .line 741
    :cond_3
    if-eqz v2, :cond_4

    iget p3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne p3, v0, :cond_4

    iget p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    add-int/lit8 p3, p2, -0x1

    if-ne p1, p3, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 743
    :goto_1
    if-nez p1, :cond_6

    if-nez v2, :cond_5

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result p1

    if-ne p1, p2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_2
    return v1
.end method

.method private isLastInTimeline(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z
    .locals 7

    .line 747
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->windowIndex:I

    .line 748
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    invoke-virtual {v1, v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget v2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    iget v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->repeatMode:I

    iget-boolean v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 749
    invoke-virtual/range {v1 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->isLastPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 748
    :goto_0
    return p1
.end method

.method private resolveMediaPeriodIdForAds(IJJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 7

    .line 391
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    .line 392
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v0, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v3

    .line 393
    const/4 p2, -0x1

    if-ne v3, p2, :cond_0

    .line 394
    new-instance p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {p2, p1, p4, p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(IJ)V

    return-object p2

    .line 396
    :cond_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {p2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v4

    .line 397
    new-instance p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object v1, p2

    move v2, p1

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(IIIJ)V

    return-object p2
.end method

.method private resolvePeriodIndexToWindowSequenceNumber(I)J
    .locals 5

    .line 410
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    move-result-object p1

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->windowIndex:I

    .line 412
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 413
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    invoke-virtual {v3, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 414
    if-eq v1, v2, :cond_0

    .line 415
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v3, v1, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->windowIndex:I

    .line 416
    if-ne v1, v0, :cond_0

    .line 418
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    return-wide v0

    .line 422
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->getFrontPeriod()Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    .line 423
    :goto_0
    if-eqz v1, :cond_2

    .line 424
    iget-object v3, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 426
    iget-object p1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->id:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    return-wide v0

    .line 428
    :cond_1
    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    goto :goto_0

    .line 430
    :cond_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->getFrontPeriod()Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    move-result-object p1

    .line 431
    :goto_1
    if-eqz p1, :cond_4

    .line 432
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 433
    if-eq v1, v2, :cond_3

    .line 434
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v3, v1, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->windowIndex:I

    .line 435
    if-ne v1, v0, :cond_3

    .line 437
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->id:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    return-wide v0

    .line 440
    :cond_3
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    .line 441
    goto :goto_1

    .line 443
    :cond_4
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->nextWindowSequenceNumber:J

    return-wide v0
.end method

.method private updateForPlaybackModeChange()Z
    .locals 8

    .line 463
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->getFrontPeriod()Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 464
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 465
    return v1

    .line 468
    :cond_0
    :goto_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    iget-object v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->id:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    iget v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->repeatMode:I

    iget-boolean v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 469
    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getNextPeriodIndex(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;IZ)I

    move-result v2

    .line 475
    :goto_1
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    iget-boolean v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-nez v3, :cond_1

    .line 477
    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    goto :goto_1

    .line 479
    :cond_1
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    iget-object v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    iget-object v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->id:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    if-eq v3, v2, :cond_2

    .line 482
    goto :goto_2

    .line 484
    :cond_2
    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    .line 485
    goto :goto_0

    .line 488
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->removeAfter(Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;)Z

    move-result v2

    .line 491
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    iget-object v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->id:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 492
    invoke-direct {p0, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    move-result-object v3

    iput-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    .line 495
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_3
    return v1
.end method


# virtual methods
.method public final advancePlayingPeriod()Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;
    .locals 2

    .line 226
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->playing:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_2

    .line 227
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->reading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->reading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    .line 230
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->playing:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->release()V

    .line 231
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->length:I

    .line 232
    if-nez v0, :cond_1

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->loading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    .line 234
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->playing:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->playing:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->id:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    .line 237
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->playing:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->playing:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    goto :goto_0

    .line 239
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->loading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->playing:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    .line 240
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->reading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    .line 242
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->playing:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public final advanceReadingPeriod()Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;
    .locals 1

    .line 213
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->reading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 214
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->reading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->reading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    .line 215
    return-object v0
.end method

.method public final clear(Z)V
    .locals 4

    .line 277
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->getFrontPeriod()Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 278
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 279
    if-eqz p1, :cond_0

    iget-object p1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 280
    iget-object p1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->id:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    .line 281
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->release()V

    .line 282
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->removeAfter(Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;)Z

    goto :goto_1

    .line 283
    :cond_1
    if-nez p1, :cond_2

    .line 284
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 286
    :cond_2
    :goto_1
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->playing:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    .line 287
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->loading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    .line 288
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->reading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    .line 289
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->length:I

    .line 290
    return-void
.end method

.method public final enqueueNextMediaPeriod([Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererCapabilities;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocator;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;
    .locals 11

    .line 148
    move-object v0, p0

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->loading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    if-nez v1, :cond_0

    .line 149
    move-object/from16 v10, p6

    iget-wide v1, v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    move-wide v4, v1

    goto :goto_0

    .line 150
    :cond_0
    move-object/from16 v10, p6

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v1

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->loading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    iget-object v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    iget-wide v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->durationUs:J

    add-long/2addr v1, v3

    move-wide v4, v1

    .line 151
    :goto_0
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    move-object v2, v1

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;-><init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererCapabilities;JLccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocator;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;)V

    .line 160
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->loading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    if-eqz v2, :cond_1

    .line 161
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 162
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->loading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    iput-object v1, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    .line 164
    :cond_1
    const/4 v2, 0x0

    iput-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 165
    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->loading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    .line 166
    iget v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->length:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->length:I

    .line 167
    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    return-object v1
.end method

.method public final getFrontPeriod()Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;
    .locals 1

    .line 199
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->playing:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->loading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    :goto_0
    return-object v0
.end method

.method public final getLoadingPeriod()Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;
    .locals 1

    .line 175
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->loading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public final getNextMediaPeriodInfo(JLccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;
    .locals 1

    .line 124
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->loading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->getFirstMediaPeriodInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    move-result-object p1

    goto :goto_0

    .line 126
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    move-result-object p1

    .line 124
    :goto_0
    return-object p1
.end method

.method public final getPlayingPeriod()Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;
    .locals 1

    .line 183
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->playing:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public final getReadingPeriod()Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;
    .locals 1

    .line 191
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->reading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public final getUpdatedMediaPeriodInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;
    .locals 1

    .line 358
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->id:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 359
    invoke-virtual {v0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodIndex(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p2

    .line 358
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    move-result-object p1

    return-object p1
.end method

.method public final hasPlayingPeriod()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->playing:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLoading(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->loading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final reevaluateBuffer(J)V
    .locals 1

    .line 100
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->loading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->reevaluateBuffer(J)V

    .line 103
    :cond_0
    return-void
.end method

.method public final removeAfter(Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;)Z
    .locals 3

    .line 254
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 255
    nop

    .line 256
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->loading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    .line 257
    :goto_1
    iget-object v2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    if-eqz v2, :cond_2

    .line 258
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    .line 259
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->reading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    if-ne p1, v2, :cond_1

    .line 260
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->playing:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->reading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    .line 261
    const/4 v0, 0x1

    .line 263
    :cond_1
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->release()V

    .line 264
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->length:I

    sub-int/2addr v2, v1

    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->length:I

    goto :goto_1

    .line 266
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->loading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    const/4 v1, 0x0

    iput-object v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    .line 267
    return v0
.end method

.method public final resolveMediaPeriodIdForAds(IJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 6

    .line 372
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->resolvePeriodIndexToWindowSequenceNumber(I)J

    move-result-wide v4

    .line 373
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAds(IJJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public final setTimeline(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    .line 69
    return-void
.end method

.method public final shouldLoadNextMediaPeriod()Z
    .locals 5

    .line 107
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->loading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    iget-boolean v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->isFinal:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->loading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    .line 109
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->loading:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    iget-wide v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->length:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 107
    :goto_1
    return v0
.end method

.method public final updateQueuedPeriods(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;J)Z
    .locals 8

    .line 306
    iget p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    .line 309
    nop

    .line 310
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->getFrontPeriod()Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    const/4 v1, 0x0

    move v3, p1

    .line 311
    :goto_0
    const/4 p1, 0x1

    if-eqz v0, :cond_6

    .line 312
    if-nez v1, :cond_0

    .line 313
    iget-object p1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    invoke-virtual {p0, p1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    move-result-object p1

    iput-object p1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    goto :goto_1

    .line 316
    :cond_0
    const/4 v2, -0x1

    if-eq v3, v2, :cond_5

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    .line 317
    invoke-virtual {v4, v3, v5, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    move-result-object v4

    iget-object v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 321
    :cond_1
    nop

    .line 322
    invoke-direct {p0, v1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    move-result-object v2

    .line 323
    if-nez v2, :cond_2

    .line 325
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->removeAfter(Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;)Z

    move-result p2

    xor-int/2addr p1, p2

    return p1

    .line 328
    :cond_2
    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    invoke-virtual {p0, v4, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    move-result-object v4

    iput-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    .line 330
    invoke-direct {p0, v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->canKeepMediaPeriodHolder(Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 331
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->removeAfter(Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;)Z

    move-result p2

    xor-int/2addr p1, p2

    return p1

    .line 335
    :cond_3
    :goto_1
    iget-object p1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    iget-boolean p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-eqz p1, :cond_4

    .line 337
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    iget v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->repeatMode:I

    iget-boolean v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 338
    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getNextPeriodIndex(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;IZ)I

    move-result p1

    move v3, p1

    .line 342
    :cond_4
    nop

    .line 343
    iget-object p1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

    move-object v1, v0

    move-object v0, p1

    goto :goto_0

    .line 319
    :cond_5
    :goto_2
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->removeAfter(Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;)Z

    move-result p2

    xor-int/2addr p1, p2

    return p1

    .line 345
    :cond_6
    return p1
.end method

.method public final updateRepeatMode(I)Z
    .locals 0

    .line 76
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->repeatMode:I

    .line 77
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->updateForPlaybackModeChange()Z

    move-result p1

    return p1
.end method

.method public final updateShuffleModeEnabled(Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 86
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodQueue;->updateForPlaybackModeChange()Z

    move-result p1

    return p1
.end method
