.class interface abstract Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "MediaCodecListCompat"
.end annotation


# virtual methods
.method public abstract getCodecCount()I
.end method

.method public abstract getCodecInfoAt(I)Lccsanandroid/media/MediaCodecInfo;
.end method

.method public abstract isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;)Z
.end method

.method public abstract isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;)Z
.end method

.method public abstract secureDecodersExplicit()Z
.end method
