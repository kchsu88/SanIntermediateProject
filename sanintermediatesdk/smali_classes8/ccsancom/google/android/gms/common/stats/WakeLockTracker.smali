.class public Lccsancom/google/android/gms/common/stats/WakeLockTracker;
.super Ljava/lang/Object;


# static fields
.field private static zzfb:Z

.field private static zzgb:Lccsancom/google/android/gms/common/stats/WakeLockTracker;

.field private static zzgc:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lccsancom/google/android/gms/common/stats/WakeLockTracker;

    invoke-direct {v0}, Lccsancom/google/android/gms/common/stats/WakeLockTracker;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/stats/WakeLockTracker;->zzgb:Lccsancom/google/android/gms/common/stats/WakeLockTracker;

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lccsancom/google/android/gms/common/stats/WakeLockTracker;->zzfb:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lccsancom/google/android/gms/common/stats/WakeLockTracker;
    .locals 1

    .line 2
    sget-object v0, Lccsancom/google/android/gms/common/stats/WakeLockTracker;->zzgb:Lccsancom/google/android/gms/common/stats/WakeLockTracker;

    return-object v0
.end method


# virtual methods
.method public registerAcquireEvent(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 11

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p7, v0, v1

    .line 4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 5
    nop

    .line 6
    nop

    .line 7
    const-string v0, "WAKE_LOCK_KEY"

    move-object v1, p2

    invoke-virtual {p2, v0}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    const/4 v5, 0x7

    move-object v2, p0

    move-object v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v2 .. v10}, Lccsancom/google/android/gms/common/stats/WakeLockTracker;->registerEvent(Lccsanandroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 9
    return-void
.end method

.method public registerEvent(Lccsanandroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 14
    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lccsancom/google/android/gms/common/stats/WakeLockTracker;->registerEvent(Lccsanandroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    .line 15
    return-void
.end method

.method public registerEvent(Lccsanandroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 16
    move/from16 v0, p3

    move-object/from16 v1, p8

    sget-object v2, Lccsancom/google/android/gms/common/stats/WakeLockTracker;->zzgc:Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 17
    nop

    .line 18
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lccsancom/google/android/gms/common/stats/WakeLockTracker;->zzgc:Ljava/lang/Boolean;

    .line 19
    :cond_0
    sget-object v2, Lccsancom/google/android/gms/common/stats/WakeLockTracker;->zzgc:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    return-void

    .line 22
    :cond_1
    invoke-static/range {p2 .. p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v15, "WakeLockTracker"

    if-eqz v2, :cond_3

    .line 23
    const-string v0, "missing wakeLock key. "

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-static {v15, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void

    .line 25
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 26
    const/4 v2, 0x7

    if-eq v2, v0, :cond_4

    const/16 v2, 0x8

    if-eq v2, v0, :cond_4

    const/16 v2, 0xa

    if-eq v2, v0, :cond_4

    const/16 v2, 0xb

    if-ne v2, v0, :cond_8

    .line 27
    :cond_4
    new-instance v13, Lccsancom/google/android/gms/common/stats/WakeLockEvent;

    .line 28
    nop

    .line 29
    nop

    .line 30
    const/4 v2, 0x0

    const-string v6, "com.google.android.gms"

    if-eqz v1, :cond_6

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 31
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 32
    move-object v1, v2

    goto :goto_1

    .line 33
    :cond_5
    nop

    :goto_1
    move-object v7, v1

    goto :goto_2

    .line 34
    :cond_6
    move-object v7, v1

    :goto_2
    nop

    .line 35
    nop

    .line 36
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 37
    invoke-static/range {p1 .. p1}, Lccsancom/google/android/gms/common/util/zza;->zzg(Lccsanandroid/content/Context;)I

    move-result v11

    .line 38
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 40
    move-object/from16 v16, v2

    goto :goto_3

    .line 41
    :cond_7
    move-object/from16 v16, v1

    .line 42
    :goto_3
    nop

    .line 43
    invoke-static/range {p1 .. p1}, Lccsancom/google/android/gms/common/util/zza;->zzh(Lccsanandroid/content/Context;)F

    move-result v14

    move-object v1, v13

    move-wide v2, v4

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p7

    move-object/from16 v8, p2

    move-object/from16 v12, p5

    move-object v0, v13

    move-object/from16 v13, v16

    move-object/from16 v18, v15

    move-wide/from16 v15, p9

    move-object/from16 v17, p6

    invoke-direct/range {v1 .. v17}, Lccsancom/google/android/gms/common/stats/WakeLockEvent;-><init>(JILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;)V

    .line 44
    :try_start_0
    new-instance v1, Lccsanandroid/content/Intent;

    invoke-direct {v1}, Lccsanandroid/content/Intent;-><init>()V

    sget-object v2, Lccsancom/google/android/gms/common/stats/LoggingConstants;->zzfg:Lccsanandroid/content/ComponentName;

    .line 45
    invoke-virtual {v1, v2}, Lccsanandroid/content/Intent;->setComponent(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.common.stats.EXTRA_LOG_EVENT"

    .line 46
    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Lccsanandroid/os/Parcelable;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 47
    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lccsanandroid/content/Context;->startService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    move-object/from16 v1, v18

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    :cond_8
    return-void
.end method

.method public registerReleaseEvent(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 10

    .line 10
    nop

    .line 11
    const-string v0, "WAKE_LOCK_KEY"

    invoke-virtual {p2, v0}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12
    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lccsancom/google/android/gms/common/stats/WakeLockTracker;->registerEvent(Lccsanandroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 13
    return-void
.end method
