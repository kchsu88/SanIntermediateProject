.class Lccsanandroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$4;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->onSatelliteStatusChanged(Lccsanandroid/location/GnssStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$status:Lccsanandroid/location/GnssStatus;


# direct methods
.method constructor <init>(Lccsanandroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;Lccsanandroid/location/GnssStatus;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$executor",
            "val$status"
        }
    .end annotation

    .line 525
    iput-object p1, p0, Lccsanandroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$4;->this$0:Lccsanandroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    iput-object p2, p0, Lccsanandroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$4;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lccsanandroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$4;->val$status:Lccsanandroid/location/GnssStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 528
    iget-object v0, p0, Lccsanandroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$4;->this$0:Lccsanandroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    iget-object v0, v0, Lccsanandroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lccsanandroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$4;->val$executor:Ljava/util/concurrent/Executor;

    if-eq v0, v1, :cond_0

    .line 529
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$4;->this$0:Lccsanandroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    iget-object v0, v0, Lccsanandroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mCallback:Lccsanandroidx/core/location/GnssStatusCompat$Callback;

    iget-object v1, p0, Lccsanandroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$4;->val$status:Lccsanandroid/location/GnssStatus;

    invoke-static {v1}, Lccsanandroidx/core/location/GnssStatusCompat;->wrap(Lccsanandroid/location/GnssStatus;)Lccsanandroidx/core/location/GnssStatusCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/location/GnssStatusCompat$Callback;->onSatelliteStatusChanged(Lccsanandroidx/core/location/GnssStatusCompat;)V

    .line 532
    return-void
.end method
