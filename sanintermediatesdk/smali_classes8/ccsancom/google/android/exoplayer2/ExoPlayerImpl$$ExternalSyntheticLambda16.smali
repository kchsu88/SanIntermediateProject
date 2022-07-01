.class public final synthetic Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/Player;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/Player;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda16;->f$0:Lccsancom/google/android/exoplayer2/Player;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Lccsancom/google/android/exoplayer2/util/FlagSet;)V
    .locals 1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda16;->f$0:Lccsancom/google/android/exoplayer2/Player;

    check-cast p1, Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-static {v0, p1, p2}, Lccsancom/google/android/exoplayer2/ExoPlayerImpl;->lambda$new$0(Lccsancom/google/android/exoplayer2/Player;Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/util/FlagSet;)V

    return-void
.end method
