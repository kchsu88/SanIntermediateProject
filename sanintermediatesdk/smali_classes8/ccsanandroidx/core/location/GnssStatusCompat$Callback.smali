.class public abstract Lccsanandroidx/core/location/GnssStatusCompat$Callback;
.super Ljava/lang/Object;
.source "GnssStatusCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/location/GnssStatusCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 0
    .param p1, "ttffMillis"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ttffMillis"
        }
    .end annotation

    .line 103
    return-void
.end method

.method public onSatelliteStatusChanged(Lccsanandroidx/core/location/GnssStatusCompat;)V
    .locals 0
    .param p1, "status"    # Lccsanandroidx/core/location/GnssStatusCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 108
    return-void
.end method

.method public onStarted()V
    .locals 0

    .line 93
    return-void
.end method

.method public onStopped()V
    .locals 0

    .line 98
    return-void
.end method
