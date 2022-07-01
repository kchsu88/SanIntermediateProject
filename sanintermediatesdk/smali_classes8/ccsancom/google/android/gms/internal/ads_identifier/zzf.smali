.class public abstract Lccsancom/google/android/gms/internal/ads_identifier/zzf;
.super Lccsancom/google/android/gms/internal/ads_identifier/zzb;

# interfaces
.implements Lccsancom/google/android/gms/internal/ads_identifier/zze;


# direct methods
.method public static zza(Lccsanandroid/os/IBinder;)Lccsancom/google/android/gms/internal/ads_identifier/zze;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-interface {p0, v0}, Lccsanandroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Lccsanandroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lccsancom/google/android/gms/internal/ads_identifier/zze;

    if-eqz v1, :cond_1

    check-cast v0, Lccsancom/google/android/gms/internal/ads_identifier/zze;

    return-object v0

    :cond_1
    new-instance v0, Lccsancom/google/android/gms/internal/ads_identifier/zzg;

    invoke-direct {v0, p0}, Lccsancom/google/android/gms/internal/ads_identifier/zzg;-><init>(Lccsanandroid/os/IBinder;)V

    return-object v0
.end method
