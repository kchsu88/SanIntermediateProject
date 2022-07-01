.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback;
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$ReleaseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback<",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;",
        ">;",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$ReleaseCallback;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LAST_SAMPLE_DURATION_US:J = 0x2710L


# instance fields
.field private actualMinLoadableRetryCount:I

.field private final allocator:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocator;

.field private callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;

.field private final continueLoadingCheckIntervalBytes:J

.field private final customCacheKey:Ljava/lang/String;

.field private final dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

.field private durationUs:J

.field private enabledTrackCount:I

.field private final eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private extractedSamplesCountAtStartOfLoad:I

.field private final extractorHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

.field private final handler:Lccsanandroid/os/Handler;

.field private haveAudioVideoTracks:Z

.field private lastSeekPositionUs:J

.field private length:J

.field private final listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$Listener;

.field private final loadCondition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;

.field private final loader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

.field private loadingFinished:Z

.field private final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field private final minLoadableRetryCount:I

.field private notifiedReadingStarted:Z

.field private notifyDiscontinuity:Z

.field private final onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

.field private pendingDeferredRetry:Z

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private released:Z

.field private sampleQueueTrackIds:[I

.field private sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

.field private sampleQueuesBuilt:Z

.field private seekMap:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;

.field private seenFirstTrackSelection:Z

.field private trackEnabledStates:[Z

.field private trackFormatNotificationSent:[Z

.field private trackIsAudioVideoFlags:[Z

.field private tracks:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

.field private final uri:Lccsanandroid/net/Uri;


# direct methods
.method public constructor <init>(Lccsanandroid/net/Uri;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$Listener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocator;Ljava/lang/String;I)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->uri:Lccsanandroid/net/Uri;

    .line 145
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    .line 146
    iput p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->minLoadableRetryCount:I

    .line 147
    iput-object p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 148
    iput-object p6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$Listener;

    .line 149
    iput-object p7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->allocator:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocator;

    .line 150
    iput-object p8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->customCacheKey:Ljava/lang/String;

    .line 151
    int-to-long p1, p9

    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->continueLoadingCheckIntervalBytes:J

    .line 152
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    const-string p2, "Loader:ExtractorMediaPeriod"

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    .line 153
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    invoke-direct {p1, p3, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;-><init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->extractorHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    .line 154
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;

    .line 155
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$1;

    invoke-direct {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$1;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 161
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$2;

    invoke-direct {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$2;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    .line 169
    new-instance p1, Lccsanandroid/os/Handler;

    invoke-direct {p1}, Lccsanandroid/os/Handler;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->handler:Lccsanandroid/os/Handler;

    .line 170
    const/4 p1, 0x0

    new-array p2, p1, [I

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueueTrackIds:[I

    .line 171
    new-array p1, p1, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    .line 172
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 173
    const-wide/16 p6, -0x1

    iput-wide p6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->length:J

    .line 174
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    .line 176
    nop

    .line 177
    const/4 p1, -0x1

    if-ne p4, p1, :cond_0

    .line 178
    const/4 p4, 0x3

    goto :goto_0

    .line 179
    :cond_0
    nop

    :goto_0
    iput p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->actualMinLoadableRetryCount:I

    .line 180
    invoke-virtual {p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodCreated()V

    .line 181
    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepare()V

    return-void
.end method

.method static synthetic access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->released:Z

    return p0
.end method

.method static synthetic access$1000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/Runnable;
    .locals 0

    .line 53
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;)Lccsanandroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->handler:Lccsanandroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;
    .locals 0

    .line 53
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;

    return-object p0
.end method

.method static synthetic access$800(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->customCacheKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;)J
    .locals 2

    .line 53
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->continueLoadingCheckIntervalBytes:J

    return-wide v0
.end method

.method private configureRetry(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;I)Z
    .locals 6

    .line 681
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->length:J

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_3

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;

    if-eqz v0, :cond_0

    .line 682
    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    goto :goto_1

    .line 687
    :cond_0
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->suppressRead()Z

    move-result p2

    if-nez p2, :cond_1

    .line 697
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->pendingDeferredRetry:Z

    .line 698
    return v0

    .line 704
    :cond_1
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    .line 705
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    .line 706
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 707
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v5, p2, v0

    .line 708
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->reset()V

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    :cond_2
    invoke-virtual {p1, v3, v4, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->setLoadPosition(JJ)V

    .line 711
    return v2

    .line 685
    :cond_3
    :goto_1
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 686
    return v2
.end method

.method private copyLengthFromLoader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V
    .locals 5

    .line 638
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 639
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$700(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->length:J

    .line 641
    :cond_0
    return-void
.end method

.method private getExtractedSamplesCount()I
    .locals 5

    .line 740
    nop

    .line 741
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 742
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->getWriteIndex()I

    move-result v4

    add-int/2addr v3, v4

    .line 741
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 744
    :cond_0
    return v3
.end method

.method private getLargestQueuedTimestampUs()J
    .locals 7

    .line 748
    nop

    .line 749
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 750
    nop

    .line 751
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v5

    .line 750
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 749
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 753
    :cond_0
    return-wide v2
.end method

.method private static isLoadableExceptionFatal(Ljava/io/IOException;)Z
    .locals 0

    .line 761
    instance-of p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/UnrecognizedInputFormatException;

    return p0
.end method

.method private isPendingReset()Z
    .locals 5

    .line 757
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeFinishPrepare()V
    .locals 8

    .line 604
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->released:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueuesBuilt:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 607
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 608
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v4

    if-nez v4, :cond_1

    .line 609
    return-void

    .line 607
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 612
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;->close()Z

    .line 613
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    array-length v0, v0

    .line 614
    new-array v1, v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;

    .line 615
    new-array v3, v0, [Z

    iput-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    .line 616
    new-array v3, v0, [Z

    iput-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    .line 617
    new-array v3, v0, [Z

    iput-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->trackFormatNotificationSent:[Z

    .line 618
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;

    invoke-interface {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v3

    iput-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    .line 619
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v0, :cond_5

    .line 620
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v5

    .line 621
    new-instance v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;

    new-array v7, v4, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    aput-object v5, v7, v2

    invoke-direct {v6, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;-><init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    aput-object v6, v1, v3

    .line 622
    iget-object v5, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 623
    invoke-static {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 624
    :cond_4
    :goto_2
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aput-boolean v4, v5, v3

    .line 625
    iget-boolean v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    .line 619
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 627
    :cond_5
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;-><init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->tracks:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    .line 628
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->minLoadableRetryCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->length:J

    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_6

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;

    .line 629
    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v2

    if-nez v5, :cond_6

    .line 630
    const/4 v0, 0x6

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->actualMinLoadableRetryCount:I

    .line 632
    :cond_6
    iput-boolean v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    .line 633
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$Listener;

    iget-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;

    invoke-interface {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$Listener;->onSourceInfoRefreshed(JZ)V

    .line 634
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)V

    .line 635
    return-void

    .line 605
    :cond_7
    :goto_3
    return-void
.end method

.method private maybeNotifyTrackFormat(I)V
    .locals 9

    .line 447
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->trackFormatNotificationSent:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->tracks:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->get(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->getFormat(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v4

    .line 449
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v0, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 450
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-wide v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    .line 449
    invoke-virtual/range {v2 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 455
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->trackFormatNotificationSent:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 457
    :cond_0
    return-void
.end method

.method private maybeStartDeferredRetry(I)V
    .locals 3

    .line 460
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->pendingDeferredRetry:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    aget-object p1, v0, p1

    .line 462
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 465
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 466
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->pendingDeferredRetry:Z

    .line 467
    const/4 v2, 0x1

    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    .line 468
    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    .line 469
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 470
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    array-length v1, v0

    :goto_0
    if-ge p1, v1, :cond_1

    aget-object v2, v0, p1

    .line 471
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->reset()V

    .line 470
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 473
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;)V

    .line 474
    return-void

    .line 463
    :cond_2
    :goto_1
    return-void
.end method

.method private seekInsideBufferUs(J)Z
    .locals 6

    .line 722
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    array-length v0, v0

    .line 723
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 724
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    aget-object v4, v4, v2

    .line 725
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->rewind()V

    .line 726
    invoke-virtual {v4, p1, p2, v3, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 732
    :goto_1
    if-nez v3, :cond_2

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    if-nez v3, :cond_2

    .line 733
    :cond_1
    return v1

    .line 723
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 736
    :cond_3
    return v3
.end method

.method private startLoading()V
    .locals 21

    .line 644
    move-object/from16 v6, p0

    new-instance v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    iget-object v2, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->uri:Lccsanandroid/net/Uri;

    iget-object v3, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    iget-object v4, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->extractorHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    iget-object v5, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;Lccsanandroid/net/Uri;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;)V

    .line 646
    iget-boolean v0, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-eqz v0, :cond_1

    .line 647
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 648
    iget-wide v0, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    cmp-long v8, v4, v0

    if-ltz v8, :cond_0

    .line 649
    const/4 v0, 0x1

    iput-boolean v0, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    .line 650
    iput-wide v2, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 651
    return-void

    .line 653
    :cond_0
    iget-object v0, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;

    iget-wide v4, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 654
    invoke-interface {v0, v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;->getSeekPoints(J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object v0

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$SeekPoints;->first:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;

    iget-wide v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;->position:J

    iget-wide v4, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 653
    invoke-virtual {v7, v0, v1, v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->setLoadPosition(JJ)V

    .line 655
    iput-wide v2, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 657
    :cond_1
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->getExtractedSamplesCount()I

    move-result v0

    iput v0, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 658
    iget-object v0, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    iget v1, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->actualMinLoadableRetryCount:I

    invoke-virtual {v0, v7, v6, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->startLoading(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v19

    .line 659
    iget-object v8, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 660
    invoke-static {v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 666
    invoke-static {v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$500(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v15

    iget-wide v0, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    .line 659
    move-wide/from16 v17, v0

    invoke-virtual/range {v8 .. v20}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;IILccsancom/mbridge/msdk/playercommon/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    .line 669
    return-void
.end method

.method private suppressRead()Z
    .locals 1

    .line 477
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public final continueLoading(J)Z
    .locals 0

    .line 308
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->pendingDeferredRetry:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;->open()Z

    move-result p1

    .line 312
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->isLoading()Z

    move-result p2

    if-nez p2, :cond_1

    .line 313
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->startLoading()V

    .line 314
    const/4 p1, 0x1

    .line 316
    :cond_1
    return p1

    .line 309
    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final discardBuffer(JZ)V
    .locals 4

    .line 295
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    array-length v0, v0

    .line 296
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 297
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    aget-object v2, v2, v1

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, p1, p2, p3, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->discardTo(JZZ)V

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_0
    return-void
.end method

.method public final endTracks()V
    .locals 2

    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueuesBuilt:Z

    .line 585
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->handler:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 586
    return-void
.end method

.method public final getAdjustedSeekPositionUs(JLccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;)J
    .locals 9

    .line 389
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    const-wide/16 p1, 0x0

    return-wide p1

    .line 393
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;->getSeekPoints(J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object v0

    .line 394
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$SeekPoints;->first:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;

    iget-wide v5, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;->timeUs:J

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$SeekPoints;->second:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;

    iget-wide v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;->timeUs:J

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->resolveSeekPositionUs(JLccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getBufferedPositionUs()J
    .locals 8

    .line 340
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_0

    .line 341
    return-wide v1

    .line 342
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    return-wide v0

    .line 346
    :cond_1
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    if-eqz v0, :cond_4

    .line 348
    const-wide v3, 0x7fffffffffffffffL

    .line 349
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    array-length v0, v0

    .line 350
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    .line 351
    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_2

    .line 352
    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    aget-object v6, v6, v5

    .line 353
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v6

    .line 352
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 350
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 356
    :cond_3
    goto :goto_1

    .line 357
    :cond_4
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide v3

    .line 359
    :goto_1
    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    iget-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    goto :goto_2

    .line 360
    :cond_5
    nop

    .line 359
    :goto_2
    return-wide v3
.end method

.method public final getNextLoadPositionUs()J
    .locals 2

    .line 321
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getTrackGroups()Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 220
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->tracks:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method final isReady(I)Z
    .locals 1

    .line 401
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->suppressRead()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method final maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->actualMinLoadableRetryCount:I

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->maybeThrowError(I)V

    .line 406
    return-void
.end method

.method public final maybeThrowPrepareError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->maybeThrowError()V

    .line 216
    return-void
.end method

.method public final onLoadCanceled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJZ)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    .line 511
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 512
    invoke-static/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    move-result-object v2

    .line 518
    invoke-static/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$500(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v8

    iget-wide v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    .line 522
    invoke-static/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$600(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v16

    .line 511
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v17}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;IILccsancom/mbridge/msdk/playercommon/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 523
    if-nez p6, :cond_1

    .line 524
    invoke-direct/range {p0 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->copyLengthFromLoader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    .line 525
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 526
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->reset()V

    .line 525
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 528
    :cond_0
    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-lez v1, :cond_1

    .line 529
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;)V

    .line 532
    :cond_1
    return-void
.end method

.method public final bridge synthetic onLoadCanceled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 7

    .line 53
    move-object v1, p1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->onLoadCanceled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJZ)V

    return-void
.end method

.method public final onLoadCompleted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJ)V
    .locals 22

    .line 485
    move-object/from16 v0, p0

    iget-wide v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 486
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide v1

    .line 487
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 488
    :cond_0
    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    :goto_0
    iput-wide v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    .line 489
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$Listener;

    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;

    invoke-interface {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v4

    invoke-interface {v3, v1, v2, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$Listener;->onSourceInfoRefreshed(JZ)V

    .line 491
    :cond_1
    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 492
    invoke-static/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 498
    invoke-static/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$500(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v12

    iget-wide v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    .line 502
    invoke-static/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$600(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v20

    .line 491
    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    invoke-virtual/range {v5 .. v21}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;IILccsancom/mbridge/msdk/playercommon/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 503
    invoke-direct/range {p0 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->copyLengthFromLoader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    .line 504
    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    .line 505
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;)V

    .line 506
    return-void
.end method

.method public final bridge synthetic onLoadCompleted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 6

    .line 53
    move-object v1, p1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->onLoadCompleted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJ)V

    return-void
.end method

.method public final onLoadError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;)I
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v18, p6

    .line 537
    invoke-static/range {p6 .. p6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->isLoadableExceptionFatal(Ljava/io/IOException;)Z

    move-result v20

    move/from16 v19, v20

    .line 538
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 539
    invoke-static/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    move-result-object v2

    .line 545
    invoke-static/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$500(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v8

    iget-wide v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    .line 549
    invoke-static/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$600(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v16

    .line 538
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v19}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;IILccsancom/mbridge/msdk/playercommon/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 552
    invoke-direct/range {p0 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->copyLengthFromLoader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    .line 553
    if-eqz v20, :cond_0

    .line 554
    const/4 v1, 0x3

    return v1

    .line 556
    :cond_0
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->getExtractedSamplesCount()I

    move-result v1

    .line 557
    iget v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 558
    :goto_0
    move-object/from16 v5, p1

    invoke-direct {v0, v5, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->configureRetry(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 559
    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 560
    :cond_3
    const/4 v3, 0x2

    .line 558
    :goto_1
    return v3
.end method

.method public final bridge synthetic onLoadError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 7

    .line 53
    move-object v1, p1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->onLoadError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public final onLoaderReleased()V
    .locals 4

    .line 200
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 201
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->reset()V

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->extractorHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->release()V

    .line 204
    return-void
.end method

.method public final onUpstreamFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V
    .locals 1

    .line 598
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->handler:Lccsanandroid/os/Handler;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 599
    return-void
.end method

.method public final prepare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 208
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;

    .line 209
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;->open()Z

    .line 210
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->startLoading()V

    .line 211
    return-void
.end method

.method final readData(ILccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 9

    .line 410
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->suppressRead()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    .line 411
    return v1

    .line 413
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    aget-object v2, v0, p1

    iget-boolean v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    iget-wide v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    .line 414
    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v2 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->read(Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I

    move-result p2

    .line 416
    const/4 p3, -0x4

    if-ne p2, p3, :cond_1

    .line 417
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->maybeNotifyTrackFormat(I)V

    goto :goto_0

    .line 418
    :cond_1
    if-ne p2, v1, :cond_2

    .line 419
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->maybeStartDeferredRetry(I)V

    .line 421
    :cond_2
    :goto_0
    return p2
.end method

.method public final readDiscontinuity()J
    .locals 2

    .line 326
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->notifiedReadingStarted:Z

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->readingStarted()V

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->notifiedReadingStarted:Z

    .line 330
    :cond_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_1

    .line 331
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->getExtractedSamplesCount()I

    move-result v0

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-le v0, v1, :cond_2

    .line 332
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    .line 333
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    return-wide v0

    .line 335
    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final reevaluateBuffer(J)V
    .locals 0

    .line 304
    return-void
.end method

.method public final release()V
    .locals 4

    .line 184
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 188
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->discardToEnd()V

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->release(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$ReleaseCallback;)V

    .line 192
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->handler:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 193
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->released:Z

    .line 195
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodReleased()V

    .line 196
    return-void
.end method

.method public final seekMap(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;)V
    .locals 1

    .line 590
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;

    .line 591
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->handler:Lccsanandroid/os/Handler;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 592
    return-void
.end method

.method public final seekToUs(J)J
    .locals 4

    .line 366
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    .line 367
    :goto_0
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    .line 370
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->seekInsideBufferUs(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    return-wide p1

    .line 374
    :cond_1
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->pendingDeferredRetry:Z

    .line 375
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 376
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    .line 377
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 378
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_2

    .line 380
    :cond_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 381
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->reset()V

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 384
    :cond_3
    :goto_2
    return-wide p1
.end method

.method public final selectTracks([Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;[Z[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;[ZJ)J
    .locals 6

    .line 226
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 227
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    .line 229
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 230
    aget-object v3, p3, v2

    if-eqz v3, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    aget-boolean v3, p2, v2

    if-nez v3, :cond_1

    .line 231
    :cond_0
    aget-object v3, p3, v2

    check-cast v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;

    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;)I

    move-result v3

    .line 232
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v5, v5, v3

    invoke-static {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 233
    iget v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    sub-int/2addr v5, v4

    iput v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    .line 234
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aput-boolean v1, v4, v3

    .line 235
    const/4 v3, 0x0

    aput-object v3, p3, v2

    .line 229
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    :cond_2
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->seenFirstTrackSelection:Z

    if-eqz p2, :cond_3

    if-nez v0, :cond_4

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x0

    cmp-long p2, p5, v2

    if-eqz p2, :cond_4

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    .line 242
    :goto_2
    const/4 v0, 0x0

    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_9

    .line 243
    aget-object v2, p3, v0

    if-nez v2, :cond_8

    aget-object v2, p1, v0

    if-eqz v2, :cond_8

    .line 244
    aget-object v2, p1, v0

    .line 245
    invoke-interface {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v3

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 246
    invoke-interface {v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 247
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->tracks:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    invoke-interface {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;

    move-result-object v2

    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->indexOf(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;)I

    move-result v2

    .line 248
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v3, v3, v2

    xor-int/2addr v3, v4

    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 249
    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    add-int/2addr v3, v4

    iput v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    .line 250
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aput-boolean v4, v3, v2

    .line 251
    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;

    invoke-direct {v3, p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;I)V

    aput-object v3, p3, v0

    .line 252
    aput-boolean v4, p4, v0

    .line 254
    if-nez p2, :cond_8

    .line 255
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    aget-object p2, p2, v2

    .line 256
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->rewind()V

    .line 261
    invoke-virtual {p2, p5, p6, v4, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    .line 262
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_6

    :cond_7
    const/4 p2, 0x0

    .line 242
    :cond_8
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 266
    :cond_9
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-nez p1, :cond_c

    .line 267
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->pendingDeferredRetry:Z

    .line 268
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    .line 269
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 271
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    array-length p2, p1

    :goto_7
    if-ge v1, p2, :cond_a

    aget-object p3, p1, v1

    .line 272
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->discardToEnd()V

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 274
    :cond_a
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_a

    .line 276
    :cond_b
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    array-length p2, p1

    :goto_8
    if-ge v1, p2, :cond_e

    aget-object p3, p1, v1

    .line 277
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->reset()V

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 280
    :cond_c
    if-eqz p2, :cond_e

    .line 281
    invoke-virtual {p0, p5, p6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->seekToUs(J)J

    move-result-wide p5

    .line 283
    nop

    :goto_9
    array-length p1, p3

    if-ge v1, p1, :cond_e

    .line 284
    aget-object p1, p3, v1

    if-eqz p1, :cond_d

    .line 285
    aput-boolean v4, p4, v1

    .line 283
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 289
    :cond_e
    :goto_a
    iput-boolean v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->seenFirstTrackSelection:Z

    .line 290
    return-wide p5
.end method

.method final skipData(IJ)I
    .locals 5

    .line 425
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->suppressRead()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 426
    return v1

    .line 428
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    aget-object v0, v0, p1

    .line 430
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v2

    cmp-long v4, p2, v2

    if-lez v4, :cond_1

    .line 431
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->advanceToEnd()I

    move-result v1

    goto :goto_0

    .line 433
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, p2, p3, v2, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result p2

    .line 434
    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    .line 435
    goto :goto_0

    .line 434
    :cond_2
    move v1, p2

    .line 438
    :goto_0
    if-lez v1, :cond_3

    .line 439
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->maybeNotifyTrackFormat(I)V

    goto :goto_1

    .line 441
    :cond_3
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->maybeStartDeferredRetry(I)V

    .line 443
    :goto_1
    return v1
.end method

.method public final track(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;
    .locals 3

    .line 567
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    array-length p2, p2

    .line 568
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 569
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueueTrackIds:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 570
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    aget-object p1, p1, v0

    return-object p1

    .line 568
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 573
    :cond_1
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->allocator:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocator;

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocator;)V

    .line 574
    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;->setUpstreamFormatChangeListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;)V

    .line 575
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueueTrackIds:[I

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueueTrackIds:[I

    .line 576
    aput p1, v1, p2

    .line 577
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleQueue;

    .line 578
    aput-object v0, p1, p2

    .line 579
    return-object v0
.end method
