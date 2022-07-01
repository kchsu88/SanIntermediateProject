.class public abstract Lccsancom/google/android/gms/common/internal/BaseGmsClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzd;,
        Lccsancom/google/android/gms/common/internal/BaseGmsClient$zza;,
        Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzf;,
        Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzg;,
        Lccsancom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;,
        Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzc;,
        Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;,
        Lccsancom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;,
        Lccsancom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;,
        Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;,
        Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;,
        Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lccsanandroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CONNECT_STATE_CONNECTED:I = 0x4

.field public static final CONNECT_STATE_DISCONNECTED:I = 0x1

.field public static final CONNECT_STATE_DISCONNECTING:I = 0x5

.field public static final DEFAULT_ACCOUNT:Ljava/lang/String; = "<<default account>>"

.field public static final GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;

.field public static final KEY_PENDING_INTENT:Ljava/lang/String; = "pendingIntent"

.field private static final zzbs:[Lccsancom/google/android/gms/common/Feature;


# instance fields
.field private final mContext:Lccsanandroid/content/Context;

.field final mHandler:Lccsanandroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private zzbt:I

.field private zzbu:J

.field private zzbv:J

.field private zzbw:I

.field private zzbx:J

.field private zzby:Lccsancom/google/android/gms/common/internal/zzh;

.field private final zzbz:Lccsanandroid/os/Looper;

.field private final zzca:Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;

.field private final zzcb:Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

.field private final zzcc:Ljava/lang/Object;

.field private zzcd:Lccsancom/google/android/gms/common/internal/IGmsServiceBroker;

.field protected zzce:Lccsancom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

.field private zzcf:Lccsanandroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzcg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzc<",
            "*>;>;"
        }
    .end annotation
.end field

.field private zzch:Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;"
        }
    .end annotation
.end field

.field private zzci:I

.field private final zzcj:Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

.field private final zzck:Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

.field private final zzcl:I

.field private final zzcm:Ljava/lang/String;

.field private zzcn:Lccsancom/google/android/gms/common/ConnectionResult;

.field private zzco:Z

.field private volatile zzcp:Lccsancom/google/android/gms/common/internal/zzb;

.field protected zzcq:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 357
    const/4 v0, 0x0

    new-array v1, v0, [Lccsancom/google/android/gms/common/Feature;

    sput-object v1, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbs:[Lccsancom/google/android/gms/common/Feature;

    .line 358
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "service_esmobile"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string/jumbo v2, "service_googleme"

    aput-object v2, v1, v0

    sput-object v1, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/os/Handler;Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;ILccsancom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mLock:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcc:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcg:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzci:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcn:Lccsancom/google/android/gms/common/ConnectionResult;

    .line 34
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzco:Z

    .line 35
    iput-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcp:Lccsancom/google/android/gms/common/internal/zzb;

    .line 36
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    const-string v1, "Context must not be null"

    invoke-static {p1, v1}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/content/Context;

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mContext:Lccsanandroid/content/Context;

    .line 38
    const-string p1, "Handler must not be null"

    invoke-static {p2, p1}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/os/Handler;

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mHandler:Lccsanandroid/os/Handler;

    .line 39
    invoke-virtual {p2}, Lccsanandroid/os/Handler;->getLooper()Lccsanandroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbz:Lccsanandroid/os/Looper;

    .line 40
    const-string p1, "Supervisor must not be null"

    invoke-static {p3, p1}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzca:Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;

    .line 41
    nop

    .line 42
    const-string p1, "API availability must not be null"

    invoke-static {p4, p1}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcb:Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 43
    iput p5, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcl:I

    .line 44
    iput-object p6, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcj:Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    .line 45
    iput-object p7, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    .line 46
    iput-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcm:Ljava/lang/String;

    .line 47
    return-void
.end method

.method protected constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/os/Looper;ILccsancom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V
    .locals 9

    .line 1
    nop

    .line 2
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;->getInstance(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;

    move-result-object v3

    .line 3
    invoke-static {}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v4

    .line 4
    invoke-static {p4}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    move-object v6, p4

    check-cast v6, Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    .line 5
    invoke-static {p5}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    move-object v7, p4

    check-cast v7, Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    .line 6
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;-><init>(Lccsanandroid/content/Context;Lccsanandroid/os/Looper;Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;ILccsancom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method protected constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/os/Looper;Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;ILccsancom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mLock:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcc:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcg:Ljava/util/ArrayList;

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzci:I

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcn:Lccsancom/google/android/gms/common/ConnectionResult;

    .line 14
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzco:Z

    .line 15
    iput-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcp:Lccsancom/google/android/gms/common/internal/zzb;

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/content/Context;

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mContext:Lccsanandroid/content/Context;

    .line 18
    const-string p1, "Looper must not be null"

    invoke-static {p2, p1}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/os/Looper;

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbz:Lccsanandroid/os/Looper;

    .line 19
    const-string p1, "Supervisor must not be null"

    invoke-static {p3, p1}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzca:Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;

    .line 20
    nop

    .line 21
    const-string p1, "API availability must not be null"

    invoke-static {p4, p1}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcb:Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 22
    new-instance p1, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;

    invoke-direct {p1, p0, p2}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;-><init>(Lccsancom/google/android/gms/common/internal/BaseGmsClient;Lccsanandroid/os/Looper;)V

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mHandler:Lccsanandroid/os/Handler;

    .line 23
    iput p5, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcl:I

    .line 24
    iput-object p6, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcj:Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    .line 25
    iput-object p7, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    .line 26
    iput-object p8, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcm:Ljava/lang/String;

    .line 27
    return-void
.end method

.method static synthetic zza(Lccsancom/google/android/gms/common/internal/BaseGmsClient;Lccsancom/google/android/gms/common/ConnectionResult;)Lccsancom/google/android/gms/common/ConnectionResult;
    .locals 0

    .line 347
    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcn:Lccsancom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method static synthetic zza(Lccsancom/google/android/gms/common/internal/BaseGmsClient;Lccsancom/google/android/gms/common/internal/IGmsServiceBroker;)Lccsancom/google/android/gms/common/internal/IGmsServiceBroker;
    .locals 0

    .line 346
    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcd:Lccsancom/google/android/gms/common/internal/IGmsServiceBroker;

    return-object p1
.end method

.method static synthetic zza(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Ljava/lang/Object;
    .locals 0

    .line 345
    iget-object p0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcc:Ljava/lang/Object;

    return-object p0
.end method

.method private final zza(ILccsanandroid/os/IInterface;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 65
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 66
    iget-object v2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 67
    :try_start_0
    iput p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzci:I

    .line 68
    iput-object p2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcf:Lccsanandroid/os/IInterface;

    .line 69
    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->onSetConnectState(ILccsanandroid/os/IInterface;)V

    .line 70
    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 113
    :pswitch_0
    invoke-virtual {p0, p2}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->onConnectedLocked(Lccsanandroid/os/IInterface;)V

    .line 114
    goto/16 :goto_4

    .line 71
    :pswitch_1
    nop

    .line 72
    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzch:Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzby:Lccsancom/google/android/gms/common/internal/zzh;

    if-eqz p1, :cond_3

    .line 73
    const-string p2, "GmsClient"

    .line 74
    invoke-virtual {p1}, Lccsancom/google/android/gms/common/internal/zzh;->zzt()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzby:Lccsancom/google/android/gms/common/internal/zzh;

    .line 75
    invoke-virtual {v4}, Lccsancom/google/android/gms/common/internal/zzh;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x46

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {p2, p1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v4, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzca:Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;

    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzby:Lccsancom/google/android/gms/common/internal/zzh;

    .line 78
    invoke-virtual {p1}, Lccsancom/google/android/gms/common/internal/zzh;->zzt()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzby:Lccsancom/google/android/gms/common/internal/zzh;

    .line 79
    invoke-virtual {p1}, Lccsancom/google/android/gms/common/internal/zzh;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzby:Lccsancom/google/android/gms/common/internal/zzh;

    .line 80
    invoke-virtual {p1}, Lccsancom/google/android/gms/common/internal/zzh;->zzq()I

    move-result v7

    iget-object v8, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzch:Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;

    .line 81
    invoke-direct {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzj()Ljava/lang/String;

    move-result-object v9

    .line 82
    invoke-virtual/range {v4 .. v9}, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;->zza(Ljava/lang/String;Ljava/lang/String;ILccsanandroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 84
    :cond_3
    new-instance p1, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;

    iget-object p2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;-><init>(Lccsancom/google/android/gms/common/internal/BaseGmsClient;I)V

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzch:Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;

    .line 85
    nop

    .line 86
    iget p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzci:I

    const/4 p2, 0x3

    const/16 v4, 0x81

    if-ne p1, p2, :cond_4

    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getLocalStartServiceAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 87
    new-instance p1, Lccsancom/google/android/gms/common/internal/zzh;

    .line 88
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getContext()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 89
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getLocalStartServiceAction()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-direct {p1, p2, v1, v0, v4}, Lccsancom/google/android/gms/common/internal/zzh;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 91
    goto :goto_3

    .line 92
    :cond_4
    new-instance p1, Lccsancom/google/android/gms/common/internal/zzh;

    .line 93
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getStartServicePackage()Ljava/lang/String;

    move-result-object p2

    .line 94
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getStartServiceAction()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-direct {p1, p2, v0, v1, v4}, Lccsancom/google/android/gms/common/internal/zzh;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 96
    :goto_3
    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzby:Lccsancom/google/android/gms/common/internal/zzh;

    .line 97
    iget-object p2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzca:Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;

    .line 98
    invoke-virtual {p1}, Lccsancom/google/android/gms/common/internal/zzh;->zzt()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzby:Lccsancom/google/android/gms/common/internal/zzh;

    .line 99
    invoke-virtual {v0}, Lccsancom/google/android/gms/common/internal/zzh;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzby:Lccsancom/google/android/gms/common/internal/zzh;

    .line 100
    invoke-virtual {v1}, Lccsancom/google/android/gms/common/internal/zzh;->zzq()I

    move-result v1

    iget-object v4, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzch:Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;

    .line 101
    invoke-direct {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzj()Ljava/lang/String;

    move-result-object v5

    .line 102
    nop

    .line 103
    new-instance v6, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    invoke-direct {v6, p1, v0, v1}, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2, v6, v4, v5}, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;->zza(Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;Lccsanandroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result p1

    .line 104
    if-nez p1, :cond_5

    .line 105
    const-string p1, "GmsClient"

    iget-object p2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzby:Lccsancom/google/android/gms/common/internal/zzh;

    .line 106
    invoke-virtual {p2}, Lccsancom/google/android/gms/common/internal/zzh;->zzt()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzby:Lccsancom/google/android/gms/common/internal/zzh;

    .line 107
    invoke-virtual {v0}, Lccsancom/google/android/gms/common/internal/zzh;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "unable to connect to service: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 108
    invoke-static {p1, p2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/16 p1, 0x10

    iget-object p2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 110
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    .line 111
    invoke-virtual {p0, p1, v3, p2}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(ILccsanandroid/os/Bundle;I)V

    .line 112
    :cond_5
    goto :goto_4

    .line 115
    :pswitch_2
    nop

    .line 116
    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzch:Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;

    if-eqz p1, :cond_6

    .line 117
    iget-object v4, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzca:Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;

    .line 118
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getStartServiceAction()Ljava/lang/String;

    move-result-object v5

    .line 119
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getStartServicePackage()Ljava/lang/String;

    move-result-object v6

    .line 120
    const/16 v7, 0x81

    iget-object v8, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzch:Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;

    .line 121
    invoke-direct {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzj()Ljava/lang/String;

    move-result-object v9

    .line 122
    invoke-virtual/range {v4 .. v9}, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;->zza(Ljava/lang/String;Ljava/lang/String;ILccsanandroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 123
    iput-object v3, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzch:Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;

    .line 124
    :cond_6
    :goto_4
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic zza(Lccsancom/google/android/gms/common/internal/BaseGmsClient;I)V
    .locals 0

    .line 344
    const/16 p1, 0x10

    invoke-direct {p0, p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzb(I)V

    return-void
.end method

.method static synthetic zza(Lccsancom/google/android/gms/common/internal/BaseGmsClient;ILccsanandroid/os/IInterface;)V
    .locals 0

    .line 350
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(ILccsanandroid/os/IInterface;)V

    return-void
.end method

.method static synthetic zza(Lccsancom/google/android/gms/common/internal/BaseGmsClient;Lccsancom/google/android/gms/common/internal/zzb;)V
    .locals 0

    .line 356
    invoke-direct {p0, p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(Lccsancom/google/android/gms/common/internal/zzb;)V

    return-void
.end method

.method private final zza(Lccsancom/google/android/gms/common/internal/zzb;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcp:Lccsancom/google/android/gms/common/internal/zzb;

    .line 52
    return-void
.end method

.method private final zza(IILccsanandroid/os/IInterface;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzci:I

    if-eq v1, p1, :cond_0

    .line 128
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 129
    :cond_0
    invoke-direct {p0, p2, p3}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(ILccsanandroid/os/IInterface;)V

    .line 130
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 131
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic zza(Lccsancom/google/android/gms/common/internal/BaseGmsClient;IILccsanandroid/os/IInterface;)Z
    .locals 0

    .line 353
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(IILccsanandroid/os/IInterface;)Z

    move-result p0

    return p0
.end method

.method private final zzb(I)V
    .locals 3

    .line 171
    invoke-direct {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzk()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    const/4 p1, 0x5

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzco:Z

    goto :goto_0

    .line 174
    :cond_0
    const/4 p1, 0x4

    .line 175
    :goto_0
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mHandler:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, p1, v1, v2}, Lccsanandroid/os/Handler;->obtainMessage(III)Lccsanandroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 176
    return-void
.end method

.method static synthetic zzb(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Z
    .locals 0

    .line 348
    invoke-direct {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzl()Z

    move-result p0

    return p0
.end method

.method static synthetic zzc(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Z
    .locals 0

    .line 349
    iget-boolean p0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzco:Z

    return p0
.end method

.method static synthetic zzd(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Lccsancom/google/android/gms/common/ConnectionResult;
    .locals 0

    .line 351
    iget-object p0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcn:Lccsancom/google/android/gms/common/ConnectionResult;

    return-object p0
.end method

.method static synthetic zze(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
    .locals 0

    .line 352
    iget-object p0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcj:Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    return-object p0
.end method

.method static synthetic zzf(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Ljava/util/ArrayList;
    .locals 0

    .line 354
    iget-object p0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcg:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic zzg(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;
    .locals 0

    .line 355
    iget-object p0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzck:Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    return-object p0
.end method

.method private final zzj()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcm:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private final zzk()Z
    .locals 3

    .line 150
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    iget v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzci:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final zzl()Z
    .locals 2

    .line 330
    iget-boolean v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzco:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 331
    return v1

    .line 332
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    return v1

    .line 334
    :cond_1
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getLocalStartServiceAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    return v1

    .line 336
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    const/4 v0, 0x1

    return v0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    return v1
.end method


# virtual methods
.method public checkAvailabilityAndConnect()V
    .locals 3

    .line 132
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcb:Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mContext:Lccsanandroid/content/Context;

    .line 133
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getMinApkVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Lccsanandroid/content/Context;I)I

    move-result v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(ILccsanandroid/os/IInterface;)V

    .line 136
    new-instance v1, Lccsancom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;

    invoke-direct {v1, p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;-><init>(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)V

    invoke-virtual {p0, v1, v0, v2}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->triggerNotAvailable(Lccsancom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;ILccsanandroid/app/PendingIntent;)V

    .line 137
    return-void

    .line 138
    :cond_0
    new-instance v0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;

    invoke-direct {v0, p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;-><init>(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)V

    invoke-virtual {p0, v0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->connect(Lccsancom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    .line 139
    return-void
.end method

.method protected final checkConnected()V
    .locals 2

    .line 197
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    return-void

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect(Lccsancom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V
    .locals 1

    .line 140
    nop

    .line 141
    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzce:Lccsancom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 142
    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(ILccsanandroid/os/IInterface;)V

    .line 143
    return-void
.end method

.method protected abstract createServiceInterface(Lccsanandroid/os/IBinder;)Lccsanandroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public disconnect()V
    .locals 4

    .line 153
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 154
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcg:Ljava/util/ArrayList;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 156
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 157
    iget-object v3, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcg:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzc;

    invoke-virtual {v3}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzc;->removeListener()V

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 160
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcc:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcd:Lccsancom/google/android/gms/common/internal/IGmsServiceBroker;

    .line 163
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(ILccsanandroid/os/IInterface;)V

    .line 165
    return-void

    .line 163
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 160
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 266
    iget-object p2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 267
    :try_start_0
    iget p4, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzci:I

    .line 268
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcf:Lccsanandroid/os/IInterface;

    .line 269
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 270
    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcc:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    :try_start_1
    iget-object p2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcd:Lccsancom/google/android/gms/common/internal/IGmsServiceBroker;

    .line 272
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "mConnectState="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 274
    packed-switch p4, :pswitch_data_0

    .line 285
    const-string p4, "UNKNOWN"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :pswitch_0
    const-string p4, "DISCONNECTING"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    goto :goto_0

    .line 279
    :pswitch_1
    const-string p4, "CONNECTED"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    goto :goto_0

    .line 277
    :pswitch_2
    const-string p4, "LOCAL_CONNECTING"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    goto :goto_0

    .line 275
    :pswitch_3
    const-string p4, "REMOTE_CONNECTING"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 276
    goto :goto_0

    .line 283
    :pswitch_4
    const-string p4, "DISCONNECTED"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    nop

    .line 286
    :goto_0
    const-string p4, " mService="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 287
    if-nez v0, :cond_0

    .line 288
    const-string p4, "null"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1

    .line 289
    :cond_0
    nop

    .line 290
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    const-string v1, "@"

    .line 291
    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    .line 292
    invoke-interface {v0}, Lccsanandroid/os/IInterface;->asBinder()Lccsanandroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 293
    :goto_1
    const-string p4, " mServiceBroker="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 294
    if-nez p2, :cond_1

    .line 295
    const-string p2, "null"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 296
    :cond_1
    const-string p4, "IGmsServiceBroker@"

    .line 297
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    .line 298
    invoke-interface {p2}, Lccsancom/google/android/gms/common/internal/IGmsServiceBroker;->asBinder()Lccsanandroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    :goto_2
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string/jumbo p4, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p2, p4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 300
    iget-wide v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbv:J

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-lez p4, :cond_2

    .line 301
    nop

    .line 302
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    const-string v0, "lastConnectedTime="

    .line 303
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    iget-wide v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbv:J

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbv:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 304
    invoke-virtual {p2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    :cond_2
    iget-wide v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbu:J

    cmp-long p4, v0, v2

    if-lez p4, :cond_3

    .line 306
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    const-string v0, "lastSuspendedCause="

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 307
    iget p4, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbt:I

    packed-switch p4, :pswitch_data_1

    .line 312
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_3

    .line 310
    :pswitch_5
    const-string p4, "CAUSE_NETWORK_LOST"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 311
    goto :goto_3

    .line 308
    :pswitch_6
    const-string p4, "CAUSE_SERVICE_DISCONNECTED"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 309
    nop

    .line 313
    :goto_3
    const-string p4, " lastSuspendedTime="

    .line 314
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    iget-wide v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbu:J

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbu:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 315
    invoke-virtual {p2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    :cond_3
    iget-wide v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbx:J

    cmp-long p4, v0, v2

    if-lez p4, :cond_4

    .line 317
    nop

    .line 318
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string p4, "lastFailedStatus="

    .line 319
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget p4, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbw:I

    .line 320
    invoke-static {p4}, Lccsancom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 321
    const-string p1, " lastFailedTime="

    .line 322
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget-wide p3, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbx:J

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbx:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 323
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    :cond_4
    return-void

    .line 272
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 269
    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public getAccount()Lccsanandroid/accounts/Account;
    .locals 1

    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApiFeatures()[Lccsancom/google/android/gms/common/Feature;
    .locals 1

    .line 187
    sget-object v0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbs:[Lccsancom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public final getAvailableFeatures()[Lccsancom/google/android/gms/common/Feature;
    .locals 1

    .line 53
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcp:Lccsancom/google/android/gms/common/internal/zzb;

    .line 54
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    iget-object v0, v0, Lccsancom/google/android/gms/common/internal/zzb;->zzda:[Lccsancom/google/android/gms/common/Feature;

    .line 56
    return-object v0
.end method

.method public getConnectionHint()Lccsanandroid/os/Bundle;
    .locals 1

    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()Lccsanandroid/content/Context;
    .locals 1

    .line 184
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mContext:Lccsanandroid/content/Context;

    return-object v0
.end method

.method public getEndpointPackageName()Ljava/lang/String;
    .locals 2

    .line 340
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzby:Lccsancom/google/android/gms/common/internal/zzh;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Lccsancom/google/android/gms/common/internal/zzh;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 342
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect when checking package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getGetServiceRequestExtraArgs()Lccsanandroid/os/Bundle;
    .locals 1

    .line 188
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method protected getLocalStartServiceAction()Ljava/lang/String;
    .locals 1

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLooper()Lccsanandroid/os/Looper;
    .locals 1

    .line 185
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbz:Lccsanandroid/os/Looper;

    return-object v0
.end method

.method public getMinApkVersion()I
    .locals 1

    .line 343
    sget v0, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    return v0
.end method

.method public getRemoteService(Lccsancom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/gms/common/internal/IAccountAccessor;",
            "Ljava/util/Set<",
            "Lccsancom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getGetServiceRequestExtraArgs()Lccsanandroid/os/Bundle;

    move-result-object v0

    .line 209
    new-instance v1, Lccsancom/google/android/gms/common/internal/GetServiceRequest;

    iget v2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcl:I

    invoke-direct {v1, v2}, Lccsancom/google/android/gms/common/internal/GetServiceRequest;-><init>(I)V

    iget-object v2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mContext:Lccsanandroid/content/Context;

    .line 210
    invoke-virtual {v2}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 211
    iput-object v2, v1, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdh:Ljava/lang/String;

    .line 212
    nop

    .line 213
    nop

    .line 214
    nop

    .line 215
    iput-object v0, v1, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdk:Lccsanandroid/os/Bundle;

    .line 216
    nop

    .line 217
    nop

    .line 218
    if-eqz p2, :cond_0

    .line 219
    nop

    .line 220
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lccsancom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lccsancom/google/android/gms/common/api/Scope;

    iput-object p2, v1, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdj:[Lccsancom/google/android/gms/common/api/Scope;

    .line 221
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->requiresSignIn()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 222
    nop

    .line 223
    nop

    .line 224
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getAccount()Lccsanandroid/accounts/Account;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getAccount()Lccsanandroid/accounts/Account;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p2, Lccsanandroid/accounts/Account;

    const-string v0, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {p2, v0, v2}, Lccsanandroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_0
    nop

    .line 226
    iput-object p2, v1, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdl:Lccsanandroid/accounts/Account;

    .line 227
    nop

    .line 228
    nop

    .line 229
    nop

    .line 230
    if-eqz p1, :cond_2

    .line 231
    invoke-interface {p1}, Lccsancom/google/android/gms/common/internal/IAccountAccessor;->asBinder()Lccsanandroid/os/IBinder;

    move-result-object p1

    iput-object p1, v1, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdi:Lccsanandroid/os/IBinder;

    .line 232
    :cond_2
    goto :goto_1

    .line 233
    :cond_3
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->requiresAccount()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 234
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getAccount()Lccsanandroid/accounts/Account;

    move-result-object p1

    .line 235
    iput-object p1, v1, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdl:Lccsanandroid/accounts/Account;

    .line 236
    :cond_4
    :goto_1
    nop

    .line 237
    sget-object p1, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbs:[Lccsancom/google/android/gms/common/Feature;

    .line 238
    nop

    .line 239
    iput-object p1, v1, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdm:[Lccsancom/google/android/gms/common/Feature;

    .line 240
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getApiFeatures()[Lccsancom/google/android/gms/common/Feature;

    move-result-object p1

    .line 241
    iput-object p1, v1, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdn:[Lccsancom/google/android/gms/common/Feature;

    .line 242
    :try_start_0
    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcc:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Lccsanandroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :try_start_1
    iget-object p2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcd:Lccsancom/google/android/gms/common/internal/IGmsServiceBroker;

    if-eqz p2, :cond_5

    .line 244
    new-instance v0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzd;

    iget-object v2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzd;-><init>(Lccsancom/google/android/gms/common/internal/BaseGmsClient;I)V

    invoke-interface {p2, v0, v1}, Lccsancom/google/android/gms/common/internal/IGmsServiceBroker;->getService(Lccsancom/google/android/gms/common/internal/IGmsCallbacks;Lccsancom/google/android/gms/common/internal/GetServiceRequest;)V

    goto :goto_2

    .line 245
    :cond_5
    const-string p2, "GmsClient"

    const-string v0, "mServiceBroker is null, client disconnected"

    invoke-static {p2, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Lccsanandroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lccsanandroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 252
    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 253
    :goto_3
    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    invoke-static {p2, v0, p1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    const/16 p1, 0x8

    iget-object p2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 255
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->onPostInitHandler(ILccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;I)V

    .line 257
    return-void

    .line 251
    :catch_2
    move-exception p1

    throw p1

    .line 247
    :catch_3
    move-exception p1

    .line 248
    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    invoke-static {p2, v0, p1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->triggerConnectionSuspended(I)V

    .line 250
    return-void
.end method

.method protected getScopes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lccsancom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 265
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public final getService()Lccsanandroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/DeadObjectException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iget v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzci:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 204
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 205
    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcf:Lccsanandroid/os/IInterface;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Client is connected but service is null"

    invoke-static {v1, v2}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 206
    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcf:Lccsanandroid/os/IInterface;

    monitor-exit v0

    return-object v1

    .line 203
    :cond_1
    new-instance v1, Lccsanandroid/os/DeadObjectException;

    invoke-direct {v1}, Lccsanandroid/os/DeadObjectException;-><init>()V

    throw v1

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServiceBrokerBinder()Lccsanandroid/os/IBinder;
    .locals 2

    .line 325
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcc:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_0
    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcd:Lccsancom/google/android/gms/common/internal/IGmsServiceBroker;

    if-nez v1, :cond_0

    .line 327
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 328
    :cond_0
    invoke-interface {v1}, Lccsancom/google/android/gms/common/internal/IGmsServiceBroker;->asBinder()Lccsanandroid/os/IBinder;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 329
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract getServiceDescriptor()Ljava/lang/String;
.end method

.method public getSignInIntent()Lccsanandroid/content/Intent;
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a sign in API"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getStartServiceAction()Ljava/lang/String;
.end method

.method protected getStartServicePackage()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method public isConnected()Z
    .locals 3

    .line 144
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    iget v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzci:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isConnecting()Z
    .locals 3

    .line 147
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    iget v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzci:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    .line 149
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onConnectedLocked(Lccsanandroid/os/IInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbv:J

    .line 58
    return-void
.end method

.method protected onConnectionFailed(Lccsancom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 62
    invoke-virtual {p1}, Lccsancom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result p1

    iput p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbw:I

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbx:J

    .line 64
    return-void
.end method

.method protected onConnectionSuspended(I)V
    .locals 2

    .line 59
    iput p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbt:I

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzbu:J

    .line 61
    return-void
.end method

.method protected onPostInitHandler(ILccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;I)V
    .locals 2

    .line 189
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mHandler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzf;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzf;-><init>(Lccsancom/google/android/gms/common/internal/BaseGmsClient;ILccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;)V

    .line 190
    const/4 p1, 0x1

    const/4 p2, -0x1

    invoke-virtual {v0, p1, p4, p2, v1}, Lccsanandroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object p1

    .line 191
    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 192
    return-void
.end method

.method onSetConnectState(ILccsanandroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 125
    return-void
.end method

.method public onUserSignOut(Lccsancom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;)V
    .locals 0

    .line 259
    invoke-interface {p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;->onSignOutComplete()V

    .line 260
    return-void
.end method

.method public providesSignIn()Z
    .locals 1

    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public requiresAccount()Z
    .locals 1

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public requiresGooglePlayServices()Z
    .locals 1

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public requiresSignIn()Z
    .locals 1

    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public triggerConnectionSuspended(I)V
    .locals 3

    .line 166
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mHandler:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 167
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 168
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1, p1}, Lccsanandroid/os/Handler;->obtainMessage(III)Lccsanandroid/os/Message;

    move-result-object p1

    .line 169
    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 170
    return-void
.end method

.method protected triggerNotAvailable(Lccsancom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;ILccsanandroid/app/PendingIntent;)V
    .locals 2

    .line 177
    nop

    .line 178
    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzce:Lccsancom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 179
    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mHandler:Lccsanandroid/os/Handler;

    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 180
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 181
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0, p2, p3}, Lccsanandroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object p2

    .line 182
    invoke-virtual {p1, p2}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 183
    return-void
.end method

.method protected final zza(ILccsanandroid/os/Bundle;I)V
    .locals 2

    .line 193
    iget-object p2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mHandler:Lccsanandroid/os/Handler;

    new-instance v0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzg;-><init>(Lccsancom/google/android/gms/common/internal/BaseGmsClient;ILccsanandroid/os/Bundle;)V

    .line 194
    const/4 p1, 0x7

    const/4 v1, -0x1

    invoke-virtual {p2, p1, p3, v1, v0}, Lccsanandroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object p1

    .line 195
    invoke-virtual {p2, p1}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 196
    return-void
.end method
