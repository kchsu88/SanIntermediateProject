.class public final Lccsancom/google/android/gms/common/zzk;
.super Lccsancom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/google/android/gms/common/zzk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaa:Z

.field private final zzy:Ljava/lang/String;

.field private final zzz:Lccsancom/google/android/gms/common/zze;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lccsancom/google/android/gms/common/zzl;

    invoke-direct {v0}, Lccsancom/google/android/gms/common/zzl;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/zzk;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lccsanandroid/os/IBinder;Z)V
    .locals 0
    .param p2    # Lccsanandroid/os/IBinder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lccsancom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lccsancom/google/android/gms/common/zzk;->zzy:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lccsancom/google/android/gms/common/zzk;->zza(Lccsanandroid/os/IBinder;)Lccsancom/google/android/gms/common/zze;

    move-result-object p1

    iput-object p1, p0, Lccsancom/google/android/gms/common/zzk;->zzz:Lccsancom/google/android/gms/common/zze;

    .line 4
    iput-boolean p3, p0, Lccsancom/google/android/gms/common/zzk;->zzaa:Z

    .line 5
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lccsancom/google/android/gms/common/zze;Z)V
    .locals 0
    .param p2    # Lccsancom/google/android/gms/common/zze;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0}, Lccsancom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 7
    iput-object p1, p0, Lccsancom/google/android/gms/common/zzk;->zzy:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lccsancom/google/android/gms/common/zzk;->zzz:Lccsancom/google/android/gms/common/zze;

    .line 9
    iput-boolean p3, p0, Lccsancom/google/android/gms/common/zzk;->zzaa:Z

    .line 10
    return-void
.end method

.method private static zza(Lccsanandroid/os/IBinder;)Lccsancom/google/android/gms/common/zze;
    .locals 3
    .param p0    # Lccsanandroid/os/IBinder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 30
    const-string v0, "Could not unwrap certificate"

    const-string v1, "GoogleCertificatesQuery"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 31
    return-object v2

    .line 32
    :cond_0
    nop

    .line 33
    :try_start_0
    invoke-static {p0}, Lccsancom/google/android/gms/common/internal/zzj;->zzb(Lccsanandroid/os/IBinder;)Lccsancom/google/android/gms/common/internal/zzi;

    move-result-object p0

    invoke-interface {p0}, Lccsancom/google/android/gms/common/internal/zzi;->zzb()Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    nop

    .line 38
    if-nez p0, :cond_1

    move-object p0, v2

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lccsancom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lccsancom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 39
    :goto_0
    if-eqz p0, :cond_2

    .line 40
    new-instance v2, Lccsancom/google/android/gms/common/zzf;

    invoke-direct {v2, p0}, Lccsancom/google/android/gms/common/zzf;-><init>([B)V

    goto :goto_1

    .line 41
    :cond_2
    invoke-static {v1, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_1
    return-object v2

    .line 35
    :catch_0
    move-exception p0

    .line 36
    invoke-static {v1, v0, p0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    return-object v2
.end method


# virtual methods
.method public final writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 3

    .line 11
    nop

    .line 12
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Lccsanandroid/os/Parcel;)I

    move-result p2

    .line 13
    nop

    .line 14
    iget-object v0, p0, Lccsancom/google/android/gms/common/zzk;->zzy:Ljava/lang/String;

    .line 15
    nop

    .line 16
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Lccsanandroid/os/Parcel;ILjava/lang/String;Z)V

    .line 17
    nop

    .line 18
    nop

    .line 19
    iget-object v0, p0, Lccsancom/google/android/gms/common/zzk;->zzz:Lccsancom/google/android/gms/common/zze;

    if-nez v0, :cond_0

    .line 20
    const-string v0, "GoogleCertificatesQuery"

    const-string v1, "certificate binder is null"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const/4 v0, 0x0

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lccsancom/google/android/gms/internal/common/zzb;->asBinder()Lccsanandroid/os/IBinder;

    move-result-object v0

    .line 23
    :goto_0
    nop

    .line 24
    const/4 v1, 0x2

    invoke-static {p1, v1, v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Lccsanandroid/os/Parcel;ILccsanandroid/os/IBinder;Z)V

    .line 25
    const/4 v0, 0x3

    .line 26
    iget-boolean v1, p0, Lccsancom/google/android/gms/common/zzk;->zzaa:Z

    .line 27
    invoke-static {p1, v0, v1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Lccsanandroid/os/Parcel;IZ)V

    .line 28
    invoke-static {p1, p2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Lccsanandroid/os/Parcel;I)V

    .line 29
    return-void
.end method
