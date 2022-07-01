.class public final Lccsancom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;
.super Ljava/lang/Object;
.source "RandomTrackSelection.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/trackselection/RandomTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;->random:Ljava/util/Random;

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "seed"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/Random;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;->random:Ljava/util/Random;

    .line 46
    return-void
.end method


# virtual methods
.method public createTrackSelections([Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/Timeline;)[Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .locals 1
    .param p1, "definitions"    # [Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    .param p2, "bandwidthMeter"    # Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;
    .param p3, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p4, "timeline"    # Lccsancom/google/android/exoplayer2/Timeline;

    .line 54
    new-instance v0, Lccsancom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lccsancom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory$$ExternalSyntheticLambda0;-><init>(Lccsancom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;)V

    invoke-static {p1, v0}, Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionUtil;->createTrackSelectionsForDefinitions([Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;)[Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$createTrackSelections$0$com-google-android-exoplayer2-trackselection-RandomTrackSelection$Factory(Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .locals 5
    .param p1, "definition"    # Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    .line 57
    new-instance v0, Lccsancom/google/android/exoplayer2/trackselection/RandomTrackSelection;

    iget-object v1, p1, Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lccsancom/google/android/exoplayer2/source/TrackGroup;

    iget-object v2, p1, Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    iget v3, p1, Lccsancom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->type:I

    iget-object v4, p0, Lccsancom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;->random:Ljava/util/Random;

    invoke-direct {v0, v1, v2, v3, v4}, Lccsancom/google/android/exoplayer2/trackselection/RandomTrackSelection;-><init>(Lccsancom/google/android/exoplayer2/source/TrackGroup;[IILjava/util/Random;)V

    return-object v0
.end method
