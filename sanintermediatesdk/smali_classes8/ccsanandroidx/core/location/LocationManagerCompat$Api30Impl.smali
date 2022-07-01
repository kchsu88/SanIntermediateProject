.class Lccsanandroidx/core/location/LocationManagerCompat$Api30Impl;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api30Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCurrentLocation(Lccsanandroid/location/LocationManager;Ljava/lang/String;Lccsanandroidx/core/os/CancellationSignal;Ljava/util/concurrent/Executor;Lccsanandroidx/core/util/Consumer;)V
    .locals 2
    .param p0, "locationManager"    # Lccsanandroid/location/LocationManager;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "cancellationSignal"    # Lccsanandroidx/core/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "locationManager",
            "provider",
            "cancellationSignal",
            "executor",
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/location/LocationManager;",
            "Ljava/lang/String;",
            "Lccsanandroidx/core/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Lccsanandroidx/core/util/Consumer<",
            "Lccsanandroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 636
    .local p4, "consumer":Lccsanandroidx/core/util/Consumer;, "Lccsanandroidx/core/util/Consumer<Lccsanandroid/location/Location;>;"
    nop

    .line 637
    if-eqz p2, :cond_0

    .line 638
    nop

    .line 639
    invoke-virtual {p2}, Lccsanandroidx/core/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/CancellationSignal;

    goto :goto_0

    .line 640
    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lccsanandroidx/core/location/LocationManagerCompat$Api30Impl$1;

    invoke-direct {v1, p4}, Lccsanandroidx/core/location/LocationManagerCompat$Api30Impl$1;-><init>(Lccsanandroidx/core/util/Consumer;)V

    .line 636
    invoke-virtual {p0, p1, v0, p3, v1}, Lccsanandroid/location/LocationManager;->getCurrentLocation(Ljava/lang/String;Lccsanandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 648
    return-void
.end method
