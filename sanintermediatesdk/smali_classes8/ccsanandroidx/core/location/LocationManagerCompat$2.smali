.class Lccsanandroidx/core/location/LocationManagerCompat$2;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"

# interfaces
.implements Lccsanandroidx/core/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/location/LocationManagerCompat;->getCurrentLocation(Lccsanandroid/location/LocationManager;Ljava/lang/String;Lccsanandroidx/core/os/CancellationSignal;Ljava/util/concurrent/Executor;Lccsanandroidx/core/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;


# direct methods
.method constructor <init>(Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$listener"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lccsanandroidx/core/location/LocationManagerCompat$2;->val$listener:Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 179
    iget-object v0, p0, Lccsanandroidx/core/location/LocationManagerCompat$2;->val$listener:Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;

    invoke-virtual {v0}, Lccsanandroidx/core/location/LocationManagerCompat$CancellableLocationListener;->cancel()V

    .line 180
    return-void
.end method
