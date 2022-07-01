.class Lccsanandroidx/core/telephony/TelephonyManagerCompat$Api23Impl;
.super Ljava/lang/Object;
.source "TelephonyManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/telephony/TelephonyManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDeviceId(Lccsanandroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "telephonyManager"    # Lccsanandroid/telephony/TelephonyManager;
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "telephonyManager",
            "slotIndex"
        }
    .end annotation

    .line 168
    invoke-virtual {p0, p1}, Lccsanandroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
