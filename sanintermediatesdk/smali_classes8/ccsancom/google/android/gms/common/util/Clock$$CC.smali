.class public synthetic Lccsancom/google/android/gms/common/util/Clock$$CC;
.super Ljava/lang/Object;


# direct methods
.method public static currentThreadTimeMillis(Lccsancom/google/android/gms/common/util/Clock;)J
    .locals 2

    .line 1
    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
