.class public final synthetic Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field public final synthetic f$1:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iput-object p2, p0, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$1:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$1:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->lambda$drmKeysLoaded$1$com-google-android-exoplayer2-drm-DrmSessionEventListener$EventDispatcher(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    return-void
.end method
