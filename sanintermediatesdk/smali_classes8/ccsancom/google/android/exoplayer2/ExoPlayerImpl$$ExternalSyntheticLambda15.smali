.class public final synthetic Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/android/exoplayer2/util/ListenerSet$Event;


# static fields
.field public static final synthetic INSTANCE:Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda15;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda15;-><init>()V

    sput-object v0, Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda15;->INSTANCE:Lccsancom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda15;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lccsancom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {p1}, Lccsancom/google/android/exoplayer2/Player$EventListener;->onSeekProcessed()V

    return-void
.end method
