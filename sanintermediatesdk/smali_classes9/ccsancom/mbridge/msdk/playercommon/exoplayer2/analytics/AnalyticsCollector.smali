.class public Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener;
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/BandwidthMeter$EventListener;
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$Factory;
    }
.end annotation


# instance fields
.field private final clock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaPeriodQueueTracker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

.field private player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;

.field private final window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;


# direct methods
.method protected constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;

    .line 97
    invoke-static {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->clock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;

    .line 98
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 99
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    .line 100
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    .line 101
    return-void
.end method

.method private generateEventTime(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 598
    if-nez p1, :cond_0

    .line 599
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result p1

    .line 600
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->tryResolveWindowIndex(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    .line 601
    invoke-virtual {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateEventTime(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    return-object p1

    .line 603
    :cond_0
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;->windowIndex:I

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;->mediaPeriodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateEventTime(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    return-object p1
.end method

.method private generateLastReportedPlayingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 607
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->getLastReportedPlayingMediaPeriod()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateEventTime(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method private generateLoadingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 619
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->getLoadingMediaPeriod()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateEventTime(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method private generatePlayingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 611
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->getPlayingMediaPeriod()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateEventTime(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method private generateReadingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 615
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->getReadingMediaPeriod()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateEventTime(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method protected generateEventTime(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;
    .locals 13

    .line 560
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->clock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 562
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;->getCurrentTimeline()Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    move-result-object v4

    .line 564
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v0

    const-wide/16 v5, 0x0

    if-ne p1, v0, :cond_2

    .line 565
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;

    .line 568
    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;->getCurrentAdGroupIndex()I

    move-result v0

    iget v1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;

    .line 569
    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;->getCurrentAdIndexInAdGroup()I

    move-result v0

    iget v1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne v0, v1, :cond_0

    .line 570
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v5

    goto :goto_0

    .line 571
    :cond_0
    nop

    :goto_0
    move-wide v7, v5

    goto :goto_2

    .line 574
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;->getContentPosition()J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_2

    .line 576
    :cond_2
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-ge p1, v0, :cond_4

    if-eqz p2, :cond_3

    .line 577
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 583
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    invoke-virtual {v4, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_2

    .line 580
    :cond_4
    :goto_1
    move-wide v7, v5

    .line 586
    :goto_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;->getBufferedPosition()J

    move-result-wide v0

    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;

    invoke-interface {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;->getContentPosition()J

    move-result-wide v5

    sub-long v11, v0, v5

    .line 587
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;

    .line 593
    invoke-interface {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v9

    move-object v1, v0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;-><init>(JLccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)V

    .line 587
    return-object v0
.end method

.method protected getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;",
            ">;"
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final notifyNetworkTypeChanged(Lccsanandroid/net/NetworkInfo;)V
    .locals 3

    .line 167
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 169
    invoke-interface {v2, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onNetworkTypeChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsanandroid/net/NetworkInfo;)V

    .line 170
    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method public final notifySeekStarted()V
    .locals 3

    .line 139
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->isSeeking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->onSeekStarted()V

    .line 142
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 143
    invoke-interface {v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onSeekStarted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 144
    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method public final notifyViewportSizeChanged(II)V
    .locals 3

    .line 155
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 157
    invoke-interface {v2, v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onViewportSizeChange(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;II)V

    .line 158
    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method public final onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6

    .line 218
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p2

    .line 219
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 220
    const/4 v2, 0x1

    move-object v1, p2

    move-object v3, p1

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onDecoderInitialized(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V

    .line 222
    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method

.method public final onAudioDisabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V
    .locals 4

    .line 246
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateLastReportedPlayingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 248
    const/4 v3, 0x1

    invoke-interface {v2, v0, v3, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onDecoderDisabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;ILccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V

    .line 249
    goto :goto_0

    .line 250
    :cond_0
    return-void
.end method

.method public final onAudioEnabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V
    .locals 4

    .line 201
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 203
    const/4 v3, 0x1

    invoke-interface {v2, v0, v3, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onDecoderEnabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;ILccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V

    .line 204
    goto :goto_0

    .line 205
    :cond_0
    return-void
.end method

.method public final onAudioInputFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V
    .locals 4

    .line 227
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 229
    const/4 v3, 0x1

    invoke-interface {v2, v0, v3, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onDecoderInputFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;ILccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 230
    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method

.method public final onAudioSessionId(I)V
    .locals 3

    .line 209
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 211
    invoke-interface {v2, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onAudioSessionId(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    .line 212
    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method public final onAudioSinkUnderrun(IJJ)V
    .locals 9

    .line 236
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 237
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 238
    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onAudioUnderrun(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V

    .line 239
    goto :goto_0

    .line 240
    :cond_0
    return-void
.end method

.method public final onBandwidthSample(IJJ)V
    .locals 9

    .line 511
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateLoadingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 512
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 513
    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onBandwidthEstimate(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V

    .line 514
    goto :goto_0

    .line 515
    :cond_0
    return-void
.end method

.method public final onDownstreamFormatChanged(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 1

    .line 408
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateEventTime(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 409
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 410
    invoke-interface {v0, p1, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onDownstreamFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    .line 411
    goto :goto_0

    .line 412
    :cond_0
    return-void
.end method

.method public final onDrmKeysLoaded()V
    .locals 3

    .line 521
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 522
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 523
    invoke-interface {v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onDrmKeysLoaded(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 524
    goto :goto_0

    .line 525
    :cond_0
    return-void
.end method

.method public final onDrmKeysRemoved()V
    .locals 3

    .line 545
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 547
    invoke-interface {v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onDrmKeysRemoved(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 548
    goto :goto_0

    .line 549
    :cond_0
    return-void
.end method

.method public final onDrmKeysRestored()V
    .locals 3

    .line 537
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 538
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 539
    invoke-interface {v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onDrmKeysRestored(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 540
    goto :goto_0

    .line 541
    :cond_0
    return-void
.end method

.method public final onDrmSessionManagerError(Ljava/lang/Exception;)V
    .locals 3

    .line 529
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 530
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 531
    invoke-interface {v2, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onDrmSessionManagerError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    .line 532
    goto :goto_0

    .line 533
    :cond_0
    return-void
.end method

.method public final onDroppedFrames(IJ)V
    .locals 3

    .line 283
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateLastReportedPlayingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 285
    invoke-interface {v2, v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onDroppedVideoFrames(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V

    .line 286
    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method

.method public final onLoadCanceled(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 1

    .line 367
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateEventTime(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 368
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 369
    invoke-interface {v0, p1, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onLoadCanceled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    .line 370
    goto :goto_0

    .line 371
    :cond_0
    return-void
.end method

.method public final onLoadCompleted(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 1

    .line 355
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateEventTime(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 356
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 357
    invoke-interface {v0, p1, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onLoadCompleted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    .line 358
    goto :goto_0

    .line 359
    :cond_0
    return-void
.end method

.method public final onLoadError(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 6

    .line 381
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateEventTime(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 382
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 383
    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onLoadError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V

    .line 384
    goto :goto_0

    .line 385
    :cond_0
    return-void
.end method

.method public final onLoadStarted(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 1

    .line 343
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateEventTime(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 344
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 345
    invoke-interface {v0, p1, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onLoadStarted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    .line 346
    goto :goto_0

    .line 347
    :cond_0
    return-void
.end method

.method public final onLoadingChanged(Z)V
    .locals 3

    .line 441
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 443
    invoke-interface {v2, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onLoadingChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    .line 444
    goto :goto_0

    .line 445
    :cond_0
    return-void
.end method

.method public final onMediaPeriodCreated(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->onMediaPeriodCreated(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)V

    .line 322
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateEventTime(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 323
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 324
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onMediaPeriodCreated(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 325
    goto :goto_0

    .line 326
    :cond_0
    return-void
.end method

.method public final onMediaPeriodReleased(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->onMediaPeriodReleased(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)V

    .line 331
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateEventTime(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 332
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 333
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onMediaPeriodReleased(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 334
    goto :goto_0

    .line 335
    :cond_0
    return-void
.end method

.method public final onMetadata(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V
    .locals 3

    .line 190
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 192
    invoke-interface {v2, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onMetadata(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V

    .line 193
    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method

.method public final onPlaybackParametersChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V
    .locals 3

    .line 490
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 492
    invoke-interface {v2, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onPlaybackParametersChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V

    .line 493
    goto :goto_0

    .line 494
    :cond_0
    return-void
.end method

.method public final onPlayerError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;)V
    .locals 3

    .line 473
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 474
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 475
    invoke-interface {v2, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onPlayerError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;)V

    .line 476
    goto :goto_0

    .line 477
    :cond_0
    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 3

    .line 449
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 451
    invoke-interface {v2, v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onPlayerStateChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    .line 452
    goto :goto_0

    .line 453
    :cond_0
    return-void
.end method

.method public final onPositionDiscontinuity(I)V
    .locals 3

    .line 481
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->onPositionDiscontinuity(I)V

    .line 482
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 483
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 484
    invoke-interface {v2, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onPositionDiscontinuity(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    .line 485
    goto :goto_0

    .line 486
    :cond_0
    return-void
.end method

.method public final onReadingStarted(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 389
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->onReadingStarted(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)V

    .line 390
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateEventTime(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 391
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 392
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onReadingStarted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 393
    goto :goto_0

    .line 394
    :cond_0
    return-void
.end method

.method public final onRenderedFirstFrame(Lccsanandroid/view/Surface;)V
    .locals 3

    .line 301
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 303
    invoke-interface {v2, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onRenderedFirstFrame(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsanandroid/view/Surface;)V

    .line 304
    goto :goto_0

    .line 305
    :cond_0
    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 3

    .line 457
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 459
    invoke-interface {v2, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onRepeatModeChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    .line 460
    goto :goto_0

    .line 461
    :cond_0
    return-void
.end method

.method public final onSeekProcessed()V
    .locals 3

    .line 498
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->onSeekProcessed()V

    .line 500
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 502
    invoke-interface {v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onSeekProcessed(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 503
    goto :goto_0

    .line 505
    :cond_0
    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 3

    .line 465
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 466
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 467
    invoke-interface {v2, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onShuffleModeChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    .line 468
    goto :goto_0

    .line 469
    :cond_0
    return-void
.end method

.method public final onTimelineChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 1

    .line 423
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->onTimelineChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;)V

    .line 424
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 425
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 426
    invoke-interface {v0, p1, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onTimelineChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    .line 427
    goto :goto_0

    .line 428
    :cond_0
    return-void
.end method

.method public final onTracksChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 3

    .line 433
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 434
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 435
    invoke-interface {v2, v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onTracksChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;)V

    .line 436
    goto :goto_0

    .line 437
    :cond_0
    return-void
.end method

.method public final onUpstreamDiscarded(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 1

    .line 399
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateEventTime(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 400
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 401
    invoke-interface {v0, p1, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onUpstreamDiscarded(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    .line 402
    goto :goto_0

    .line 403
    :cond_0
    return-void
.end method

.method public final onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6

    .line 266
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p2

    .line 267
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 268
    const/4 v2, 0x2

    move-object v1, p2

    move-object v3, p1

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onDecoderInitialized(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V

    .line 270
    goto :goto_0

    .line 271
    :cond_0
    return-void
.end method

.method public final onVideoDisabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V
    .locals 4

    .line 311
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateLastReportedPlayingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 313
    const/4 v3, 0x2

    invoke-interface {v2, v0, v3, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onDecoderDisabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;ILccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V

    .line 314
    goto :goto_0

    .line 315
    :cond_0
    return-void
.end method

.method public final onVideoEnabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V
    .locals 4

    .line 257
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 259
    const/4 v3, 0x2

    invoke-interface {v2, v0, v3, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onDecoderEnabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;ILccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V

    .line 260
    goto :goto_0

    .line 261
    :cond_0
    return-void
.end method

.method public final onVideoInputFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V
    .locals 4

    .line 275
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 277
    const/4 v3, 0x2

    invoke-interface {v2, v0, v3, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onDecoderInputFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;ILccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 278
    goto :goto_0

    .line 279
    :cond_0
    return-void
.end method

.method public final onVideoSizeChanged(IIIF)V
    .locals 8

    .line 292
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v6

    .line 293
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;

    .line 294
    move-object v1, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;->onVideoSizeChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V

    .line 296
    goto :goto_0

    .line 297
    :cond_0
    return-void
.end method

.method public removeListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public final resetForNewMediaSource()V
    .locals 3

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    .line 180
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 181
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;

    .line 182
    iget v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;->windowIndex:I

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId;->mediaPeriodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->onMediaPeriodReleased(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;)V

    .line 183
    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method

.method public setPlayer(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 129
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;

    .line 130
    return-void
.end method
