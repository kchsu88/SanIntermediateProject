.class Lccsanandroidx/core/location/LocationManagerCompat$Api30Impl$1;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/location/LocationManagerCompat$Api30Impl;->getCurrentLocation(Lccsanandroid/location/LocationManager;Ljava/lang/String;Lccsanandroidx/core/os/CancellationSignal;Ljava/util/concurrent/Executor;Lccsanandroidx/core/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lccsanandroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$consumer:Lccsanandroidx/core/util/Consumer;


# direct methods
.method constructor <init>(Lccsanandroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$consumer"
        }
    .end annotation

    .line 642
    iput-object p1, p0, Lccsanandroidx/core/location/LocationManagerCompat$Api30Impl$1;->val$consumer:Lccsanandroidx/core/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lccsanandroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Lccsanandroid/location/Location;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lccsanandroidx/core/location/LocationManagerCompat$Api30Impl$1;->val$consumer:Lccsanandroidx/core/util/Consumer;

    invoke-interface {v0, p1}, Lccsanandroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 646
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "location"
        }
    .end annotation

    .line 642
    check-cast p1, Lccsanandroid/location/Location;

    invoke-virtual {p0, p1}, Lccsanandroidx/core/location/LocationManagerCompat$Api30Impl$1;->accept(Lccsanandroid/location/Location;)V

    return-void
.end method
