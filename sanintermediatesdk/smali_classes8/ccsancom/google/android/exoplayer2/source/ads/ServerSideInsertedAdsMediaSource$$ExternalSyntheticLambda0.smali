.class public final synthetic Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;

.field public final synthetic f$1:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;

    iput-object p2, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$$ExternalSyntheticLambda0;->f$1:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$$ExternalSyntheticLambda0;->f$1:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->lambda$setAdPlaybackState$0$com-google-android-exoplayer2-source-ads-ServerSideInsertedAdsMediaSource(Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    return-void
.end method
