.class public final synthetic Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/common/base/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda15;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda15;-><init>()V

    sput-object v0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda15;->INSTANCE:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda15;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lccsancom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    check-cast v0, Lccsancom/google/android/exoplayer2/LoadControl;

    return-object v0
.end method
