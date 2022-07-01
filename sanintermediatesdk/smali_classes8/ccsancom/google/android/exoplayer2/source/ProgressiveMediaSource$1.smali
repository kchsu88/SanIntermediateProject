.class Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource$1;
.super Lccsancom/google/android/exoplayer2/source/ForwardingTimeline;
.source "ProgressiveMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;Lccsancom/google/android/exoplayer2/Timeline;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;
    .param p2, "timeline"    # Lccsancom/google/android/exoplayer2/Timeline;

    .line 370
    invoke-direct {p0, p2}, Lccsancom/google/android/exoplayer2/source/ForwardingTimeline;-><init>(Lccsancom/google/android/exoplayer2/Timeline;)V

    return-void
.end method


# virtual methods
.method public getPeriod(ILccsancom/google/android/exoplayer2/Timeline$Period;Z)Lccsancom/google/android/exoplayer2/Timeline$Period;
    .locals 1
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lccsancom/google/android/exoplayer2/Timeline$Period;
    .param p3, "setIds"    # Z

    .line 381
    invoke-super {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/source/ForwardingTimeline;->getPeriod(ILccsancom/google/android/exoplayer2/Timeline$Period;Z)Lccsancom/google/android/exoplayer2/Timeline$Period;

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p2, Lccsancom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    .line 383
    return-object p2
.end method

.method public getWindow(ILccsancom/google/android/exoplayer2/Timeline$Window;J)Lccsancom/google/android/exoplayer2/Timeline$Window;
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lccsancom/google/android/exoplayer2/Timeline$Window;
    .param p3, "defaultPositionProjectionUs"    # J

    .line 374
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/google/android/exoplayer2/source/ForwardingTimeline;->getWindow(ILccsancom/google/android/exoplayer2/Timeline$Window;J)Lccsancom/google/android/exoplayer2/Timeline$Window;

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p2, Lccsancom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    .line 376
    return-object p2
.end method
