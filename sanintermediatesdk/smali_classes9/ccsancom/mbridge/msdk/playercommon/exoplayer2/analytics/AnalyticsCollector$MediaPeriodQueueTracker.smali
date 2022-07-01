.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPeriodQueueTracker"
.end annotation


# instance fields
.field private final activeMediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;",
            ">;"
        }
    .end annotation
.end field

.field private isSeeking:Z

.field private lastReportedPlayingMediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

.field private final period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

.field private readingMediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

.field private timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->activeMediaPeriods:Ljava/util/ArrayList;

    .line 638
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    .line 639
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->EMPTY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    .line 640
    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;)Ljava/util/ArrayList;
    .locals 0

    .line 623
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->activeMediaPeriods:Ljava/util/ArrayList;

    return-object p0
.end method

.method private updateLastReportedPlayingMediaPeriod()V
    .locals 2

    .line 766
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->activeMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->activeMediaPeriods:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->lastReportedPlayingMediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    .line 769
    :cond_0
    return-void
.end method

.method private updateMediaPeriodToNewTimeline(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;
    .locals 4

    .line 773
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 776
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;->mediaPeriodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    const/4 v3, 0x1

    .line 777
    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    move-result-object v0

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 778
    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 779
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 780
    return-object p1

    .line 782
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {p2, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->windowIndex:I

    .line 783
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;->mediaPeriodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 784
    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodIndex(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;-><init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)V

    .line 783
    return-object v1

    .line 774
    :cond_2
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final getLastReportedPlayingMediaPeriod()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;
    .locals 1

    .line 663
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->lastReportedPlayingMediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    return-object v0
.end method

.method public final getLoadingMediaPeriod()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;
    .locals 2

    .line 680
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->activeMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    const/4 v0, 0x0

    goto :goto_0

    .line 682
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->activeMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    .line 680
    :goto_0
    return-object v0
.end method

.method public final getPlayingMediaPeriod()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;
    .locals 2

    .line 650
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->activeMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->isSeeking:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 652
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->activeMediaPeriods:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    goto :goto_1

    .line 651
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 650
    :goto_1
    return-object v0
.end method

.method public final getReadingMediaPeriod()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;
    .locals 1

    .line 671
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    return-object v0
.end method

.method public final isSeeking()Z
    .locals 1

    .line 687
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->isSeeking:Z

    return v0
.end method

.method public final onMediaPeriodCreated(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 2

    .line 745
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->activeMediaPeriods:Ljava/util/ArrayList;

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    invoke-direct {v1, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;-><init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->activeMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 747
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->updateLastReportedPlayingMediaPeriod()V

    .line 749
    :cond_0
    return-void
.end method

.method public final onMediaPeriodReleased(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 753
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    invoke-direct {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;-><init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)V

    .line 754
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->activeMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 755
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 756
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->activeMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->activeMediaPeriods:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    :goto_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    .line 758
    :cond_1
    return-void
.end method

.method public final onPositionDiscontinuity(I)V
    .locals 0

    .line 716
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->updateLastReportedPlayingMediaPeriod()V

    .line 717
    return-void
.end method

.method public final onReadingStarted(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 762
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    invoke-direct {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;-><init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    .line 763
    return-void
.end method

.method public final onSeekProcessed()V
    .locals 1

    .line 739
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->isSeeking:Z

    .line 740
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->updateLastReportedPlayingMediaPeriod()V

    .line 741
    return-void
.end method

.method public final onSeekStarted()V
    .locals 1

    .line 734
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->isSeeking:Z

    .line 735
    return-void
.end method

.method public final onTimelineChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;)V
    .locals 3

    .line 721
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->activeMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 722
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->activeMediaPeriods:Ljava/util/ArrayList;

    .line 723
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    invoke-direct {p0, v2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->updateMediaPeriodToNewTimeline(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    move-result-object v2

    .line 722
    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 721
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 725
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    if-eqz v0, :cond_1

    .line 726
    invoke-direct {p0, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->updateMediaPeriodToNewTimeline(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    .line 728
    :cond_1
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    .line 729
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->updateLastReportedPlayingMediaPeriod()V

    .line 730
    return-void
.end method

.method public final tryResolveWindowIndex(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 8

    .line 695
    nop

    .line 696
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 697
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    .line 698
    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->activeMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 699
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->activeMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    .line 700
    iget-object v5, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;->mediaPeriodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v5, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    .line 701
    if-ge v5, v0, :cond_1

    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    .line 702
    invoke-virtual {v6, v5, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    move-result-object v5

    iget v5, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->windowIndex:I

    if-ne v5, p1, :cond_1

    .line 703
    if-eqz v3, :cond_0

    .line 705
    return-object v1

    .line 707
    :cond_0
    iget-object v3, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;->mediaPeriodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 698
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 711
    :cond_3
    return-object v1
.end method
