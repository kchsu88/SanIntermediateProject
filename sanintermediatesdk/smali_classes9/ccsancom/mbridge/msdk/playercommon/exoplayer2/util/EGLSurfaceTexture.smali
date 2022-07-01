.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;
.super Ljava/lang/Object;
.source "EGLSurfaceTexture.java"

# interfaces
.implements Lccsanandroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$GlException;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$SecureMode;
    }
.end annotation


# static fields
.field private static final EGL_CONFIG_ATTRIBUTES:[I

.field private static final EGL_PROTECTED_CONTENT_EXT:I = 0x32c0

.field public static final SECURE_MODE_NONE:I = 0x0

.field public static final SECURE_MODE_PROTECTED_PBUFFER:I = 0x2

.field public static final SECURE_MODE_SURFACELESS_CONTEXT:I = 0x1


# instance fields
.field private context:Lccsanandroid/opengl/EGLContext;

.field private display:Lccsanandroid/opengl/EGLDisplay;

.field private final handler:Lccsanandroid/os/Handler;

.field private surface:Lccsanandroid/opengl/EGLSurface;

.field private texture:Lccsanandroid/graphics/SurfaceTexture;

.field private final textureIdHolder:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->EGL_CONFIG_ATTRIBUTES:[I

    return-void

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
        0x3038
    .end array-data
.end method

.method public constructor <init>(Lccsanandroid/os/Handler;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->handler:Lccsanandroid/os/Handler;

    .line 86
    const/4 p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->textureIdHolder:[I

    .line 87
    return-void
.end method

.method private static chooseEGLConfig(Lccsanandroid/opengl/EGLDisplay;)Lccsanandroid/opengl/EGLConfig;
    .locals 11

    .line 174
    const/4 v0, 0x1

    new-array v9, v0, [Lccsanandroid/opengl/EGLConfig;

    .line 175
    new-array v10, v0, [I

    .line 176
    sget-object v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->EGL_CONFIG_ATTRIBUTES:[I

    .line 177
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v4, v9

    move-object v7, v10

    invoke-static/range {v1 .. v8}, Lccsanandroid/opengl/EGL14;->eglChooseConfig(Lccsanandroid/opengl/EGLDisplay;[II[Lccsanandroid/opengl/EGLConfig;II[II)Z

    move-result p0

    .line 186
    const/4 v1, 0x0

    if-eqz p0, :cond_0

    aget v2, v10, v1

    if-lez v2, :cond_0

    aget-object v2, v9, v1

    if-eqz v2, :cond_0

    .line 193
    aget-object p0, v9, v1

    return-object p0

    .line 187
    :cond_0
    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$GlException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 190
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v1

    aget p0, v10, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v0

    const/4 p0, 0x2

    aget-object v0, v9, v1

    aput-object v0, v3, p0

    .line 188
    const-string p0, "eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s"

    invoke-static {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$1;)V

    throw v2
.end method

.method private static createEGLContext(Lccsanandroid/opengl/EGLDisplay;Lccsanandroid/opengl/EGLConfig;I)Lccsanandroid/opengl/EGLContext;
    .locals 2

    .line 199
    if-nez p2, :cond_0

    .line 200
    const/4 p2, 0x3

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    goto :goto_0

    .line 202
    :cond_0
    const/4 p2, 0x5

    new-array p2, p2, [I

    fill-array-data p2, :array_1

    .line 211
    :goto_0
    sget-object v0, Lccsanandroid/opengl/EGL14;->EGL_NO_CONTEXT:Lccsanandroid/opengl/EGLContext;

    const/4 v1, 0x0

    .line 212
    invoke-static {p0, p1, v0, p2, v1}, Lccsanandroid/opengl/EGL14;->eglCreateContext(Lccsanandroid/opengl/EGLDisplay;Lccsanandroid/opengl/EGLConfig;Lccsanandroid/opengl/EGLContext;[II)Lccsanandroid/opengl/EGLContext;

    move-result-object p0

    .line 214
    if-eqz p0, :cond_1

    .line 217
    return-object p0

    .line 215
    :cond_1
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$GlException;

    const/4 p1, 0x0

    const-string p2, "eglCreateContext failed"

    invoke-direct {p0, p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$1;)V

    throw p0

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x32c0
        0x1
        0x3038
    .end array-data
.end method

.method private static createEGLSurface(Lccsanandroid/opengl/EGLDisplay;Lccsanandroid/opengl/EGLConfig;Lccsanandroid/opengl/EGLContext;I)Lccsanandroid/opengl/EGLSurface;
    .locals 2

    .line 223
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 224
    sget-object p1, Lccsanandroid/opengl/EGL14;->EGL_NO_SURFACE:Lccsanandroid/opengl/EGLSurface;

    goto :goto_1

    .line 227
    :cond_0
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 228
    const/4 p3, 0x7

    new-array p3, p3, [I

    fill-array-data p3, :array_0

    goto :goto_0

    .line 239
    :cond_1
    const/4 p3, 0x5

    new-array p3, p3, [I

    fill-array-data p3, :array_1

    .line 246
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, p1, p3, v1}, Lccsanandroid/opengl/EGL14;->eglCreatePbufferSurface(Lccsanandroid/opengl/EGLDisplay;Lccsanandroid/opengl/EGLConfig;[II)Lccsanandroid/opengl/EGLSurface;

    move-result-object p1

    .line 247
    if-eqz p1, :cond_3

    .line 252
    :goto_1
    nop

    .line 253
    invoke-static {p0, p1, p1, p2}, Lccsanandroid/opengl/EGL14;->eglMakeCurrent(Lccsanandroid/opengl/EGLDisplay;Lccsanandroid/opengl/EGLSurface;Lccsanandroid/opengl/EGLSurface;Lccsanandroid/opengl/EGLContext;)Z

    move-result p0

    .line 254
    if-eqz p0, :cond_2

    .line 257
    return-object p1

    .line 255
    :cond_2
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$GlException;

    const-string p1, "eglMakeCurrent failed"

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$1;)V

    throw p0

    .line 248
    :cond_3
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$GlException;

    const-string p1, "eglCreatePbufferSurface failed"

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$1;)V

    throw p0

    :array_0
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x32c0
        0x1
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data
.end method

.method private static generateTextureIds([I)V
    .locals 3

    .line 261
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lccsanandroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 262
    invoke-static {}, Lccsanandroid/opengl/GLES20;->glGetError()I

    move-result p0

    .line 263
    if-nez p0, :cond_0

    .line 266
    return-void

    .line 264
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$GlException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glGenTextures failed. Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$1;)V

    throw v0
.end method

.method private static getDefaultDisplay()Lccsanandroid/opengl/EGLDisplay;
    .locals 5

    .line 159
    const/4 v0, 0x0

    invoke-static {v0}, Lccsanandroid/opengl/EGL14;->eglGetDisplay(I)Lccsanandroid/opengl/EGLDisplay;

    move-result-object v1

    .line 160
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 164
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 165
    const/4 v4, 0x1

    .line 166
    invoke-static {v1, v3, v0, v3, v4}, Lccsanandroid/opengl/EGL14;->eglInitialize(Lccsanandroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    .line 167
    if-eqz v0, :cond_0

    .line 170
    return-object v1

    .line 168
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$GlException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$1;)V

    throw v0

    .line 161
    :cond_1
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$GlException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture$1;)V

    throw v0
.end method


# virtual methods
.method public final getSurfaceTexture()Lccsanandroid/graphics/SurfaceTexture;
    .locals 1

    .line 139
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->texture:Lccsanandroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public final init(I)V
    .locals 3

    .line 95
    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->getDefaultDisplay()Lccsanandroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->display:Lccsanandroid/opengl/EGLDisplay;

    .line 96
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->chooseEGLConfig(Lccsanandroid/opengl/EGLDisplay;)Lccsanandroid/opengl/EGLConfig;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->display:Lccsanandroid/opengl/EGLDisplay;

    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->createEGLContext(Lccsanandroid/opengl/EGLDisplay;Lccsanandroid/opengl/EGLConfig;I)Lccsanandroid/opengl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->context:Lccsanandroid/opengl/EGLContext;

    .line 98
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->display:Lccsanandroid/opengl/EGLDisplay;

    invoke-static {v2, v0, v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->createEGLSurface(Lccsanandroid/opengl/EGLDisplay;Lccsanandroid/opengl/EGLConfig;Lccsanandroid/opengl/EGLContext;I)Lccsanandroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->surface:Lccsanandroid/opengl/EGLSurface;

    .line 99
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->textureIdHolder:[I

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->generateTextureIds([I)V

    .line 100
    new-instance p1, Lccsanandroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->textureIdHolder:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p1, v0}, Lccsanandroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->texture:Lccsanandroid/graphics/SurfaceTexture;

    .line 101
    invoke-virtual {p1, p0}, Lccsanandroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Lccsanandroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 102
    return-void
.end method

.method public final onFrameAvailable(Lccsanandroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 146
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {p1, p0}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    return-void
.end method

.method public final release()V
    .locals 7

    .line 107
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p0}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    const/16 v0, 0x13

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->texture:Lccsanandroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v2}, Lccsanandroid/graphics/SurfaceTexture;->release()V

    .line 111
    const/4 v2, 0x1

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->textureIdHolder:[I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lccsanandroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->display:Lccsanandroid/opengl/EGLDisplay;

    if-eqz v2, :cond_1

    sget-object v3, Lccsanandroid/opengl/EGL14;->EGL_NO_DISPLAY:Lccsanandroid/opengl/EGLDisplay;

    invoke-virtual {v2, v3}, Lccsanandroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->display:Lccsanandroid/opengl/EGLDisplay;

    sget-object v3, Lccsanandroid/opengl/EGL14;->EGL_NO_SURFACE:Lccsanandroid/opengl/EGLSurface;

    sget-object v4, Lccsanandroid/opengl/EGL14;->EGL_NO_SURFACE:Lccsanandroid/opengl/EGLSurface;

    sget-object v5, Lccsanandroid/opengl/EGL14;->EGL_NO_CONTEXT:Lccsanandroid/opengl/EGLContext;

    invoke-static {v2, v3, v4, v5}, Lccsanandroid/opengl/EGL14;->eglMakeCurrent(Lccsanandroid/opengl/EGLDisplay;Lccsanandroid/opengl/EGLSurface;Lccsanandroid/opengl/EGLSurface;Lccsanandroid/opengl/EGLContext;)Z

    .line 118
    :cond_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->surface:Lccsanandroid/opengl/EGLSurface;

    if-eqz v2, :cond_2

    sget-object v3, Lccsanandroid/opengl/EGL14;->EGL_NO_SURFACE:Lccsanandroid/opengl/EGLSurface;

    invoke-virtual {v2, v3}, Lccsanandroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->display:Lccsanandroid/opengl/EGLDisplay;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->surface:Lccsanandroid/opengl/EGLSurface;

    invoke-static {v2, v3}, Lccsanandroid/opengl/EGL14;->eglDestroySurface(Lccsanandroid/opengl/EGLDisplay;Lccsanandroid/opengl/EGLSurface;)Z

    .line 121
    :cond_2
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->context:Lccsanandroid/opengl/EGLContext;

    if-eqz v2, :cond_3

    .line 122
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->display:Lccsanandroid/opengl/EGLDisplay;

    invoke-static {v3, v2}, Lccsanandroid/opengl/EGL14;->eglDestroyContext(Lccsanandroid/opengl/EGLDisplay;Lccsanandroid/opengl/EGLContext;)Z

    .line 125
    :cond_3
    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    if-lt v2, v0, :cond_4

    .line 126
    invoke-static {}, Lccsanandroid/opengl/EGL14;->eglReleaseThread()Z

    .line 128
    :cond_4
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->display:Lccsanandroid/opengl/EGLDisplay;

    .line 129
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->context:Lccsanandroid/opengl/EGLContext;

    .line 130
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->surface:Lccsanandroid/opengl/EGLSurface;

    .line 131
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->texture:Lccsanandroid/graphics/SurfaceTexture;

    .line 132
    nop

    .line 133
    return-void

    .line 114
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->display:Lccsanandroid/opengl/EGLDisplay;

    if-eqz v3, :cond_5

    sget-object v4, Lccsanandroid/opengl/EGL14;->EGL_NO_DISPLAY:Lccsanandroid/opengl/EGLDisplay;

    invoke-virtual {v3, v4}, Lccsanandroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 115
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->display:Lccsanandroid/opengl/EGLDisplay;

    sget-object v4, Lccsanandroid/opengl/EGL14;->EGL_NO_SURFACE:Lccsanandroid/opengl/EGLSurface;

    sget-object v5, Lccsanandroid/opengl/EGL14;->EGL_NO_SURFACE:Lccsanandroid/opengl/EGLSurface;

    sget-object v6, Lccsanandroid/opengl/EGL14;->EGL_NO_CONTEXT:Lccsanandroid/opengl/EGLContext;

    invoke-static {v3, v4, v5, v6}, Lccsanandroid/opengl/EGL14;->eglMakeCurrent(Lccsanandroid/opengl/EGLDisplay;Lccsanandroid/opengl/EGLSurface;Lccsanandroid/opengl/EGLSurface;Lccsanandroid/opengl/EGLContext;)Z

    .line 118
    :cond_5
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->surface:Lccsanandroid/opengl/EGLSurface;

    if-eqz v3, :cond_6

    sget-object v4, Lccsanandroid/opengl/EGL14;->EGL_NO_SURFACE:Lccsanandroid/opengl/EGLSurface;

    invoke-virtual {v3, v4}, Lccsanandroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 119
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->display:Lccsanandroid/opengl/EGLDisplay;

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->surface:Lccsanandroid/opengl/EGLSurface;

    invoke-static {v3, v4}, Lccsanandroid/opengl/EGL14;->eglDestroySurface(Lccsanandroid/opengl/EGLDisplay;Lccsanandroid/opengl/EGLSurface;)Z

    .line 121
    :cond_6
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->context:Lccsanandroid/opengl/EGLContext;

    if-eqz v3, :cond_7

    .line 122
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->display:Lccsanandroid/opengl/EGLDisplay;

    invoke-static {v4, v3}, Lccsanandroid/opengl/EGL14;->eglDestroyContext(Lccsanandroid/opengl/EGLDisplay;Lccsanandroid/opengl/EGLContext;)Z

    .line 125
    :cond_7
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    if-lt v3, v0, :cond_8

    .line 126
    invoke-static {}, Lccsanandroid/opengl/EGL14;->eglReleaseThread()Z

    .line 128
    :cond_8
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->display:Lccsanandroid/opengl/EGLDisplay;

    .line 129
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->context:Lccsanandroid/opengl/EGLContext;

    .line 130
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->surface:Lccsanandroid/opengl/EGLSurface;

    .line 131
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->texture:Lccsanandroid/graphics/SurfaceTexture;

    .line 132
    throw v2
.end method

.method public final run()V
    .locals 1

    .line 153
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->texture:Lccsanandroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lccsanandroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 156
    :cond_0
    return-void
.end method
