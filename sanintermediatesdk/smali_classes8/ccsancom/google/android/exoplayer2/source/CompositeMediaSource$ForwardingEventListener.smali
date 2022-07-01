.class final Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;
.implements Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ForwardingEventListener"
.end annotation


# instance fields
.field private drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private final id:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field final synthetic this$0:Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 224
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    .local p2, "id":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->this$0:Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->createEventDispatcher(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 226
    invoke-virtual {p1, v0}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->createDrmEventDispatcher(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 227
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    .line 228
    return-void
.end method

.method private maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z
    .locals 5
    .param p1, "childWindowIndex"    # I
    .param p2, "childMediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 347
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    const/4 v0, 0x0

    .line 348
    .local v0, "mediaPeriodId":Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    if-eqz p2, :cond_0

    .line 349
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->this$0:Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    invoke-virtual {v1, v2, p2}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    .line 350
    if-nez v0, :cond_0

    .line 352
    const/4 v1, 0x0

    return v1

    .line 355
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->this$0:Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I

    move-result v1

    .line 356
    .local v1, "windowIndex":I
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v2, v2, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, v2, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 357
    invoke-static {v2, v0}, Lccsancom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 358
    :cond_1
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->this$0:Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;

    const-wide/16 v3, 0x0

    .line 359
    invoke-virtual {v2, v1, v0, v3, v4}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->createEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 361
    :cond_2
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget v2, v2, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v2, v2, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 362
    invoke-static {v2, v0}, Lccsancom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 363
    :cond_3
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->this$0:Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;

    invoke-virtual {v2, v1, v0}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->createDrmEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 365
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method private maybeUpdateMediaLoadData(Lccsancom/google/android/exoplayer2/source/MediaLoadData;)Lccsancom/google/android/exoplayer2/source/MediaLoadData;
    .locals 17
    .param p1, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 369
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->this$0:Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;

    iget-object v3, v0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    iget-wide v4, v1, Lccsancom/google/android/exoplayer2/source/MediaLoadData;->mediaStartTimeMs:J

    invoke-virtual {v2, v3, v4, v5}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->getMediaTimeForChildMediaTime(Ljava/lang/Object;J)J

    move-result-wide v2

    .line 370
    .local v2, "mediaStartTimeMs":J
    iget-object v4, v0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->this$0:Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;

    iget-object v5, v0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    iget-wide v6, v1, Lccsancom/google/android/exoplayer2/source/MediaLoadData;->mediaEndTimeMs:J

    invoke-virtual {v4, v5, v6, v7}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->getMediaTimeForChildMediaTime(Ljava/lang/Object;J)J

    move-result-wide v4

    .line 371
    .local v4, "mediaEndTimeMs":J
    iget-wide v6, v1, Lccsancom/google/android/exoplayer2/source/MediaLoadData;->mediaStartTimeMs:J

    cmp-long v8, v2, v6

    if-nez v8, :cond_0

    iget-wide v6, v1, Lccsancom/google/android/exoplayer2/source/MediaLoadData;->mediaEndTimeMs:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 373
    return-object v1

    .line 375
    :cond_0
    new-instance v16, Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    iget v7, v1, Lccsancom/google/android/exoplayer2/source/MediaLoadData;->dataType:I

    iget v8, v1, Lccsancom/google/android/exoplayer2/source/MediaLoadData;->trackType:I

    iget-object v9, v1, Lccsancom/google/android/exoplayer2/source/MediaLoadData;->trackFormat:Lccsancom/google/android/exoplayer2/Format;

    iget v10, v1, Lccsancom/google/android/exoplayer2/source/MediaLoadData;->trackSelectionReason:I

    iget-object v11, v1, Lccsancom/google/android/exoplayer2/source/MediaLoadData;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v6, v16

    move-wide v12, v2

    move-wide v14, v4

    invoke-direct/range {v6 .. v15}, Lccsancom/google/android/exoplayer2/source/MediaLoadData;-><init>(IILccsancom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    return-object v16
.end method


# virtual methods
.method public onDownstreamFormatChanged(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 293
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p0, p3}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Lccsancom/google/android/exoplayer2/source/MediaLoadData;)Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 296
    :cond_0
    return-void
.end method

.method public onDrmKeysLoaded(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 310
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V

    .line 313
    :cond_0
    return-void
.end method

.method public onDrmKeysRemoved(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 332
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    .line 335
    :cond_0
    return-void
.end method

.method public onDrmKeysRestored(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 325
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRestored()V

    .line 328
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

    .line 303
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0, p3}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    .line 306
    :cond_0
    return-void
.end method

.method public onDrmSessionManagerError(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "error"    # Ljava/lang/Exception;

    .line 318
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0, p3}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    .line 321
    :cond_0
    return-void
.end method

.method public onDrmSessionReleased(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 339
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    .line 342
    :cond_0
    return-void
.end method

.method public onLoadCanceled(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventData"    # Lccsancom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 262
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 264
    invoke-direct {p0, p4}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Lccsancom/google/android/exoplayer2/source/MediaLoadData;)Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object v1

    .line 263
    invoke-virtual {v0, p3, v1}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 266
    :cond_0
    return-void
.end method

.method public onLoadCompleted(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventData"    # Lccsancom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 250
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 252
    invoke-direct {p0, p4}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Lccsancom/google/android/exoplayer2/source/MediaLoadData;)Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object v1

    .line 251
    invoke-virtual {v0, p3, v1}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 254
    :cond_0
    return-void
.end method

.method public onLoadError(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventData"    # Lccsancom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;
    .param p5, "error"    # Ljava/io/IOException;
    .param p6, "wasCanceled"    # Z

    .line 276
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 278
    invoke-direct {p0, p4}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Lccsancom/google/android/exoplayer2/source/MediaLoadData;)Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object v1

    .line 277
    invoke-virtual {v0, p3, v1, p5, p6}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    .line 280
    :cond_0
    return-void
.end method

.method public onLoadStarted(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventData"    # Lccsancom/google/android/exoplayer2/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 238
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 240
    invoke-direct {p0, p4}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Lccsancom/google/android/exoplayer2/source/MediaLoadData;)Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object v1

    .line 239
    invoke-virtual {v0, p3, v1}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 242
    :cond_0
    return-void
.end method

.method public onUpstreamDiscarded(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    .line 285
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p0, p3}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Lccsancom/google/android/exoplayer2/source/MediaLoadData;)Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 288
    :cond_0
    return-void
.end method
