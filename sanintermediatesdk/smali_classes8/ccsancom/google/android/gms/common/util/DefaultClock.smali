.class public Lccsancom/google/android/gms/common/util/DefaultClock;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/google/android/gms/common/util/Clock;


# static fields
.field private static final zzgk:Lccsancom/google/android/gms/common/util/DefaultClock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lccsancom/google/android/gms/common/util/DefaultClock;

    invoke-direct {v0}, Lccsancom/google/android/gms/common/util/DefaultClock;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/util/DefaultClock;->zzgk:Lccsancom/google/android/gms/common/util/DefaultClock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lccsancom/google/android/gms/common/util/Clock;
    .locals 1

    .line 1
    sget-object v0, Lccsancom/google/android/gms/common/util/DefaultClock;->zzgk:Lccsancom/google/android/gms/common/util/DefaultClock;

    return-object v0
.end method


# virtual methods
.method public currentThreadTimeMillis()J
    .locals 2

    .line 5
    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public currentTimeMillis()J
    .locals 2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsedRealtime()J
    .locals 2

    .line 3
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public nanoTime()J
    .locals 2

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
