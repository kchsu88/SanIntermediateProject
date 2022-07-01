.class public final synthetic Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/android/exoplayer2/drm/DrmSessionManagerProvider;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;

    return-void
.end method


# virtual methods
.method public final get(Lccsancom/google/android/exoplayer2/MediaItem;)Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;
    .locals 1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->lambda$setDrmSessionManager$2(Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;Lccsancom/google/android/exoplayer2/MediaItem;)Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;

    move-result-object p1

    return-object p1
.end method
