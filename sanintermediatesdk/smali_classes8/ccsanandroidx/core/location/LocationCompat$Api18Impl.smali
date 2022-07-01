.class Lccsanandroidx/core/location/LocationCompat$Api18Impl;
.super Ljava/lang/Object;
.source "LocationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/location/LocationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api18Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isMock(Lccsanandroid/location/Location;)Z
    .locals 1
    .param p0, "location"    # Lccsanandroid/location/Location;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lccsanandroid/location/Location;->isFromMockProvider()Z

    move-result v0

    return v0
.end method
