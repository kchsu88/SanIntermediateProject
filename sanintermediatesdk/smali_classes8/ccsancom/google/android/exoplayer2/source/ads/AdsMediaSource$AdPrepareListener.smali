.class final Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdPrepareListener"
.end annotation


# instance fields
.field private final adUri:Lccsanandroid/net/Uri;

.field final synthetic this$0:Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;Lccsanandroid/net/Uri;)V
    .locals 0
    .param p2, "adUri"    # Lccsanandroid/net/Uri;

    .line 410
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->adUri:Lccsanandroid/net/Uri;

    .line 412
    return-void
.end method


# virtual methods
.method public synthetic lambda$onPrepareComplete$0$com-google-android-exoplayer2-source-ads-AdsMediaSource$AdPrepareListener(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 4
    .param p1, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 418
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$400(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lccsancom/google/android/exoplayer2/source/ads/AdsLoader;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget v2, p1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, p1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-interface {v0, v1, v2, v3}, Lccsancom/google/android/exoplayer2/source/ads/AdsLoader;->handlePrepareComplete(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;II)V

    return-void
.end method

.method public synthetic lambda$onPrepareError$1$com-google-android-exoplayer2-source-ads-AdsMediaSource$AdPrepareListener(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V
    .locals 4
    .param p1, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "exception"    # Ljava/io/IOException;

    .line 437
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$400(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lccsancom/google/android/exoplayer2/source/ads/AdsLoader;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget v2, p1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, p1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-interface {v0, v1, v2, v3, p2}, Lccsancom/google/android/exoplayer2/source/ads/AdsLoader;->handlePrepareError(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;IILjava/io/IOException;)V

    return-void
.end method

.method public onPrepareComplete(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 2
    .param p1, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 416
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$200(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lccsanandroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda0;-><init>(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 422
    return-void
.end method

.method public onPrepareError(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V
    .locals 8
    .param p1, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "exception"    # Ljava/io/IOException;

    .line 426
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$300(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    new-instance v7, Lccsancom/google/android/exoplayer2/source/LoadEventInfo;

    .line 429
    invoke-static {}, Lccsancom/google/android/exoplayer2/source/LoadEventInfo;->getNewId()J

    move-result-wide v2

    new-instance v4, Lccsancom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->adUri:Lccsanandroid/net/Uri;

    invoke-direct {v4, v1}, Lccsancom/google/android/exoplayer2/upstream/DataSpec;-><init>(Lccsanandroid/net/Uri;)V

    .line 431
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lccsancom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLccsancom/google/android/exoplayer2/upstream/DataSpec;J)V

    .line 433
    invoke-static {p2}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;->createForAd(Ljava/lang/Exception;)Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;

    move-result-object v1

    .line 427
    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v0, v7, v2, v1, v3}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lccsancom/google/android/exoplayer2/source/LoadEventInfo;ILjava/io/IOException;Z)V

    .line 435
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$200(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lccsanandroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda1;-><init>(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 442
    return-void
.end method
