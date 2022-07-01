.class public final synthetic Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/PlaybackInfo;

.field public final synthetic f$1:Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionArray;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/PlaybackInfo;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$0:Lccsancom/google/android/exoplayer2/PlaybackInfo;

    iput-object p2, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$1:Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$0:Lccsancom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$1:Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    check-cast p1, Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-static {v0, v1, p1}, Lccsancom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updatePlaybackInfo$14(Lccsancom/google/android/exoplayer2/PlaybackInfo;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionArray;Lccsancom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method
