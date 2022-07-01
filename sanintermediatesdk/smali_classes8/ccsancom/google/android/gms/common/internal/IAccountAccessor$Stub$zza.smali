.class public final Lccsancom/google/android/gms/common/internal/IAccountAccessor$Stub$zza;
.super Lccsancom/google/android/gms/internal/common/zza;

# interfaces
.implements Lccsancom/google/android/gms/common/internal/IAccountAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/gms/common/internal/IAccountAccessor$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# direct methods
.method constructor <init>(Lccsanandroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/gms/internal/common/zza;-><init>(Lccsanandroid/os/IBinder;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final getAccount()Lccsanandroid/accounts/Account;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lccsancom/google/android/gms/internal/common/zza;->zza()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 4
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lccsancom/google/android/gms/internal/common/zza;->zza(ILccsanandroid/os/Parcel;)Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 5
    sget-object v1, Lccsanandroid/accounts/Account;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lccsancom/google/android/gms/internal/common/zzc;->zza(Lccsanandroid/os/Parcel;Lccsanandroid/os/Parcelable$Creator;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lccsanandroid/accounts/Account;

    .line 6
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 7
    return-object v1
.end method
