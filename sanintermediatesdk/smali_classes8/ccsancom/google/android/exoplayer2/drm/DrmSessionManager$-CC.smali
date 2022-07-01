.class public final synthetic Lccsancom/google/android/exoplayer2/drm/DrmSessionManager$-CC;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# direct methods
.method public static $default$preacquireSession(Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;Lccsanandroid/os/Looper;Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lccsancom/google/android/exoplayer2/Format;)Lccsancom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;
    .locals 1
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p1, "playbackLooper"    # Lccsanandroid/os/Looper;
    .param p2, "eventDispatcher"    # Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .param p3, "format"    # Lccsancom/google/android/exoplayer2/Format;

    .line 145
    sget-object v0, Lccsancom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;->EMPTY:Lccsancom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;

    return-object v0
.end method

.method public static $default$prepare(Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 96
    return-void
.end method

.method public static $default$release(Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 101
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;->DRM_UNSUPPORTED:Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;

    return-void
.end method

.method public static getDummyDrmSessionManager()Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    sget-object v0, Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;->DRM_UNSUPPORTED:Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;

    return-object v0
.end method
