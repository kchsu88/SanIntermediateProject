.class public final synthetic Lccsancom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsanandroid/media/MediaDrm$OnEventListener;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/drm/FrameworkMediaDrm;

.field public final synthetic f$1:Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/drm/FrameworkMediaDrm;Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    iput-object p2, p0, Lccsancom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda0;->f$1:Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;

    return-void
.end method


# virtual methods
.method public final onEvent(Lccsanandroid/media/MediaDrm;[BII[B)V
    .locals 7

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda0;->f$1:Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lccsancom/google/android/exoplayer2/drm/FrameworkMediaDrm;->lambda$setOnEventListener$1$com-google-android-exoplayer2-drm-FrameworkMediaDrm(Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;Lccsanandroid/media/MediaDrm;[BII[B)V

    return-void
.end method
