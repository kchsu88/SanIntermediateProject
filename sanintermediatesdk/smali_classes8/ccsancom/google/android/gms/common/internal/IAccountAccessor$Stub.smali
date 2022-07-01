.class public abstract Lccsancom/google/android/gms/common/internal/IAccountAccessor$Stub;
.super Lccsancom/google/android/gms/internal/common/zzb;

# interfaces
.implements Lccsancom/google/android/gms/common/internal/IAccountAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/gms/common/internal/IAccountAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/gms/common/internal/IAccountAccessor$Stub$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-direct {p0, v0}, Lccsancom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method

.method public static asInterface(Lccsanandroid/os/IBinder;)Lccsancom/google/android/gms/common/internal/IAccountAccessor;
    .locals 2

    .line 3
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {p0, v0}, Lccsanandroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Lccsanandroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lccsancom/google/android/gms/common/internal/IAccountAccessor;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lccsancom/google/android/gms/common/internal/IAccountAccessor;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lccsancom/google/android/gms/common/internal/IAccountAccessor$Stub$zza;

    invoke-direct {v0, p0}, Lccsancom/google/android/gms/common/internal/IAccountAccessor$Stub$zza;-><init>(Lccsanandroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 9
    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 10
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/IAccountAccessor$Stub;->getAccount()Lccsanandroid/accounts/Account;

    move-result-object p1

    .line 11
    invoke-virtual {p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    .line 12
    invoke-static {p3, p1}, Lccsancom/google/android/gms/internal/common/zzc;->zzb(Lccsanandroid/os/Parcel;Lccsanandroid/os/Parcelable;)V

    .line 13
    const/4 p1, 0x1

    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
