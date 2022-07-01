.class public final synthetic Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lccsancom/google/android/exoplayer2/Player$PositionInfo;

.field public final synthetic f$2:Lccsancom/google/android/exoplayer2/Player$PositionInfo;


# direct methods
.method public synthetic constructor <init>(ILccsancom/google/android/exoplayer2/Player$PositionInfo;Lccsancom/google/android/exoplayer2/Player$PositionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda18;->f$0:I

    iput-object p2, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda18;->f$1:Lccsancom/google/android/exoplayer2/Player$PositionInfo;

    iput-object p3, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda18;->f$2:Lccsancom/google/android/exoplayer2/Player$PositionInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda18;->f$0:I

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda18;->f$1:Lccsancom/google/android/exoplayer2/Player$PositionInfo;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda18;->f$2:Lccsancom/google/android/exoplayer2/Player$PositionInfo;

    check-cast p1, Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-static {v0, v1, v2, p1}, Lccsancom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updatePlaybackInfo$10(ILccsancom/google/android/exoplayer2/Player$PositionInfo;Lccsancom/google/android/exoplayer2/Player$PositionInfo;Lccsancom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method
