.class public interface abstract Lccsancom/google/android/exoplayer2/util/HandlerWrapper;
.super Ljava/lang/Object;
.source "HandlerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/util/HandlerWrapper$Message;
    }
.end annotation


# virtual methods
.method public abstract getLooper()Lccsanandroid/os/Looper;
.end method

.method public abstract hasMessages(I)Z
.end method

.method public abstract obtainMessage(I)Lccsancom/google/android/exoplayer2/util/HandlerWrapper$Message;
.end method

.method public abstract obtainMessage(III)Lccsancom/google/android/exoplayer2/util/HandlerWrapper$Message;
.end method

.method public abstract obtainMessage(IIILjava/lang/Object;)Lccsancom/google/android/exoplayer2/util/HandlerWrapper$Message;
.end method

.method public abstract obtainMessage(ILjava/lang/Object;)Lccsancom/google/android/exoplayer2/util/HandlerWrapper$Message;
.end method

.method public abstract post(Ljava/lang/Runnable;)Z
.end method

.method public abstract postAtFrontOfQueue(Ljava/lang/Runnable;)Z
.end method

.method public abstract postDelayed(Ljava/lang/Runnable;J)Z
.end method

.method public abstract removeCallbacksAndMessages(Ljava/lang/Object;)V
.end method

.method public abstract removeMessages(I)V
.end method

.method public abstract sendEmptyMessage(I)Z
.end method

.method public abstract sendEmptyMessageAtTime(IJ)Z
.end method

.method public abstract sendEmptyMessageDelayed(II)Z
.end method

.method public abstract sendMessageAtFrontOfQueue(Lccsancom/google/android/exoplayer2/util/HandlerWrapper$Message;)Z
.end method
