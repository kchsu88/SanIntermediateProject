.class public final Lccsanandroidx/core/app/ActivityManagerCompat;
.super Ljava/lang/Object;
.source "ActivityManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLowRamDevice(Lccsanandroid/app/ActivityManager;)Z
    .locals 2
    .param p0, "activityManager"    # Lccsanandroid/app/ActivityManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityManager"
        }
    .end annotation

    .line 40
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lccsanandroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    return v0

    .line 43
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
