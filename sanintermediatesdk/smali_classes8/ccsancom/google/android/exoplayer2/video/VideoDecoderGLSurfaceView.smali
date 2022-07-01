.class public final Lccsancom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;
.super Lccsanandroid/opengl/GLSurfaceView;
.source "VideoDecoderGLSurfaceView.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;
    }
.end annotation


# instance fields
.field private final renderer:Lccsancom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 61
    invoke-direct {p0, p1, p2}, Lccsanandroid/opengl/GLSurfaceView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 62
    new-instance v0, Lccsancom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;

    invoke-direct {v0, p0}, Lccsancom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;-><init>(Lccsanandroid/opengl/GLSurfaceView;)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->renderer:Lccsancom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;

    .line 63
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 64
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 65
    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->setRenderer(Lccsanandroid/opengl/GLSurfaceView$Renderer;)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->setRenderMode(I)V

    .line 67
    return-void
.end method


# virtual methods
.method public getVideoDecoderOutputBufferRenderer()Lccsancom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    return-object p0
.end method

.method public setOutputBuffer(Lccsancom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;)V
    .locals 1
    .param p1, "outputBuffer"    # Lccsancom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    .line 71
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->renderer:Lccsancom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->setOutputBuffer(Lccsancom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;)V

    .line 72
    return-void
.end method
