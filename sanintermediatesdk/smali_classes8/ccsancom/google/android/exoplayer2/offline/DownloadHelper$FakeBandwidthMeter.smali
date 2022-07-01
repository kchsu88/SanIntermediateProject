.class final Lccsancom/google/android/exoplayer2/offline/DownloadHelper$FakeBandwidthMeter;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/offline/DownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FakeBandwidthMeter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/offline/DownloadHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/offline/DownloadHelper$1;

    .line 1121
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/offline/DownloadHelper$FakeBandwidthMeter;-><init>()V

    return-void
.end method


# virtual methods
.method public addEventListener(Lccsanandroid/os/Handler;Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .locals 0
    .param p1, "eventHandler"    # Lccsanandroid/os/Handler;
    .param p2, "eventListener"    # Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    .line 1137
    return-void
.end method

.method public getBitrateEstimate()J
    .locals 2

    .line 1125
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public synthetic getTimeToFirstByteEstimateUs()J
    .locals 2

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter$-CC;->$default$getTimeToFirstByteEstimateUs(Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransferListener()Lccsancom/google/android/exoplayer2/upstream/TransferListener;
    .locals 1

    .line 1131
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeEventListener(Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .locals 0
    .param p1, "eventListener"    # Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    .line 1142
    return-void
.end method
