.class Lccsanandroidx/core/location/LocationManagerCompat$Api28Impl;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getGnssHardwareModelName(Lccsanandroid/location/LocationManager;)Ljava/lang/String;
    .locals 1
    .param p0, "locationManager"    # Lccsanandroid/location/LocationManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locationManager"
        }
    .end annotation

    .line 662
    invoke-virtual {p0}, Lccsanandroid/location/LocationManager;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getGnssYearOfHardware(Lccsanandroid/location/LocationManager;)I
    .locals 1
    .param p0, "locationManager"    # Lccsanandroid/location/LocationManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locationManager"
        }
    .end annotation

    .line 667
    invoke-virtual {p0}, Lccsanandroid/location/LocationManager;->getGnssYearOfHardware()I

    move-result v0

    return v0
.end method

.method static isLocationEnabled(Lccsanandroid/location/LocationManager;)Z
    .locals 1
    .param p0, "locationManager"    # Lccsanandroid/location/LocationManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locationManager"
        }
    .end annotation

    .line 657
    invoke-virtual {p0}, Lccsanandroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    return v0
.end method
