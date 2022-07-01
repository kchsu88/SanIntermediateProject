.class public interface abstract Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioProcessorChain"
.end annotation


# virtual methods
.method public abstract applyPlaybackParameters(Lccsancom/google/android/exoplayer2/PlaybackParameters;)Lccsancom/google/android/exoplayer2/PlaybackParameters;
.end method

.method public abstract applySkipSilenceEnabled(Z)Z
.end method

.method public abstract getAudioProcessors()[Lccsancom/google/android/exoplayer2/audio/AudioProcessor;
.end method

.method public abstract getMediaDuration(J)J
.end method

.method public abstract getSkippedOutputFrameCount()J
.end method
