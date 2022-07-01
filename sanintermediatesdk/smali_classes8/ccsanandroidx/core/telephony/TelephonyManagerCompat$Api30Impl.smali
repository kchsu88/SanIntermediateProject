.class Lccsanandroidx/core/telephony/TelephonyManagerCompat$Api30Impl;
.super Ljava/lang/Object;
.source "TelephonyManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/telephony/TelephonyManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api30Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSubscriptionId(Lccsanandroid/telephony/TelephonyManager;)I
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

    .line 142
    invoke-virtual {p0}, Lccsanandroid/telephony/TelephonyManager;->getSubscriptionId()I

    move-result v0

    return v0
.end method
