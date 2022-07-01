.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;
.super Lccsanandroid/view/Surface;
.source "DummySurface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;
    }
.end annotation


# static fields
.field private static final EXTENSION_PROTECTED_CONTENT:Ljava/lang/String; = "EGL_EXT_protected_content"

.field private static final EXTENSION_SURFACELESS_CONTEXT:Ljava/lang/String; = "EGL_KHR_surfaceless_context"

.field private static final TAG:Ljava/lang/String; = "DummySurface"

.field private static secureMode:I

.field private static secureModeInitialized:Z


# instance fields
.field public final secure:Z

.field private final thread:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;

.field private threadReleased:Z


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;Lccsanandroid/graphics/SurfaceTexture;Z)V
    .locals 0

    .line 97
    invoke-direct {p0, p2}, Lccsanandroid/view/Surface;-><init>(Lccsanandroid/graphics/SurfaceTexture;)V

    .line 98
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;->thread:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;

    .line 99
    iput-boolean p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;->secure:Z

    .line 100
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;Lccsanandroid/graphics/SurfaceTexture;ZLccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$1;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;Lccsanandroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method private static assertApiLevel17OrHigher()V
    .locals 2

    .line 118
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 121
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported prior to API level 17"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSecureModeV24(Lccsanandroid/content/Context;)I
    .locals 4

    .line 125
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "samsung"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v3, "XT1650"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    return v2

    .line 132
    :cond_1
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.vr.high_performance"

    invoke-virtual {p0, v0}, Lccsanandroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 135
    return v2

    .line 137
    :cond_2
    invoke-static {v2}, Lccsanandroid/opengl/EGL14;->eglGetDisplay(I)Lccsanandroid/opengl/EGLDisplay;

    move-result-object p0

    .line 138
    const/16 v0, 0x3055

    invoke-static {p0, v0}, Lccsanandroid/opengl/EGL14;->eglQueryString(Lccsanandroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p0

    .line 139
    if-nez p0, :cond_3

    .line 140
    return v2

    .line 142
    :cond_3
    const-string v0, "EGL_EXT_protected_content"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 143
    return v2

    .line 148
    :cond_4
    const-string v0, "EGL_KHR_surfaceless_context"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 149
    const/4 p0, 0x1

    goto :goto_0

    .line 150
    :cond_5
    const/4 p0, 0x2

    .line 148
    :goto_0
    return p0
.end method

.method public static declared-synchronized isSecureSupported(Lccsanandroid/content/Context;)Z
    .locals 5

    const-class v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-boolean v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;->secureModeInitialized:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 71
    sget v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v1, v4, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;->getSecureModeV24(Lccsanandroid/content/Context;)I

    move-result p0

    :goto_0
    sput p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;->secureMode:I

    .line 72
    sput-boolean v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;->secureModeInitialized:Z

    .line 74
    :cond_1
    sget p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;->secureMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    monitor-exit v0

    return v2

    .line 69
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static newInstanceV17(Lccsanandroid/content/Context;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;
    .locals 1

    .line 90
    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;->assertApiLevel17OrHigher()V

    .line 91
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;->isSecureSupported(Lccsanandroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 92
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;-><init>()V

    .line 93
    if-eqz p1, :cond_2

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;->secureMode:I

    :cond_2
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->init(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final release()V
    .locals 2

    .line 104
    invoke-super {p0}, Lccsanandroid/view/Surface;->release()V

    .line 109
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;->thread:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;->threadReleased:Z

    if-nez v1, :cond_0

    .line 111
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;->thread:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->release()V

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;->threadReleased:Z

    .line 114
    :cond_0
    monitor-exit v0

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
