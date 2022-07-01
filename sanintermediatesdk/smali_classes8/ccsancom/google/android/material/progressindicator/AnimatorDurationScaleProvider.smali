.class public Lccsancom/google/android/material/progressindicator/AnimatorDurationScaleProvider;
.super Ljava/lang/Object;
.source "AnimatorDurationScaleProvider.java"


# static fields
.field private static defaultSystemAnimatorDurationScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lccsancom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->defaultSystemAnimatorDurationScale:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDefaultSystemAnimatorDurationScale(F)V
    .locals 0
    .param p0, "scale"    # F

    .line 60
    sput p0, Lccsancom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->defaultSystemAnimatorDurationScale:F

    .line 61
    return-void
.end method


# virtual methods
.method public getSystemAnimatorDurationScale(Lccsanandroid/content/ContentResolver;)F
    .locals 4
    .param p1, "contentResolver"    # Lccsanandroid/content/ContentResolver;

    .line 42
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "animator_duration_scale"

    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    .line 43
    invoke-static {p1, v2, v1}, Lccsanandroid/provider/Settings$Global;->getFloat(Lccsanandroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0

    .line 45
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ne v0, v3, :cond_1

    .line 46
    invoke-static {p1, v2, v1}, Lccsanandroid/provider/Settings$System;->getFloat(Lccsanandroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0

    .line 48
    :cond_1
    sget v0, Lccsancom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->defaultSystemAnimatorDurationScale:F

    return v0
.end method
