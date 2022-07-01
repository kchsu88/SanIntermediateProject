.class Lccsanandroidx/core/location/LocationManagerCompat$1;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/location/LocationManagerCompat;->getCurrentLocation(Lccsanandroid/location/LocationManager;Ljava/lang/String;Lccsanandroidx/core/os/CancellationSignal;Ljava/util/concurrent/Executor;Lccsanandroidx/core/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$consumer:Lccsanandroidx/core/util/Consumer;

.field final synthetic val$location:Lccsanandroid/location/Location;


# direct methods
.method constructor <init>(Lccsanandroidx/core/util/Consumer;Lccsanandroid/location/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$consumer",
            "val$location"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lccsanandroidx/core/location/LocationManagerCompat$1;->val$consumer:Lccsanandroidx/core/util/Consumer;

    iput-object p2, p0, Lccsanandroidx/core/location/LocationManagerCompat$1;->val$location:Lccsanandroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 162
    iget-object v0, p0, Lccsanandroidx/core/location/LocationManagerCompat$1;->val$consumer:Lccsanandroidx/core/util/Consumer;

    iget-object v1, p0, Lccsanandroidx/core/location/LocationManagerCompat$1;->val$location:Lccsanandroid/location/Location;

    invoke-interface {v0, v1}, Lccsanandroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 163
    return-void
.end method
