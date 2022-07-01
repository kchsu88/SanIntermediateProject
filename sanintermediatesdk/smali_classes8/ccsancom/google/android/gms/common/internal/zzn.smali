.class public abstract Lccsancom/google/android/gms/common/internal/zzn;
.super Lccsancom/google/android/gms/internal/common/zzb;

# interfaces
.implements Lccsancom/google/android/gms/common/internal/zzm;


# direct methods
.method public static zzc(Lccsanandroid/os/IBinder;)Lccsancom/google/android/gms/common/internal/zzm;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    const-string v0, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

    invoke-interface {p0, v0}, Lccsanandroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Lccsanandroid/os/IInterface;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lccsancom/google/android/gms/common/internal/zzm;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lccsancom/google/android/gms/common/internal/zzm;

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Lccsancom/google/android/gms/common/internal/zzo;

    invoke-direct {v0, p0}, Lccsancom/google/android/gms/common/internal/zzo;-><init>(Lccsanandroid/os/IBinder;)V

    return-object v0
.end method
