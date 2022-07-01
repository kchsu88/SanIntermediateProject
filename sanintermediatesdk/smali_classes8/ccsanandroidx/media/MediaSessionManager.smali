.class public final Lccsanandroidx/media/MediaSessionManager;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;,
        Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;,
        Lccsanandroidx/media/MediaSessionManager$MediaSessionManagerImpl;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "MediaSessionManager"

.field private static final sLock:Ljava/lang/Object;

.field private static volatile sSessionManager:Lccsanandroidx/media/MediaSessionManager;


# instance fields
.field mImpl:Lccsanandroidx/media/MediaSessionManager$MediaSessionManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-string v0, "MediaSessionManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lccsanandroidx/media/MediaSessionManager;->DEBUG:Z

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsanandroidx/media/MediaSessionManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 70
    new-instance v0, Lccsanandroidx/media/MediaSessionManagerImplApi28;

    invoke-direct {v0, p1}, Lccsanandroidx/media/MediaSessionManagerImplApi28;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsanandroidx/media/MediaSessionManager;->mImpl:Lccsanandroidx/media/MediaSessionManager$MediaSessionManagerImpl;

    goto :goto_0

    .line 71
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 72
    new-instance v0, Lccsanandroidx/media/MediaSessionManagerImplApi21;

    invoke-direct {v0, p1}, Lccsanandroidx/media/MediaSessionManagerImplApi21;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsanandroidx/media/MediaSessionManager;->mImpl:Lccsanandroidx/media/MediaSessionManager$MediaSessionManagerImpl;

    goto :goto_0

    .line 74
    :cond_1
    new-instance v0, Lccsanandroidx/media/MediaSessionManagerImplBase;

    invoke-direct {v0, p1}, Lccsanandroidx/media/MediaSessionManagerImplBase;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsanandroidx/media/MediaSessionManager;->mImpl:Lccsanandroidx/media/MediaSessionManager$MediaSessionManagerImpl;

    .line 76
    :goto_0
    return-void
.end method

.method public static getSessionManager(Lccsanandroid/content/Context;)Lccsanandroidx/media/MediaSessionManager;
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 55
    sget-object v0, Lccsanandroidx/media/MediaSessionManager;->sSessionManager:Lccsanandroidx/media/MediaSessionManager;

    .line 56
    .local v0, "manager":Lccsanandroidx/media/MediaSessionManager;
    if-nez v0, :cond_1

    .line 57
    sget-object v1, Lccsanandroidx/media/MediaSessionManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v2, Lccsanandroidx/media/MediaSessionManager;->sSessionManager:Lccsanandroidx/media/MediaSessionManager;

    move-object v0, v2

    .line 59
    if-nez v0, :cond_0

    .line 60
    new-instance v2, Lccsanandroidx/media/MediaSessionManager;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsanandroidx/media/MediaSessionManager;-><init>(Lccsanandroid/content/Context;)V

    sput-object v2, Lccsanandroidx/media/MediaSessionManager;->sSessionManager:Lccsanandroidx/media/MediaSessionManager;

    .line 61
    sget-object v2, Lccsanandroidx/media/MediaSessionManager;->sSessionManager:Lccsanandroidx/media/MediaSessionManager;

    move-object v0, v2

    .line 63
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 65
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method getContext()Lccsanandroid/content/Context;
    .locals 1

    .line 98
    iget-object v0, p0, Lccsanandroidx/media/MediaSessionManager;->mImpl:Lccsanandroidx/media/MediaSessionManager$MediaSessionManagerImpl;

    invoke-interface {v0}, Lccsanandroidx/media/MediaSessionManager$MediaSessionManagerImpl;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public isTrustedForMediaControl(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;)Z
    .locals 2
    .param p1, "userInfo"    # Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 91
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lccsanandroidx/media/MediaSessionManager;->mImpl:Lccsanandroidx/media/MediaSessionManager$MediaSessionManagerImpl;

    iget-object v1, p1, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-interface {v0, v1}, Lccsanandroidx/media/MediaSessionManager$MediaSessionManagerImpl;->isTrustedForMediaControl(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;)Z

    move-result v0

    return v0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "userInfo should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
