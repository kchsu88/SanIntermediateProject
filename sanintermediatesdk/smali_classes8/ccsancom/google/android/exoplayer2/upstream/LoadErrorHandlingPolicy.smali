.class public interface abstract Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
.super Ljava/lang/Object;
.source "LoadErrorHandlingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;,
        Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;,
        Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;,
        Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackType;
    }
.end annotation


# static fields
.field public static final FALLBACK_TYPE_LOCATION:I = 0x1

.field public static final FALLBACK_TYPE_TRACK:I = 0x2


# virtual methods
.method public abstract getFallbackSelectionFor(Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;
.end method

.method public abstract getMinimumLoadableRetryCount(I)I
.end method

.method public abstract getRetryDelayMsFor(Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J
.end method

.method public abstract onLoadTaskConcluded(J)V
.end method
