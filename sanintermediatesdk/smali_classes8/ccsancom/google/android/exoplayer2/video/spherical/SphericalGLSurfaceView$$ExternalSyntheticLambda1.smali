.class public final synthetic Lccsancom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

.field public final synthetic f$1:Lccsanandroid/graphics/SurfaceTexture;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;Lccsanandroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda1;->f$0:Lccsancom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iput-object p2, p0, Lccsancom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda1;->f$1:Lccsanandroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda1;->f$0:Lccsancom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda1;->f$1:Lccsanandroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->lambda$onSurfaceTextureAvailable$1$com-google-android-exoplayer2-video-spherical-SphericalGLSurfaceView(Lccsanandroid/graphics/SurfaceTexture;)V

    return-void
.end method