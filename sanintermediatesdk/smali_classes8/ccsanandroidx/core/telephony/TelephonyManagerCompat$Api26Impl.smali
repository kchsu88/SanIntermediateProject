.class Lccsanandroidx/core/telephony/TelephonyManagerCompat$Api26Impl;
.super Ljava/lang/Object;
.source "TelephonyManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/telephony/TelephonyManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getImei(Lccsanandroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "telephonyManager"    # Lccsanandroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "telephonyManager"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lccsanandroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
