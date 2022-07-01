.class final Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"

# interfaces
.implements Lccsanandroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CancellableLocationListener"
.end annotation


# instance fields
.field private mConsumer:Lccsanandroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/core/util/Consumer<",
            "Lccsanandroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mLocationManager:Lccsanandroid/location/LocationManager;

.field private final mTimeoutHandler:Lccsanandroid/os/Handler;

.field mTimeoutRunnable:Ljava/lang/Runnable;

.field private mTriggered:Z


# direct methods
.method constructor <init>(Lccsanandroid/location/LocationManager;Ljava/util/concurrent/Executor;Lccsanandroidx/core/util/Consumer;)V
    .locals 2
    .param p1, "locationManager"    # Lccsanandroid/location/LocationManager;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "locationManager",
            "executor",
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/location/LocationManager;",
            "Ljava/util/concurrent/Executor;",
            "Lccsanandroidx/core/util/Consumer<",
            "Lccsanandroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 686
    .local p3, "consumer":Lccsanandroidx/core/util/Consumer;, "Lccsanandroidx/core/util/Consumer<Lccsanandroid/location/Location;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    iput-object p1, p0, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mLocationManager:Lccsanandroid/location/LocationManager;

    .line 688
    iput-object p2, p0, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 689
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTimeoutHandler:Lccsanandroid/os/Handler;

    .line 691
    iput-object p3, p0, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mConsumer:Lccsanandroidx/core/util/Consumer;

    .line 692
    return-void
.end method

.method private cleanup()V
    .locals 3

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mConsumer:Lccsanandroidx/core/util/Consumer;

    .line 763
    iget-object v1, p0, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mLocationManager:Lccsanandroid/location/LocationManager;

    invoke-virtual {v1, p0}, Lccsanandroid/location/LocationManager;->removeUpdates(Lccsanandroid/location/LocationListener;)V

    .line 764
    iget-object v1, p0, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 765
    iget-object v2, p0, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTimeoutHandler:Lccsanandroid/os/Handler;

    invoke-virtual {v2, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 766
    iput-object v0, p0, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 768
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 696
    monitor-enter p0

    .line 697
    :try_start_0
    iget-boolean v0, p0, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTriggered:Z

    if-eqz v0, :cond_0

    .line 698
    monitor-exit p0

    return-void

    .line 700
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTriggered:Z

    .line 701
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    invoke-direct {p0}, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->cleanup()V

    .line 704
    return-void

    .line 701
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onLocationChanged(Lccsanandroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Lccsanandroid/location/Location;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "location"
        }
    .end annotation

    .line 742
    monitor-enter p0

    .line 743
    :try_start_0
    iget-boolean v0, p0, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTriggered:Z

    if-eqz v0, :cond_0

    .line 744
    monitor-exit p0

    return-void

    .line 746
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTriggered:Z

    .line 747
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    iget-object v0, p0, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mConsumer:Lccsanandroidx/core/util/Consumer;

    .line 750
    .local v0, "consumer":Lccsanandroidx/core/util/Consumer;, "Lccsanandroidx/core/util/Consumer<Lccsanandroid/location/Location;>;"
    iget-object v1, p0, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener$2;

    invoke-direct {v2, p0, v0, p1}, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener$2;-><init>(Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;Lccsanandroidx/core/util/Consumer;Lccsanandroid/location/Location;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 757
    invoke-direct {p0}, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->cleanup()V

    .line 758
    return-void

    .line 747
    .end local v0    # "consumer":Lccsanandroidx/core/util/Consumer;, "Lccsanandroidx/core/util/Consumer<Lccsanandroid/location/Location;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 736
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lccsanandroid/location/Location;

    invoke-virtual {p0, v0}, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->onLocationChanged(Lccsanandroid/location/Location;)V

    .line 737
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .line 731
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "provider",
            "status",
            "extras"
        }
    .end annotation

    .line 728
    return-void
.end method

.method public startTimeout(J)V
    .locals 2
    .param p1, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeoutMs"
        }
    .end annotation

    .line 707
    monitor-enter p0

    .line 708
    :try_start_0
    iget-boolean v0, p0, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTriggered:Z

    if-eqz v0, :cond_0

    .line 709
    monitor-exit p0

    return-void

    .line 715
    :cond_0
    new-instance v0, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener$1;

    invoke-direct {v0, p0}, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener$1;-><init>(Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;)V

    iput-object v0, p0, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 723
    iget-object v1, p0, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTimeoutHandler:Lccsanandroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 724
    monitor-exit p0

    .line 725
    return-void

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
