.class public final Lccsancom/google/android/exoplayer2/video/DummySurface;
.super Lccsanandroid/view/Surface;
.source "DummySurface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DummySurface"

.field private static secureMode:I

.field private static secureModeInitialized:Z


# instance fields
.field public final secure:Z

.field private final thread:Lccsancom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

.field private threadReleased:Z


# direct methods
.method private constructor <init>(Lccsancom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Lccsanandroid/graphics/SurfaceTexture;Z)V
    .locals 0
    .param p1, "thread"    # Lccsancom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;
    .param p2, "surfaceTexture"    # Lccsanandroid/graphics/SurfaceTexture;
    .param p3, "secure"    # Z

    .line 86
    invoke-direct {p0, p2}, Lccsanandroid/view/Surface;-><init>(Lccsanandroid/graphics/SurfaceTexture;)V

    .line 87
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/video/DummySurface;->thread:Lccsancom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    .line 88
    iput-boolean p3, p0, Lccsancom/google/android/exoplayer2/video/DummySurface;->secure:Z

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Lccsanandroid/graphics/SurfaceTexture;ZLccsancom/google/android/exoplayer2/video/DummySurface$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;
    .param p2, "x1"    # Lccsanandroid/graphics/SurfaceTexture;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lccsancom/google/android/exoplayer2/video/DummySurface$1;

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/video/DummySurface;-><init>(Lccsancom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Lccsanandroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method private static getSecureMode(Lccsanandroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 108
    invoke-static {p0}, Lccsancom/google/android/exoplayer2/util/GlUtil;->isProtectedContentExtensionSupported(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-static {}, Lccsancom/google/android/exoplayer2/util/GlUtil;->isSurfacelessContextExtensionSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 119
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized isSecureSupported(Lccsanandroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;

    const-class v0, Lccsancom/google/android/exoplayer2/video/DummySurface;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-boolean v1, Lccsancom/google/android/exoplayer2/video/DummySurface;->secureModeInitialized:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 61
    invoke-static {p0}, Lccsancom/google/android/exoplayer2/video/DummySurface;->getSecureMode(Lccsanandroid/content/Context;)I

    move-result v1

    sput v1, Lccsancom/google/android/exoplayer2/video/DummySurface;->secureMode:I

    .line 62
    sput-boolean v2, Lccsancom/google/android/exoplayer2/video/DummySurface;->secureModeInitialized:Z

    .line 64
    :cond_0
    sget v1, Lccsancom/google/android/exoplayer2/video/DummySurface;->secureMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 59
    .end local p0    # "context":Lccsanandroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static newInstanceV17(Lccsanandroid/content/Context;Z)Lccsancom/google/android/exoplayer2/video/DummySurface;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "secure"    # Z

    .line 80
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/video/DummySurface;->isSecureSupported(Lccsanandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 81
    new-instance v1, Lccsancom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    invoke-direct {v1}, Lccsancom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;-><init>()V

    .line 82
    .local v1, "thread":Lccsancom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;
    if-eqz p1, :cond_2

    sget v0, Lccsancom/google/android/exoplayer2/video/DummySurface;->secureMode:I

    :cond_2
    invoke-virtual {v1, v0}, Lccsancom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->init(I)Lccsancom/google/android/exoplayer2/video/DummySurface;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 93
    invoke-super {p0}, Lccsanandroid/view/Surface;->release()V

    .line 98
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/DummySurface;->thread:Lccsancom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-boolean v1, p0, Lccsancom/google/android/exoplayer2/video/DummySurface;->threadReleased:Z

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/video/DummySurface;->thread:Lccsancom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->release()V

    .line 101
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/google/android/exoplayer2/video/DummySurface;->threadReleased:Z

    .line 103
    :cond_0
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
