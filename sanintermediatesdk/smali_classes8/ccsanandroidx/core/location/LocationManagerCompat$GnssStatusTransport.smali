.class Lccsanandroidx/core/location/LocationManagerCompat$GnssStatusTransport;
.super Lccsanandroid/location/GnssStatus$Callback;
.source "LocationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssStatusTransport"
.end annotation


# instance fields
.field final mCallback:Lccsanandroidx/core/location/GnssStatusCompat$Callback;


# direct methods
.method constructor <init>(Lccsanandroidx/core/location/GnssStatusCompat$Callback;)V
    .locals 2
    .param p1, "callback"    # Lccsanandroidx/core/location/GnssStatusCompat$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 416
    invoke-direct {p0}, Lccsanandroid/location/GnssStatus$Callback;-><init>()V

    .line 417
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid null callback"

    invoke-static {v0, v1}, Lccsanandroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 418
    iput-object p1, p0, Lccsanandroidx/core/location/LocationManagerCompat$GnssStatusTransport;->mCallback:Lccsanandroidx/core/location/GnssStatusCompat$Callback;

    .line 419
    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 1
    .param p1, "ttffMillis"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ttffMillis"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lccsanandroidx/core/location/LocationManagerCompat$GnssStatusTransport;->mCallback:Lccsanandroidx/core/location/GnssStatusCompat$Callback;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/location/GnssStatusCompat$Callback;->onFirstFix(I)V

    .line 434
    return-void
.end method

.method public onSatelliteStatusChanged(Lccsanandroid/location/GnssStatus;)V
    .locals 2
    .param p1, "status"    # Lccsanandroid/location/GnssStatus;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lccsanandroidx/core/location/LocationManagerCompat$GnssStatusTransport;->mCallback:Lccsanandroidx/core/location/GnssStatusCompat$Callback;

    invoke-static {p1}, Lccsanandroidx/core/location/GnssStatusCompat;->wrap(Lccsanandroid/location/GnssStatus;)Lccsanandroidx/core/location/GnssStatusCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/location/GnssStatusCompat$Callback;->onSatelliteStatusChanged(Lccsanandroidx/core/location/GnssStatusCompat;)V

    .line 439
    return-void
.end method

.method public onStarted()V
    .locals 1

    .line 423
    iget-object v0, p0, Lccsanandroidx/core/location/LocationManagerCompat$GnssStatusTransport;->mCallback:Lccsanandroidx/core/location/GnssStatusCompat$Callback;

    invoke-virtual {v0}, Lccsanandroidx/core/location/GnssStatusCompat$Callback;->onStarted()V

    .line 424
    return-void
.end method

.method public onStopped()V
    .locals 1

    .line 428
    iget-object v0, p0, Lccsanandroidx/core/location/LocationManagerCompat$GnssStatusTransport;->mCallback:Lccsanandroidx/core/location/GnssStatusCompat$Callback;

    invoke-virtual {v0}, Lccsanandroidx/core/location/GnssStatusCompat$Callback;->onStopped()V

    .line 429
    return-void
.end method
