.class public final synthetic Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/MediaMetadata;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda23;->f$0:Lccsancom/google/android/exoplayer2/MediaMetadata;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda23;->f$0:Lccsancom/google/android/exoplayer2/MediaMetadata;

    check-cast p1, Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updatePlaybackInfo$16(Lccsancom/google/android/exoplayer2/MediaMetadata;Lccsancom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method
