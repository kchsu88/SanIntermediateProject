.class public Lccsancom/google/android/gms/common/stats/ConnectionTracker;
.super Ljava/lang/Object;


# static fields
.field private static final zzdp:Ljava/lang/Object;

.field private static volatile zzfa:Lccsancom/google/android/gms/common/stats/ConnectionTracker;

.field private static zzfb:Z


# instance fields
.field private final zzfc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzff:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/stats/ConnectionTracker;->zzdp:Ljava/lang/Object;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lccsancom/google/android/gms/common/stats/ConnectionTracker;->zzfb:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lccsancom/google/android/gms/common/stats/ConnectionTracker;->zzfc:Ljava/util/List;

    .line 9
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lccsancom/google/android/gms/common/stats/ConnectionTracker;->zzfd:Ljava/util/List;

    .line 10
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lccsancom/google/android/gms/common/stats/ConnectionTracker;->zzfe:Ljava/util/List;

    .line 11
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lccsancom/google/android/gms/common/stats/ConnectionTracker;->zzff:Ljava/util/List;

    .line 12
    return-void
.end method

.method public static getInstance()Lccsancom/google/android/gms/common/stats/ConnectionTracker;
    .locals 2

    .line 1
    sget-object v0, Lccsancom/google/android/gms/common/stats/ConnectionTracker;->zzfa:Lccsancom/google/android/gms/common/stats/ConnectionTracker;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lccsancom/google/android/gms/common/stats/ConnectionTracker;->zzdp:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsancom/google/android/gms/common/stats/ConnectionTracker;->zzfa:Lccsancom/google/android/gms/common/stats/ConnectionTracker;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsancom/google/android/gms/common/stats/ConnectionTracker;

    invoke-direct {v1}, Lccsancom/google/android/gms/common/stats/ConnectionTracker;-><init>()V

    sput-object v1, Lccsancom/google/android/gms/common/stats/ConnectionTracker;->zzfa:Lccsancom/google/android/gms/common/stats/ConnectionTracker;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lccsancom/google/android/gms/common/stats/ConnectionTracker;->zzfa:Lccsancom/google/android/gms/common/stats/ConnectionTracker;

    return-object v0
.end method


# virtual methods
.method public bindService(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Lccsanandroid/content/ServiceConnection;I)Z
    .locals 7

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lccsancom/google/android/gms/common/stats/ConnectionTracker;->zza(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/content/Intent;Lccsanandroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public unbindService(Lccsanandroid/content/Context;Lccsanandroid/content/ServiceConnection;)V
    .locals 0

    .line 25
    invoke-virtual {p1, p2}, Lccsanandroid/content/Context;->unbindService(Lccsanandroid/content/ServiceConnection;)V

    .line 26
    return-void
.end method

.method public final zza(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/content/Intent;Lccsanandroid/content/ServiceConnection;I)Z
    .locals 1

    .line 13
    nop

    .line 14
    nop

    .line 15
    invoke-virtual {p3}, Lccsanandroid/content/Intent;->getComponent()Lccsanandroid/content/ComponentName;

    move-result-object p2

    .line 16
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 17
    const/4 p2, 0x0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p2}, Lccsanandroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/google/android/gms/common/util/ClientLibraryUtils;->zzc(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    .line 19
    :goto_0
    if-eqz p2, :cond_1

    .line 20
    const-string p1, "ConnectionTracker"

    const-string p2, "Attempted to bind to a service in a STOPPED package."

    invoke-static {p1, p2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return v0

    .line 22
    :cond_1
    invoke-virtual {p1, p3, p4, p5}, Lccsanandroid/content/Context;->bindService(Lccsanandroid/content/Intent;Lccsanandroid/content/ServiceConnection;I)Z

    move-result p1

    .line 23
    return p1
.end method
