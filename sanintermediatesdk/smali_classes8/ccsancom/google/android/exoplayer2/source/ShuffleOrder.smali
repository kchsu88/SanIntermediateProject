.class public interface abstract Lccsancom/google/android/exoplayer2/source/ShuffleOrder;
.super Ljava/lang/Object;
.source "ShuffleOrder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;,
        Lccsancom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;
    }
.end annotation


# virtual methods
.method public abstract cloneAndClear()Lccsancom/google/android/exoplayer2/source/ShuffleOrder;
.end method

.method public abstract cloneAndInsert(II)Lccsancom/google/android/exoplayer2/source/ShuffleOrder;
.end method

.method public abstract cloneAndRemove(II)Lccsancom/google/android/exoplayer2/source/ShuffleOrder;
.end method

.method public abstract getFirstIndex()I
.end method

.method public abstract getLastIndex()I
.end method

.method public abstract getLength()I
.end method

.method public abstract getNextIndex(I)I
.end method

.method public abstract getPreviousIndex(I)I
.end method
