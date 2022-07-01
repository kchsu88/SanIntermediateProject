.class public final synthetic Lccsancom/google/android/exoplayer2/source/MediaPeriod$-CC;
.super Ljava/lang/Object;
.source "MediaPeriod.java"


# direct methods
.method public static $default$getStreamKeys(Lccsancom/google/android/exoplayer2/source/MediaPeriod;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    .line 104
    .local p1, "trackSelections":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
