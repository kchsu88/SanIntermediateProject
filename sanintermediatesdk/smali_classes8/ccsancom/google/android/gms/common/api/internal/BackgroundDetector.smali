.class public final Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/app/Application$ActivityLifecycleCallbacks;
.implements Lccsanandroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;
    }
.end annotation


# static fields
.field private static final zzas:Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;


# instance fields
.field private final zzat:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzau:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzav:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsancom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzaw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;

    invoke-direct {v0}, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzas:Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzat:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzau:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzav:Ljava/util/ArrayList;

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzaw:Z

    .line 6
    return-void
.end method

.method public static getInstance()Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;
    .locals 1

    .line 7
    sget-object v0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzas:Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;

    return-object v0
.end method

.method public static initialize(Lccsanandroid/app/Application;)V
    .locals 2

    .line 8
    sget-object v0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzas:Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-boolean v1, v0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzaw:Z

    if-nez v1, :cond_0

    .line 10
    invoke-virtual {p0, v0}, Lccsanandroid/app/Application;->registerActivityLifecycleCallbacks(Lccsanandroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 11
    invoke-virtual {p0, v0}, Lccsanandroid/app/Application;->registerComponentCallbacks(Lccsanandroid/content/ComponentCallbacks;)V

    .line 12
    const/4 p0, 0x1

    iput-boolean p0, v0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzaw:Z

    .line 13
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final onBackgroundStateChanged(Z)V
    .locals 5

    .line 43
    sget-object v0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzas:Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzav:Ljava/util/ArrayList;

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;

    .line 45
    invoke-interface {v4, p1}, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;->onBackgroundStateChanged(Z)V

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final addListener(Lccsancom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;)V
    .locals 2

    .line 24
    sget-object v0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzas:Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzav:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final isInBackground()Z
    .locals 1

    .line 23
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzat:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final onActivityCreated(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 2

    .line 27
    iget-object p1, p0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzat:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    .line 28
    iget-object v1, p0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzau:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    if-eqz p1, :cond_0

    .line 30
    invoke-direct {p0, v0}, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->onBackgroundStateChanged(Z)V

    .line 31
    :cond_0
    return-void
.end method

.method public final onActivityDestroyed(Lccsanandroid/app/Activity;)V
    .locals 0

    .line 52
    return-void
.end method

.method public final onActivityPaused(Lccsanandroid/app/Activity;)V
    .locals 0

    .line 49
    return-void
.end method

.method public final onActivityResumed(Lccsanandroid/app/Activity;)V
    .locals 3

    .line 32
    iget-object p1, p0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzat:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    .line 33
    iget-object v2, p0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzau:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    if-eqz p1, :cond_0

    .line 35
    invoke-direct {p0, v1}, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->onBackgroundStateChanged(Z)V

    .line 36
    :cond_0
    return-void
.end method

.method public final onActivitySaveInstanceState(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 0

    .line 51
    return-void
.end method

.method public final onActivityStarted(Lccsanandroid/app/Activity;)V
    .locals 0

    .line 48
    return-void
.end method

.method public final onActivityStopped(Lccsanandroid/app/Activity;)V
    .locals 0

    .line 50
    return-void
.end method

.method public final onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 0

    .line 53
    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    .line 54
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 2

    .line 37
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 38
    iget-object p1, p0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzat:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzau:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41
    invoke-direct {p0, v1}, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->onBackgroundStateChanged(Z)V

    .line 42
    :cond_0
    return-void
.end method

.method public final readCurrentStateIfPossible(Z)Z
    .locals 2

    .line 14
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzau:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    invoke-static {}, Lccsancom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    new-instance p1, Lccsanandroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {p1}, Lccsanandroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 17
    invoke-static {p1}, Lccsanandroid/app/ActivityManager;->getMyMemoryState(Lccsanandroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 18
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzau:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget p1, p1, Lccsanandroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 19
    iget-object p1, p0, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->zzat:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    :cond_0
    goto :goto_0

    .line 21
    :cond_1
    return p1

    .line 22
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/api/internal/BackgroundDetector;->isInBackground()Z

    move-result p1

    return p1
.end method
