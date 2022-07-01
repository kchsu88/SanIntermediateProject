.class final Lccsancom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/video/VideoFrameMetadataListener;
.implements Lccsancom/google/android/exoplayer2/video/spherical/CameraMotionListener;
.implements Lccsancom/google/android/exoplayer2/PlayerMessage$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FrameMetadataListener"
.end annotation


# static fields
.field public static final MSG_SET_CAMERA_MOTION_LISTENER:I = 0x8

.field public static final MSG_SET_SPHERICAL_SURFACE_VIEW:I = 0x2710

.field public static final MSG_SET_VIDEO_FRAME_METADATA_LISTENER:I = 0x7


# instance fields
.field private cameraMotionListener:Lccsancom/google/android/exoplayer2/video/spherical/CameraMotionListener;

.field private internalCameraMotionListener:Lccsancom/google/android/exoplayer2/video/spherical/CameraMotionListener;

.field private internalVideoFrameMetadataListener:Lccsancom/google/android/exoplayer2/video/VideoFrameMetadataListener;

.field private videoFrameMetadataListener:Lccsancom/google/android/exoplayer2/video/VideoFrameMetadataListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/SimpleExoPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/SimpleExoPlayer$1;

    .line 2098
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;

    .line 2118
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2126
    :sswitch_0
    move-object v0, p2

    check-cast v0, Lccsancom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 2127
    .local v0, "surfaceView":Lccsancom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;
    if-nez v0, :cond_0

    .line 2128
    const/4 v1, 0x0

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->internalVideoFrameMetadataListener:Lccsancom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    .line 2129
    iput-object v1, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->internalCameraMotionListener:Lccsancom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    goto :goto_0

    .line 2131
    :cond_0
    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->getVideoFrameMetadataListener()Lccsancom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->internalVideoFrameMetadataListener:Lccsancom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    .line 2132
    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->getCameraMotionListener()Lccsancom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->internalCameraMotionListener:Lccsancom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    .line 2134
    goto :goto_0

    .line 2123
    .end local v0    # "surfaceView":Lccsancom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;
    :sswitch_1
    move-object v0, p2

    check-cast v0, Lccsancom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->cameraMotionListener:Lccsancom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    .line 2124
    goto :goto_0

    .line 2120
    :sswitch_2
    move-object v0, p2

    check-cast v0, Lccsancom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->videoFrameMetadataListener:Lccsancom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    .line 2121
    nop

    .line 2147
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_2
        0x8 -> :sswitch_1
        0x2710 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCameraMotion(J[F)V
    .locals 1
    .param p1, "timeUs"    # J
    .param p3, "rotation"    # [F

    .line 2171
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->internalCameraMotionListener:Lccsancom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_0

    .line 2172
    invoke-interface {v0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/video/spherical/CameraMotionListener;->onCameraMotion(J[F)V

    .line 2174
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->cameraMotionListener:Lccsancom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_1

    .line 2175
    invoke-interface {v0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/video/spherical/CameraMotionListener;->onCameraMotion(J[F)V

    .line 2177
    :cond_1
    return-void
.end method

.method public onCameraMotionReset()V
    .locals 1

    .line 2181
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->internalCameraMotionListener:Lccsancom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_0

    .line 2182
    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/video/spherical/CameraMotionListener;->onCameraMotionReset()V

    .line 2184
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->cameraMotionListener:Lccsancom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_1

    .line 2185
    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/video/spherical/CameraMotionListener;->onCameraMotionReset()V

    .line 2187
    :cond_1
    return-void
.end method

.method public onVideoFrameAboutToBeRendered(JJLccsancom/google/android/exoplayer2/Format;Lccsanandroid/media/MediaFormat;)V
    .locals 8
    .param p1, "presentationTimeUs"    # J
    .param p3, "releaseTimeNs"    # J
    .param p5, "format"    # Lccsancom/google/android/exoplayer2/Format;
    .param p6, "mediaFormat"    # Lccsanandroid/media/MediaFormat;

    .line 2157
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->internalVideoFrameMetadataListener:Lccsancom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_0

    .line 2158
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lccsancom/google/android/exoplayer2/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLccsancom/google/android/exoplayer2/Format;Lccsanandroid/media/MediaFormat;)V

    .line 2161
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->videoFrameMetadataListener:Lccsancom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eqz v1, :cond_1

    .line 2162
    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lccsancom/google/android/exoplayer2/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLccsancom/google/android/exoplayer2/Format;Lccsanandroid/media/MediaFormat;)V

    .line 2165
    :cond_1
    return-void
.end method
