.class public final synthetic Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/android/exoplayer2/util/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda2;->INSTANCE:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V

    return-void
.end method
