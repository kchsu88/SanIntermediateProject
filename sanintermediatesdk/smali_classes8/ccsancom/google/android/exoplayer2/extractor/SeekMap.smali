.class public interface abstract Lccsancom/google/android/exoplayer2/extractor/SeekMap;
.super Ljava/lang/Object;
.source "SeekMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;,
        Lccsancom/google/android/exoplayer2/extractor/SeekMap$Unseekable;
    }
.end annotation


# virtual methods
.method public abstract getDurationUs()J
.end method

.method public abstract getSeekPoints(J)Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
.end method

.method public abstract isSeekable()Z
.end method
