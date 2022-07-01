.class public final synthetic Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/android/exoplayer2/util/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Exception;

    check-cast p1, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;->lambda$onError$1(Ljava/lang/Exception;Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    return-void
.end method
