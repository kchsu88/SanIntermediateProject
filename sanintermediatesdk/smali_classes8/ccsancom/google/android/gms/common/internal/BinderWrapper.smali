.class public final Lccsancom/google/android/gms/common/internal/BinderWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/google/android/gms/common/internal/BinderWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcy:Lccsanandroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lccsancom/google/android/gms/common/internal/zza;

    invoke-direct {v0}, Lccsancom/google/android/gms/common/internal/zza;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/internal/BinderWrapper;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/gms/common/internal/BinderWrapper;->zzcy:Lccsanandroid/os/IBinder;

    .line 3
    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/IBinder;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/gms/common/internal/BinderWrapper;->zzcy:Lccsanandroid/os/IBinder;

    .line 6
    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BinderWrapper;->zzcy:Lccsanandroid/os/IBinder;

    .line 7
    return-void
.end method

.method private constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/gms/common/internal/BinderWrapper;->zzcy:Lccsanandroid/os/IBinder;

    .line 10
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readStrongBinder()Lccsanandroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BinderWrapper;->zzcy:Lccsanandroid/os/IBinder;

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lccsanandroid/os/Parcel;Lccsancom/google/android/gms/common/internal/zza;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lccsancom/google/android/gms/common/internal/BinderWrapper;-><init>(Lccsanandroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 0

    .line 13
    iget-object p2, p0, Lccsancom/google/android/gms/common/internal/BinderWrapper;->zzcy:Lccsanandroid/os/IBinder;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeStrongBinder(Lccsanandroid/os/IBinder;)V

    .line 14
    return-void
.end method
