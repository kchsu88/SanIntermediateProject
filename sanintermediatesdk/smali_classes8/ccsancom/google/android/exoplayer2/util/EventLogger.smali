.class public Lccsancom/google/android/exoplayer2/util/EventLogger;
.super Ljava/lang/Object;
.source "EventLogger.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;


# static fields
.field private static final DEFAULT_TAG:Ljava/lang/String; = "EventLogger"

.field private static final MAX_TIMELINE_ITEM_LINES:I = 0x3

.field private static final TIME_FORMAT:Ljava/text/NumberFormat;


# instance fields
.field private final period:Lccsancom/google/android/exoplayer2/Timeline$Period;

.field private final startTimeMs:J

.field private final tag:Ljava/lang/String;

.field private final trackSelector:Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector;

.field private final window:Lccsancom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/exoplayer2/util/EventLogger;->TIME_FORMAT:Ljava/text/NumberFormat;

    .line 62
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 63
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V
    .locals 1
    .param p1, "trackSelector"    # Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    .line 80
    const-string v0, "EventLogger"

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;-><init>(Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector;Ljava/lang/String;)V
    .locals 2
    .param p1, "trackSelector"    # Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector;
    .param p2, "tag"    # Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/util/EventLogger;->trackSelector:Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    .line 92
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/util/EventLogger;->tag:Ljava/lang/String;

    .line 93
    new-instance v0, Lccsancom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/util/EventLogger;->window:Lccsancom/google/android/exoplayer2/Timeline$Window;

    .line 94
    new-instance v0, Lccsancom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/util/EventLogger;->period:Lccsancom/google/android/exoplayer2/Timeline$Period;

    .line 95
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/util/EventLogger;->startTimeMs:J

    .line 96
    return-void
.end method

.method private static getAdaptiveSupportString(II)Ljava/lang/String;
    .locals 1
    .param p0, "trackCount"    # I
    .param p1, "adaptiveSupport"    # I

    .line 639
    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    .line 640
    const-string v0, "N/A"

    return-object v0

    .line 642
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 650
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 644
    :sswitch_0
    const-string v0, "YES"

    return-object v0

    .line 646
    :sswitch_1
    const-string v0, "YES_NOT_SEAMLESS"

    return-object v0

    .line 648
    :sswitch_2
    const-string v0, "NO"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getDiscontinuityReasonString(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .line 683
    packed-switch p0, :pswitch_data_0

    .line 697
    const-string v0, "?"

    return-object v0

    .line 695
    :pswitch_0
    const-string v0, "INTERNAL"

    return-object v0

    .line 691
    :pswitch_1
    const-string v0, "REMOVE"

    return-object v0

    .line 693
    :pswitch_2
    const-string v0, "SKIP"

    return-object v0

    .line 689
    :pswitch_3
    const-string v0, "SEEK_ADJUSTMENT"

    return-object v0

    .line 687
    :pswitch_4
    const-string v0, "SEEK"

    return-object v0

    .line 685
    :pswitch_5
    const-string v0, "AUTO_TRANSITION"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEventString(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "eventDescription"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .line 585
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getEventTimeString(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "eventString":Ljava/lang/String;
    instance-of v1, p4, Lccsancom/google/android/exoplayer2/PlaybackException;

    if-eqz v1, :cond_0

    .line 587
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p4

    check-cast v2, Lccsancom/google/android/exoplayer2/PlaybackException;

    invoke-virtual {v2}, Lccsancom/google/android/exoplayer2/PlaybackException;->getErrorCodeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 589
    :cond_0
    if-eqz p3, :cond_1

    .line 590
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    :cond_1
    invoke-static {p4}, Lccsancom/google/android/exoplayer2/util/Log;->getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, "throwableString":Ljava/lang/String;
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 594
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, "\n  "

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 597
    return-object v0
.end method

.method private getEventTimeString(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;
    .locals 5
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 601
    iget v0, p1, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "windowPeriodString":Ljava/lang/String;
    iget-object v1, p1, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-eqz v1, :cond_0

    .line 603
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    iget-object v3, p1, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 604
    invoke-virtual {v2, v3}, Lccsancom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", period="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 605
    iget-object v1, p1, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v2, v2, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adGroup="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v2, v2, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ad="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    :cond_0
    iget-wide v1, p1, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-wide v3, p0, Lccsancom/google/android/exoplayer2/util/EventLogger;->startTimeMs:J

    sub-long/2addr v1, v3

    .line 611
    invoke-static {v1, v2}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getTimeString(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    .line 613
    invoke-static {v2, v3}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getTimeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "eventTime="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaPos="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 610
    return-object v1
.end method

.method private static getMediaItemTransitionReasonString(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .line 714
    packed-switch p0, :pswitch_data_0

    .line 724
    const-string v0, "?"

    return-object v0

    .line 718
    :pswitch_0
    const-string v0, "PLAYLIST_CHANGED"

    return-object v0

    .line 722
    :pswitch_1
    const-string v0, "SEEK"

    return-object v0

    .line 716
    :pswitch_2
    const-string v0, "AUTO"

    return-object v0

    .line 720
    :pswitch_3
    const-string v0, "REPEAT"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getPlayWhenReadyChangeReasonString(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .line 742
    packed-switch p0, :pswitch_data_0

    .line 754
    const-string v0, "?"

    return-object v0

    .line 752
    :pswitch_0
    const-string v0, "END_OF_MEDIA_ITEM"

    return-object v0

    .line 748
    :pswitch_1
    const-string v0, "REMOTE"

    return-object v0

    .line 744
    :pswitch_2
    const-string v0, "AUDIO_BECOMING_NOISY"

    return-object v0

    .line 746
    :pswitch_3
    const-string v0, "AUDIO_FOCUS_LOSS"

    return-object v0

    .line 750
    :pswitch_4
    const-string v0, "USER_REQUEST"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getPlaybackSuppressionReasonString(I)Ljava/lang/String;
    .locals 1
    .param p0, "playbackSuppressionReason"    # I

    .line 730
    packed-switch p0, :pswitch_data_0

    .line 736
    const-string v0, "?"

    return-object v0

    .line 734
    :pswitch_0
    const-string v0, "TRANSIENT_AUDIO_FOCUS_LOSS"

    return-object v0

    .line 732
    :pswitch_1
    const-string v0, "NONE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getRepeatModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "repeatMode"    # I

    .line 670
    packed-switch p0, :pswitch_data_0

    .line 678
    const-string v0, "?"

    return-object v0

    .line 676
    :pswitch_0
    const-string v0, "ALL"

    return-object v0

    .line 674
    :pswitch_1
    const-string v0, "ONE"

    return-object v0

    .line 672
    :pswitch_2
    const-string v0, "OFF"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 623
    packed-switch p0, :pswitch_data_0

    .line 633
    const-string v0, "?"

    return-object v0

    .line 627
    :pswitch_0
    const-string v0, "ENDED"

    return-object v0

    .line 631
    :pswitch_1
    const-string v0, "READY"

    return-object v0

    .line 625
    :pswitch_2
    const-string v0, "BUFFERING"

    return-object v0

    .line 629
    :pswitch_3
    const-string v0, "IDLE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getTimeString(J)Ljava/lang/String;
    .locals 3
    .param p0, "timeMs"    # J

    .line 619
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string v0, "?"

    goto :goto_0

    :cond_0
    sget-object v0, Lccsancom/google/android/exoplayer2/util/EventLogger;->TIME_FORMAT:Ljava/text/NumberFormat;

    long-to-float v1, p0

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getTimelineChangeReasonString(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .line 702
    packed-switch p0, :pswitch_data_0

    .line 708
    const-string v0, "?"

    return-object v0

    .line 704
    :pswitch_0
    const-string v0, "SOURCE_UPDATE"

    return-object v0

    .line 706
    :pswitch_1
    const-string v0, "PLAYLIST_CHANGED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getTrackStatusString(Lccsancom/google/android/exoplayer2/trackselection/TrackSelection;Lccsancom/google/android/exoplayer2/source/TrackGroup;I)Ljava/lang/String;
    .locals 2
    .param p0, "selection"    # Lccsancom/google/android/exoplayer2/trackselection/TrackSelection;
    .param p1, "group"    # Lccsancom/google/android/exoplayer2/source/TrackGroup;
    .param p2, "trackIndex"    # I

    .line 659
    if-eqz p0, :cond_0

    .line 661
    invoke-interface {p0}, Lccsancom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lccsancom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 662
    invoke-interface {p0, p2}, Lccsancom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 659
    :goto_0
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getTrackStatusString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTrackStatusString(Z)Ljava/lang/String;
    .locals 1
    .param p0, "enabled"    # Z

    .line 666
    if-eqz p0, :cond_0

    const-string v0, "[X]"

    goto :goto_0

    :cond_0
    const-string v0, "[ ]"

    :goto_0
    return-object v0
.end method

.method private logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "eventName"    # Ljava/lang/String;

    .line 551
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getEventString(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method private logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "eventDescription"    # Ljava/lang/String;

    .line 555
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getEventString(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method private loge(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "eventDescription"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .line 567
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getEventString(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->loge(Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method private loge(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 559
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getEventString(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->loge(Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method private printInternalError(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 571
    const-string v0, "internalError"

    invoke-direct {p0, p1, v0, p2, p3}, Lccsancom/google/android/exoplayer2/util/EventLogger;->loge(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 572
    return-void
.end method

.method private printMetadata(Lccsancom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;)V
    .locals 4
    .param p1, "metadata"    # Lccsancom/google/android/exoplayer2/metadata/Metadata;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 575
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 576
    invoke-virtual {p1, v0}, Lccsancom/google/android/exoplayer2/metadata/Metadata;->get(I)Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 575
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 536
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/util/EventLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 545
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/util/EventLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public onAudioAttributesChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 6
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "audioAttributes"    # Lccsancom/google/android/exoplayer2/audio/AudioAttributes;

    .line 387
    iget v0, p2, Lccsancom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    iget v1, p2, Lccsancom/google/android/exoplayer2/audio/AudioAttributes;->flags:I

    iget v2, p2, Lccsancom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    iget v3, p2, Lccsancom/google/android/exoplayer2/audio/AudioAttributes;->allowedCapturePolicy:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x2f

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audioAttributes"

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public synthetic onAudioCodecError(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioCodecError(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public onAudioDecoderInitialized(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 1
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;
    .param p3, "initializationDurationMs"    # J

    .line 351
    const-string v0, "audioDecoderInitialized"

    invoke-direct {p0, p1, v0, p2}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public synthetic onAudioDecoderInitialized(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderInitialized(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public onAudioDecoderReleased(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;

    .line 372
    const-string v0, "audioDecoderReleased"

    invoke-direct {p0, p1, v0, p2}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public onAudioDisabled(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderCounters"    # Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 377
    const-string v0, "audioDisabled"

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public onAudioEnabled(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderCounters"    # Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 345
    const-string v0, "audioEnabled"

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioInputFormatChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public onAudioInputFormatChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 2
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "format"    # Lccsancom/google/android/exoplayer2/Format;
    .param p3, "decoderReuseEvaluation"    # Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 357
    invoke-static {p2}, Lccsancom/google/android/exoplayer2/Format;->toLogString(Lccsancom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audioInputFormat"

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public synthetic onAudioPositionAdvancing(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioPositionAdvancing(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public onAudioSessionIdChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 2
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "audioSessionId"    # I

    .line 382
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audioSessionId"

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public synthetic onAudioSinkError(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioSinkError(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public onAudioUnderrun(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 3
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "bufferSize"    # I
    .param p3, "bufferSizeMs"    # J
    .param p5, "elapsedSinceLastFeedMs"    # J

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x37

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audioTrackUnderrun"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lccsancom/google/android/exoplayer2/util/EventLogger;->loge(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/Player$Commands;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAvailableCommandsChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public onBandwidthEstimate(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "totalLoadTimeMs"    # I
    .param p3, "totalBytesLoaded"    # J
    .param p5, "bitrateEstimate"    # J

    .line 483
    return-void
.end method

.method public synthetic onDecoderDisabled(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderDisabled(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onDecoderEnabled(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderEnabled(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onDecoderInitialized(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderInitialized(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V

    return-void
.end method

.method public synthetic onDecoderInputFormatChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILccsancom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderInputFormatChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILccsancom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public onDownstreamFormatChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 2
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 497
    iget-object v0, p2, Lccsancom/google/android/exoplayer2/source/MediaLoadData;->trackFormat:Lccsancom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/Format;->toLogString(Lccsancom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "downstreamFormat"

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public onDrmKeysLoaded(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 1
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 522
    const-string v0, "drmKeysLoaded"

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method public onDrmKeysRemoved(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 1
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 517
    const-string v0, "drmKeysRemoved"

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public onDrmKeysRestored(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 1
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 512
    const-string v0, "drmKeysRestored"

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public synthetic onDrmSessionAcquired(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionAcquired(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onDrmSessionAcquired(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 2
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "state"    # I

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drmSessionAcquired"

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public onDrmSessionManagerError(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "error"    # Ljava/lang/Exception;

    .line 507
    const-string v0, "drmSessionManagerError"

    invoke-direct {p0, p1, v0, p2}, Lccsancom/google/android/exoplayer2/util/EventLogger;->printInternalError(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 508
    return-void
.end method

.method public onDrmSessionReleased(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 1
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 527
    const-string v0, "drmSessionReleased"

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public onDroppedVideoFrames(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 2
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "droppedFrames"    # I
    .param p3, "elapsedMs"    # J

    .line 428
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "droppedFrames"

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method public synthetic onEvents(Lccsancom/google/android/exoplayer2/Player;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onEvents(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/Player;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V

    return-void
.end method

.method public onIsLoadingChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 2
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "isLoading"    # Z

    .line 102
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "loading"

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onIsPlayingChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 2
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "isPlaying"    # Z

    .line 130
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isPlaying"

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public onLoadCanceled(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Lccsancom/google/android/exoplayer2/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 471
    return-void
.end method

.method public onLoadCompleted(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Lccsancom/google/android/exoplayer2/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 477
    return-void
.end method

.method public onLoadError(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 1
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Lccsancom/google/android/exoplayer2/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;
    .param p4, "error"    # Ljava/io/IOException;
    .param p5, "wasCanceled"    # Z

    .line 464
    const-string v0, "loadError"

    invoke-direct {p0, p1, v0, p4}, Lccsancom/google/android/exoplayer2/util/EventLogger;->printInternalError(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 465
    return-void
.end method

.method public onLoadStarted(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Lccsancom/google/android/exoplayer2/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 455
    return-void
.end method

.method public synthetic onLoadingChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadingChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onMaxSeekToPreviousPositionChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public onMediaItemTransition(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/MediaItem;I)V
    .locals 4
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaItem"    # Lccsancom/google/android/exoplayer2/MediaItem;
    .param p3, "reason"    # I

    .line 237
    nop

    .line 239
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getEventTimeString(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {p3}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getMediaItemTransitionReasonString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "mediaItem ["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", reason="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMediaMetadataChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public onMetadata(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 3
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "metadata"    # Lccsancom/google/android/exoplayer2/metadata/Metadata;

    .line 338
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getEventTimeString(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "metadata ["

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 339
    const-string v0, "  "

    invoke-direct {p0, p2, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->printMetadata(Lccsancom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;)V

    .line 340
    const-string v0, "]"

    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public onPlayWhenReadyChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 3
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "playWhenReady"    # Z
    .param p3, "reason"    # I

    .line 113
    nop

    .line 116
    invoke-static {p3}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getPlayWhenReadyChangeReasonString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v1, "playWhenReady"

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onPlaybackParametersChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 2
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "playbackParameters"    # Lccsancom/google/android/exoplayer2/PlaybackParameters;

    .line 193
    invoke-virtual {p2}, Lccsancom/google/android/exoplayer2/PlaybackParameters;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "playbackParameters"

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public onPlaybackStateChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 2
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "state"    # I

    .line 107
    invoke-static {p2}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getStateString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "state"

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 2
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "playbackSuppressionReason"    # I

    .line 122
    nop

    .line 125
    invoke-static {p2}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getPlaybackSuppressionReasonString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string v1, "playbackSuppressionReason"

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public onPlayerError(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/PlaybackException;)V
    .locals 1
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "error"    # Lccsancom/google/android/exoplayer2/PlaybackException;

    .line 247
    const-string v0, "playerFailed"

    invoke-direct {p0, p1, v0, p2}, Lccsancom/google/android/exoplayer2/util/EventLogger;->loge(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    return-void
.end method

.method public synthetic onPlayerReleased(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerReleased(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerStateChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method public synthetic onPlaylistMetadataChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaylistMetadataChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPositionDiscontinuity(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public onPositionDiscontinuity(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/Player$PositionInfo;Lccsancom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 11
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "oldPosition"    # Lccsancom/google/android/exoplayer2/Player$PositionInfo;
    .param p3, "newPosition"    # Lccsancom/google/android/exoplayer2/Player$PositionInfo;
    .param p4, "reason"    # I

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v0, "builder":Ljava/lang/StringBuilder;
    nop

    .line 151
    const-string v1, "reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-static {p4}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getDiscontinuityReasonString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, ", PositionInfo:old ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, "mediaItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lccsancom/google/android/exoplayer2/Player$PositionInfo;->mediaItemIndex:I

    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    const-string v2, ", period="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lccsancom/google/android/exoplayer2/Player$PositionInfo;->periodIndex:I

    .line 157
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    const-string v3, ", pos="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lccsancom/google/android/exoplayer2/Player$PositionInfo;->positionMs:J

    .line 159
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 160
    iget v4, p2, Lccsancom/google/android/exoplayer2/Player$PositionInfo;->adGroupIndex:I

    const-string v5, ", ad="

    const-string v6, ", adGroup="

    const-string v7, ", contentPos="

    const/4 v8, -0x1

    if-eq v4, v8, :cond_0

    .line 161
    nop

    .line 162
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p2, Lccsancom/google/android/exoplayer2/Player$PositionInfo;->contentPositionMs:J

    .line 163
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lccsancom/google/android/exoplayer2/Player$PositionInfo;->adGroupIndex:I

    .line 165
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lccsancom/google/android/exoplayer2/Player$PositionInfo;->adIndexInAdGroup:I

    .line 167
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    :cond_0
    nop

    .line 170
    const-string v4, "], PositionInfo:new ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lccsancom/google/android/exoplayer2/Player$PositionInfo;->mediaItemIndex:I

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lccsancom/google/android/exoplayer2/Player$PositionInfo;->periodIndex:I

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p3, Lccsancom/google/android/exoplayer2/Player$PositionInfo;->positionMs:J

    .line 176
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 177
    iget v1, p3, Lccsancom/google/android/exoplayer2/Player$PositionInfo;->adGroupIndex:I

    if-eq v1, v8, :cond_1

    .line 178
    nop

    .line 179
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p3, Lccsancom/google/android/exoplayer2/Player$PositionInfo;->contentPositionMs:J

    .line 180
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lccsancom/google/android/exoplayer2/Player$PositionInfo;->adGroupIndex:I

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lccsancom/google/android/exoplayer2/Player$PositionInfo;->adIndexInAdGroup:I

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "positionDiscontinuity"

    invoke-direct {p0, p1, v2, v1}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public onRenderedFirstFrame(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .locals 2
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "output"    # Ljava/lang/Object;
    .param p3, "renderTimeMs"    # J

    .line 443
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "renderedFirstFrame"

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public onRepeatModeChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 2
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "repeatMode"    # I

    .line 135
    invoke-static {p2}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getRepeatModeString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "repeatMode"

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSeekBackIncrementChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSeekForwardIncrementChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onSeekProcessed(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSeekProcessed(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onSeekStarted(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSeekStarted(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onShuffleModeChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 2
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "shuffleModeEnabled"    # Z

    .line 140
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shuffleModeEnabled"

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 2
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "skipSilenceEnabled"    # Z

    .line 401
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "skipSilenceEnabled"

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public onSurfaceSizeChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V
    .locals 2
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "surfaceSize"

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method public onTimelineChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 11
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "reason"    # I

    .line 198
    iget-object v0, p1, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    .line 199
    .local v0, "periodCount":I
    iget-object v1, p1, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    .line 200
    .local v1, "windowCount":I
    nop

    .line 202
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getEventTimeString(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-static {p2}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getTimelineChangeReasonString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x45

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "timeline ["

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", periodCount="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", windowCount="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {p0, v2}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 209
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    const-string v5, "]"

    if-ge v2, v4, :cond_0

    .line 210
    iget-object v3, p1, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    iget-object v4, p0, Lccsancom/google/android/exoplayer2/util/EventLogger;->period:Lccsancom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v3, v2, v4}, Lccsancom/google/android/exoplayer2/Timeline;->getPeriod(ILccsancom/google/android/exoplayer2/Timeline$Period;)Lccsancom/google/android/exoplayer2/Timeline$Period;

    .line 211
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/util/EventLogger;->period:Lccsancom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v3}, Lccsancom/google/android/exoplayer2/Timeline$Period;->getDurationMs()J

    move-result-wide v3

    invoke-static {v3, v4}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getTimeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "  period ["

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    .end local v2    # "i":I
    :cond_0
    const-string v2, "  ..."

    if-le v0, v3, :cond_1

    .line 214
    invoke-virtual {p0, v2}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 216
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 217
    iget-object v6, p1, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    iget-object v7, p0, Lccsancom/google/android/exoplayer2/util/EventLogger;->window:Lccsancom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v6, v4, v7}, Lccsancom/google/android/exoplayer2/Timeline;->getWindow(ILccsancom/google/android/exoplayer2/Timeline$Window;)Lccsancom/google/android/exoplayer2/Timeline$Window;

    .line 218
    iget-object v6, p0, Lccsancom/google/android/exoplayer2/util/EventLogger;->window:Lccsancom/google/android/exoplayer2/Timeline$Window;

    .line 221
    invoke-virtual {v6}, Lccsancom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getTimeString(J)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lccsancom/google/android/exoplayer2/util/EventLogger;->window:Lccsancom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v7, v7, Lccsancom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    iget-object v8, p0, Lccsancom/google/android/exoplayer2/util/EventLogger;->window:Lccsancom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v8, v8, Lccsancom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x2a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "  window ["

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", seekable="

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", dynamic="

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 218
    invoke-virtual {p0, v6}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 216
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 228
    .end local v4    # "i":I
    :cond_2
    if-le v1, v3, :cond_3

    .line 229
    invoke-virtual {p0, v2}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 231
    :cond_3
    invoke-virtual {p0, v5}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public onTracksChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 25
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "trackGroups"    # Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "trackSelections"    # Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lccsancom/google/android/exoplayer2/util/EventLogger;->trackSelector:Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 255
    .local v1, "mappedTrackInfo":Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    :goto_0
    if-nez v1, :cond_1

    .line 256
    const-string/jumbo v2, "tracks"

    const-string v3, "[]"

    move-object/from16 v4, p1

    invoke-direct {v0, v4, v2, v3}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void

    .line 259
    :cond_1
    move-object/from16 v4, p1

    const-string/jumbo v2, "tracks ["

    invoke-direct/range {p0 .. p1}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getEventTimeString(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    .line 262
    .local v2, "rendererCount":I
    const/4 v3, 0x0

    .local v3, "rendererIndex":I
    :goto_2
    const-string v5, ", supported="

    const-string v6, ", "

    const-string v7, " Track:"

    const-string v8, "    Group:"

    const-string v9, "  ]"

    const-string v10, "      "

    const-string v11, "    ]"

    const-string v13, " ["

    if-ge v3, v2, :cond_8

    .line 263
    invoke-virtual {v1, v3}, Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lccsancom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v14

    .line 264
    .local v14, "rendererTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    move-object/from16 v15, p3

    invoke-virtual {v15, v3}, Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lccsancom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v12

    .line 265
    .local v12, "trackSelection":Lccsancom/google/android/exoplayer2/trackselection/TrackSelection;
    move/from16 v17, v2

    .end local v2    # "rendererCount":I
    .local v17, "rendererCount":I
    iget v2, v14, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    const-string v4, "  "

    if-nez v2, :cond_3

    .line 266
    invoke-virtual {v1, v3}, Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " []"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 268
    :cond_3
    invoke-virtual {v1, v3}, Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v15, v18, 0x4

    move-object/from16 v18, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 269
    const/4 v2, 0x0

    .local v2, "groupIndex":I
    :goto_3
    iget v4, v14, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v2, v4, :cond_5

    .line 270
    invoke-virtual {v14, v2}, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lccsancom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    .line 271
    .local v4, "trackGroup":Lccsancom/google/android/exoplayer2/source/TrackGroup;
    iget v9, v4, Lccsancom/google/android/exoplayer2/source/TrackGroup;->length:I

    .line 274
    move-object/from16 v19, v14

    const/4 v15, 0x0

    .end local v14    # "rendererTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    .local v19, "rendererTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    invoke-virtual {v1, v3, v2, v15}, Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(IIZ)I

    move-result v14

    .line 272
    invoke-static {v9, v14}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getAdaptiveSupportString(II)Ljava/lang/String;

    move-result-object v9

    .line 276
    .local v9, "adaptiveSupport":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x2c

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", adaptive_supported="

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 277
    const/4 v14, 0x0

    .local v14, "trackIndex":I
    :goto_4
    iget v15, v4, Lccsancom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v14, v15, :cond_4

    .line 278
    invoke-static {v12, v4, v14}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getTrackStatusString(Lccsancom/google/android/exoplayer2/trackselection/TrackSelection;Lccsancom/google/android/exoplayer2/source/TrackGroup;I)Ljava/lang/String;

    move-result-object v15

    .line 279
    .local v15, "status":Ljava/lang/String;
    nop

    .line 281
    invoke-virtual {v1, v3, v2, v14}, Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v20

    .line 280
    move-object/from16 v21, v9

    .end local v9    # "adaptiveSupport":Ljava/lang/String;
    .local v21, "adaptiveSupport":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lccsancom/google/android/exoplayer2/util/Util;->getFormatSupportString(I)Ljava/lang/String;

    move-result-object v9

    .line 282
    .local v9, "formatSupport":Ljava/lang/String;
    nop

    .line 288
    invoke-virtual {v4, v14}, Lccsancom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lccsancom/google/android/exoplayer2/Format;

    move-result-object v20

    move-object/from16 v22, v4

    .end local v4    # "trackGroup":Lccsancom/google/android/exoplayer2/source/TrackGroup;
    .local v22, "trackGroup":Lccsancom/google/android/exoplayer2/source/TrackGroup;
    invoke-static/range {v20 .. v20}, Lccsancom/google/android/exoplayer2/Format;->toLogString(Lccsancom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, 0x26

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v20, v20, v23

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    move-object/from16 v24, v13

    add-int v13, v20, v23

    move-object/from16 v20, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 282
    invoke-virtual {v0, v4}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 277
    .end local v9    # "formatSupport":Ljava/lang/String;
    .end local v15    # "status":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v4, v22

    move-object/from16 v13, v24

    goto :goto_4

    .end local v21    # "adaptiveSupport":Ljava/lang/String;
    .end local v22    # "trackGroup":Lccsancom/google/android/exoplayer2/source/TrackGroup;
    .restart local v4    # "trackGroup":Lccsancom/google/android/exoplayer2/source/TrackGroup;
    .local v9, "adaptiveSupport":Ljava/lang/String;
    :cond_4
    move-object/from16 v22, v4

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v24, v13

    .line 292
    .end local v4    # "trackGroup":Lccsancom/google/android/exoplayer2/source/TrackGroup;
    .end local v9    # "adaptiveSupport":Ljava/lang/String;
    .end local v14    # "trackIndex":I
    .restart local v21    # "adaptiveSupport":Ljava/lang/String;
    .restart local v22    # "trackGroup":Lccsancom/google/android/exoplayer2/source/TrackGroup;
    invoke-virtual {v0, v11}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 269
    .end local v21    # "adaptiveSupport":Ljava/lang/String;
    .end local v22    # "trackGroup":Lccsancom/google/android/exoplayer2/source/TrackGroup;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v14, v19

    goto/16 :goto_3

    .end local v19    # "rendererTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    .local v14, "rendererTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    :cond_5
    move-object/from16 v19, v14

    .line 295
    .end local v2    # "groupIndex":I
    .end local v14    # "rendererTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    .restart local v19    # "rendererTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    if-eqz v12, :cond_7

    .line 296
    const/4 v2, 0x0

    .local v2, "selectionIndex":I
    :goto_5
    invoke-interface {v12}, Lccsancom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 297
    invoke-interface {v12, v2}, Lccsancom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lccsancom/google/android/exoplayer2/Format;

    move-result-object v4

    iget-object v4, v4, Lccsancom/google/android/exoplayer2/Format;->metadata:Lccsancom/google/android/exoplayer2/metadata/Metadata;

    .line 298
    .local v4, "metadata":Lccsancom/google/android/exoplayer2/metadata/Metadata;
    if-eqz v4, :cond_6

    .line 299
    const-string v5, "    Metadata ["

    invoke-virtual {v0, v5}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 300
    invoke-direct {v0, v4, v10}, Lccsancom/google/android/exoplayer2/util/EventLogger;->printMetadata(Lccsancom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0, v11}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 302
    goto :goto_6

    .line 296
    .end local v4    # "metadata":Lccsancom/google/android/exoplayer2/metadata/Metadata;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 306
    .end local v2    # "selectionIndex":I
    :cond_7
    :goto_6
    move-object/from16 v2, v18

    invoke-virtual {v0, v2}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 262
    .end local v12    # "trackSelection":Lccsancom/google/android/exoplayer2/trackselection/TrackSelection;
    .end local v19    # "rendererTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    :goto_7
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, p1

    move/from16 v2, v17

    goto/16 :goto_2

    .end local v17    # "rendererCount":I
    .local v2, "rendererCount":I
    :cond_8
    move/from16 v17, v2

    move-object/from16 v20, v8

    move-object v2, v9

    move-object/from16 v24, v13

    .line 310
    .end local v2    # "rendererCount":I
    .end local v3    # "rendererIndex":I
    .restart local v17    # "rendererCount":I
    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getUnmappedTrackGroups()Lccsancom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    .line 311
    .local v3, "unassociatedTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    iget v4, v3, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lez v4, :cond_b

    .line 312
    const-string v4, "  Unmapped ["

    invoke-virtual {v0, v4}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 313
    const/4 v4, 0x0

    .local v4, "groupIndex":I
    :goto_8
    iget v8, v3, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v4, v8, :cond_a

    .line 314
    const/16 v8, 0x17

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v8, v20

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v12, v24

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v3, v4}, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lccsancom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v9

    .line 316
    .local v9, "trackGroup":Lccsancom/google/android/exoplayer2/source/TrackGroup;
    const/4 v13, 0x0

    .local v13, "trackIndex":I
    :goto_9
    iget v14, v9, Lccsancom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v13, v14, :cond_9

    .line 317
    const/4 v14, 0x0

    invoke-static {v14}, Lccsancom/google/android/exoplayer2/util/EventLogger;->getTrackStatusString(Z)Ljava/lang/String;

    move-result-object v15

    .line 318
    .restart local v15    # "status":Ljava/lang/String;
    move-object/from16 v16, v1

    .end local v1    # "mappedTrackInfo":Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .local v16, "mappedTrackInfo":Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    invoke-static {v14}, Lccsancom/google/android/exoplayer2/util/Util;->getFormatSupportString(I)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "formatSupport":Ljava/lang/String;
    nop

    .line 325
    invoke-virtual {v9, v13}, Lccsancom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lccsancom/google/android/exoplayer2/Format;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lccsancom/google/android/exoplayer2/Format;->toLogString(Lccsancom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, 0x26

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v18, v18, v20

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v21, v3

    .end local v3    # "unassociatedTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    .local v21, "unassociatedTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    add-int v3, v18, v20

    move-object/from16 v20, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 319
    invoke-virtual {v0, v3}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 316
    .end local v1    # "formatSupport":Ljava/lang/String;
    .end local v15    # "status":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v16

    move-object/from16 v8, v20

    move-object/from16 v3, v21

    goto :goto_9

    .end local v16    # "mappedTrackInfo":Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .end local v21    # "unassociatedTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    .local v1, "mappedTrackInfo":Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .restart local v3    # "unassociatedTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    :cond_9
    move-object/from16 v16, v1

    move-object/from16 v21, v3

    move-object/from16 v20, v8

    .line 329
    .end local v1    # "mappedTrackInfo":Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .end local v3    # "unassociatedTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    .end local v13    # "trackIndex":I
    .restart local v16    # "mappedTrackInfo":Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .restart local v21    # "unassociatedTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    invoke-virtual {v0, v11}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 313
    .end local v9    # "trackGroup":Lccsancom/google/android/exoplayer2/source/TrackGroup;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v24, v12

    goto/16 :goto_8

    .end local v16    # "mappedTrackInfo":Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .end local v21    # "unassociatedTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    .restart local v1    # "mappedTrackInfo":Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .restart local v3    # "unassociatedTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    :cond_a
    move-object/from16 v16, v1

    move-object/from16 v21, v3

    .line 331
    .end local v1    # "mappedTrackInfo":Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .end local v3    # "unassociatedTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    .end local v4    # "groupIndex":I
    .restart local v16    # "mappedTrackInfo":Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .restart local v21    # "unassociatedTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    invoke-virtual {v0, v2}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    goto :goto_a

    .line 311
    .end local v16    # "mappedTrackInfo":Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .end local v21    # "unassociatedTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    .restart local v1    # "mappedTrackInfo":Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .restart local v3    # "unassociatedTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    :cond_b
    move-object/from16 v16, v1

    move-object/from16 v21, v3

    .line 333
    .end local v1    # "mappedTrackInfo":Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .end local v3    # "unassociatedTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    .restart local v16    # "mappedTrackInfo":Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .restart local v21    # "unassociatedTrackGroups":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    :goto_a
    const-string v1, "]"

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public synthetic onTracksInfoChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/TracksInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onTracksInfoChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/TracksInfo;)V

    return-void
.end method

.method public onUpstreamDiscarded(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 2
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 492
    iget-object v0, p2, Lccsancom/google/android/exoplayer2/source/MediaLoadData;->trackFormat:Lccsancom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/Format;->toLogString(Lccsancom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "upstreamDiscarded"

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method public synthetic onVideoCodecError(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoCodecError(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public onVideoDecoderInitialized(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 1
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;
    .param p3, "initializationDurationMs"    # J

    .line 417
    const-string/jumbo v0, "videoDecoderInitialized"

    invoke-direct {p0, p1, v0, p2}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public synthetic onVideoDecoderInitialized(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderInitialized(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public onVideoDecoderReleased(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;

    .line 433
    const-string/jumbo v0, "videoDecoderReleased"

    invoke-direct {p0, p1, v0, p2}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public onVideoDisabled(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderCounters"    # Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 438
    const-string/jumbo v0, "videoDisabled"

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public onVideoEnabled(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderCounters"    # Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 411
    const-string/jumbo v0, "videoEnabled"

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public synthetic onVideoFrameProcessingOffset(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoFrameProcessingOffset(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoInputFormatChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public onVideoInputFormatChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 2
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "format"    # Lccsancom/google/android/exoplayer2/Format;
    .param p3, "decoderReuseEvaluation"    # Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 423
    invoke-static {p2}, Lccsancom/google/android/exoplayer2/Format;->toLogString(Lccsancom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "videoInputFormat"

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public synthetic onVideoSizeChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoSizeChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V

    return-void
.end method

.method public onVideoSizeChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/video/VideoSize;)V
    .locals 4
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "videoSize"    # Lccsancom/google/android/exoplayer2/video/VideoSize;

    .line 448
    iget v0, p2, Lccsancom/google/android/exoplayer2/video/VideoSize;->width:I

    iget v1, p2, Lccsancom/google/android/exoplayer2/video/VideoSize;->height:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "videoSize"

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public onVolumeChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V
    .locals 2
    .param p1, "eventTime"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "volume"    # F

    .line 406
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "volume"

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/exoplayer2/util/EventLogger;->logd(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void
.end method
