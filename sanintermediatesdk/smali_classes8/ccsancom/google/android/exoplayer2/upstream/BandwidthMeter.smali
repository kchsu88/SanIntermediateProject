.class public interface abstract Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;
.super Ljava/lang/Object;
.source "BandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;
    }
.end annotation


# virtual methods
.method public abstract addEventListener(Lccsanandroid/os/Handler;Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
.end method

.method public abstract getBitrateEstimate()J
.end method

.method public abstract getTimeToFirstByteEstimateUs()J
.end method

.method public abstract getTransferListener()Lccsancom/google/android/exoplayer2/upstream/TransferListener;
.end method

.method public abstract removeEventListener(Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
.end method
