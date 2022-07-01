.class final Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;
.super Ljava/lang/Object;
.source "OutputConsumerAdapterV30.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SeekMapAdapter"
.end annotation


# instance fields
.field private final adaptedSeekMap:Lccsanandroid/media/MediaParser$SeekMap;


# direct methods
.method public constructor <init>(Lccsanandroid/media/MediaParser$SeekMap;)V
    .locals 0
    .param p1, "adaptedSeekMap"    # Lccsanandroid/media/MediaParser$SeekMap;

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;->adaptedSeekMap:Lccsanandroid/media/MediaParser$SeekMap;

    .line 648
    return-void
.end method

.method private static asExoPlayerSeekPoint(Lccsanandroid/media/MediaParser$SeekPoint;)Lccsancom/google/android/exoplayer2/extractor/SeekPoint;
    .locals 5
    .param p0, "seekPoint"    # Lccsanandroid/media/MediaParser$SeekPoint;

    .line 678
    new-instance v0, Lccsancom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v1, p0, Lccsanandroid/media/MediaParser$SeekPoint;->timeMicros:J

    iget-wide v3, p0, Lccsanandroid/media/MediaParser$SeekPoint;->position:J

    invoke-direct {v0, v1, v2, v3, v4}, Lccsancom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 5

    .line 657
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;->adaptedSeekMap:Lccsanandroid/media/MediaParser$SeekMap;

    invoke-virtual {v0}, Lccsanandroid/media/MediaParser$SeekMap;->getDurationMicros()J

    move-result-wide v0

    .line 658
    .local v0, "durationMicros":J
    const-wide/32 v2, -0x80000000

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v2
.end method

.method public getSeekPoints(J)Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 4
    .param p1, "timeUs"    # J

    .line 664
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;->adaptedSeekMap:Lccsanandroid/media/MediaParser$SeekMap;

    .line 665
    invoke-virtual {v0, p1, p2}, Lccsanandroid/media/MediaParser$SeekMap;->getSeekPoints(J)Lccsanandroid/util/Pair;

    move-result-object v0

    .line 667
    .local v0, "seekPoints":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsanandroid/media/MediaParser$SeekPoint;Lccsanandroid/media/MediaParser$SeekPoint;>;"
    iget-object v1, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 668
    new-instance v1, Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    iget-object v2, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lccsanandroid/media/MediaParser$SeekPoint;

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;->asExoPlayerSeekPoint(Lccsanandroid/media/MediaParser$SeekPoint;)Lccsancom/google/android/exoplayer2/extractor/SeekPoint;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lccsancom/google/android/exoplayer2/extractor/SeekPoint;)V

    .local v1, "exoPlayerSeekPoints":Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    goto :goto_0

    .line 670
    .end local v1    # "exoPlayerSeekPoints":Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    :cond_0
    new-instance v1, Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    iget-object v2, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lccsanandroid/media/MediaParser$SeekPoint;

    .line 672
    invoke-static {v2}, Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;->asExoPlayerSeekPoint(Lccsanandroid/media/MediaParser$SeekPoint;)Lccsancom/google/android/exoplayer2/extractor/SeekPoint;

    move-result-object v2

    iget-object v3, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lccsanandroid/media/MediaParser$SeekPoint;

    invoke-static {v3}, Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;->asExoPlayerSeekPoint(Lccsanandroid/media/MediaParser$SeekPoint;)Lccsancom/google/android/exoplayer2/extractor/SeekPoint;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lccsancom/google/android/exoplayer2/extractor/SeekPoint;Lccsancom/google/android/exoplayer2/extractor/SeekPoint;)V

    .line 674
    .restart local v1    # "exoPlayerSeekPoints":Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    :goto_0
    return-object v1
.end method

.method public isSeekable()Z
    .locals 1

    .line 652
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;->adaptedSeekMap:Lccsanandroid/media/MediaParser$SeekMap;

    invoke-virtual {v0}, Lccsanandroid/media/MediaParser$SeekMap;->isSeekable()Z

    move-result v0

    return v0
.end method
