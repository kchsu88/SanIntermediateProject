.class public interface abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ShuffleOrder;
.super Ljava/lang/Object;
.source "ShuffleOrder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;
    }
.end annotation


# virtual methods
.method public abstract cloneAndClear()Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ShuffleOrder;
.end method

.method public abstract cloneAndInsert(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ShuffleOrder;
.end method

.method public abstract cloneAndRemove(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ShuffleOrder;
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
