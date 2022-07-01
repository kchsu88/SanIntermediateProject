.class public final synthetic Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda11;->f$0:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda11;->f$0:I

    check-cast p1, Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayerImpl;->lambda$setRepeatMode$3(ILccsancom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method
