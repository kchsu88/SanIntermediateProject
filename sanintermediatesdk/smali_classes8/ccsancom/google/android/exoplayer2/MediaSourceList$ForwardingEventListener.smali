.class final Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;
.super Ljava/lang/Object;
.source "MediaSourceList.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;
.implements Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/MediaSourceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ForwardingEventListener"
.end annotation


# instance fields
.field private drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private final id:Lccsancom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

.field private mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field final synthetic this$0:Lccsancom/google/android/exoplayer2/MediaSourceList;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/MediaSourceList;Lccsancom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V
    .locals 1
    .param p2, "id"    # Lccsancom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 528
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lccsancom/google/android/exoplayer2/MediaSourceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/MediaSourceList;->access$000(Lccsancom/google/android/exoplayer2/MediaSourceList;)Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 530
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/MediaSourceList;->access$100(Lccsancom/google/android/exoplayer2/MediaSourceList;)Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 531
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->id:Lccsancom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 532
    return-void
.end method

.method private maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z
    .locals 5
    .param p1, "childWindowIndex"    # I
    .param p2, "childMediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 657
    const/4 v0, 0x0

    .line 658
    .local v0, "mediaPeriodId":Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    if-eqz p2, :cond_0

    .line 659
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->id:Lccsancom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    invoke-static {v1, p2}, Lccsancom/google/android/exoplayer2/MediaSourceList;->access$200(Lccsancom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    .line 660
    if-nez v0, :cond_0

    .line 662
    const/4 v1, 0x0

    return v1

    .line 665
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->id:Lccsancom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    invoke-static {v1, p1}, Lccsancom/google/android/exoplayer2/MediaSourceList;->access$300(Lccsancom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;I)I

    move-result v1

    .line 666
    .local v1, "windowIndex":I
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v2, v2, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, v2, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 667
    invoke-static {v2, v0}, Lccsancom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 668
    :cond_1
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lccsancom/google/android/exoplayer2/MediaSourceList;

    .line 669
    invoke-static {v2}, Lccsancom/google/android/exoplayer2/MediaSourceList;->access$000(Lccsancom/google/android/exoplayer2/MediaSourceList;)Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v0, v3, v4}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->withParameters(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 672
    :cond_2
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget v2, v2, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v2, v2, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 673
    invoke-static {v2, v0}, Lccsancom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 674
    :cond_3
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lccsancom/google/android/exoplayer2/MediaSourceList;

    .line 675
    invoke-static {v2}, Lccsancom/google/android/exoplayer2/MediaSourceList;->access$100(Lccsancom/google/android/exoplayer2/MediaSourceList;)Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->withParameters(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 677
    :cond_4
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public onDownstreamFormatChanged(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 597
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p3}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 600
    :cond_0
    return-void
.end method

.method public onDrmKeysLoaded(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 617
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V

    .line 620
    :cond_0
    return-void
.end method

.method public onDrmKeysRemoved(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 641
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    .line 644
    :cond_0
    return-void
.end method

.method public onDrmKeysRestored(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 633
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRestored()V

    .line 636
    :cond_0
    return-void
.end method

.method public synthetic onDrmSessionAcquired(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$-CC;->$default$onDrmSessionAcquired(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public onDrmSessionAcquired(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;I)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "state"    # I

    .line 609
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0, p3}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    .line 612
    :cond_0
    return-void
.end method

.method public onDrmSessionManagerError(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "error"    # Ljava/lang/Exception;

    .line 625
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0, p3}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    .line 628
    :cond_0
    return-void
.end method

.method public onDrmSessionReleased(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 649
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    .line 652
    :cond_0
    return-void
.end method

.method public onLoadCanceled(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventData"    # Lccsancom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 564
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p3, p4}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 567
    :cond_0
    return-void
.end method

.method public onLoadCompleted(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventData"    # Lccsancom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 553
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p3, p4}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 556
    :cond_0
    return-void
.end method

.method public onLoadError(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventData"    # Lccsancom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;
    .param p5, "error"    # Ljava/io/IOException;
    .param p6, "wasCanceled"    # Z

    .line 577
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p3, p4, p5, p6}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    .line 580
    :cond_0
    return-void
.end method

.method public onLoadStarted(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventData"    # Lccsancom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 542
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p3, p4}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 545
    :cond_0
    return-void
.end method

.method public onUpstreamDiscarded(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 587
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p3}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 590
    :cond_0
    return-void
.end method
