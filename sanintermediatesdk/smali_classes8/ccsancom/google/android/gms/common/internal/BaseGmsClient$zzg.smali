.class public final Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzg;
.super Lccsancom/google/android/gms/common/internal/BaseGmsClient$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/gms/common/internal/BaseGmsClient$zza;"
    }
.end annotation


# instance fields
.field private final synthetic zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lccsancom/google/android/gms/common/internal/BaseGmsClient;ILccsanandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzg;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    .line 2
    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zza;-><init>(Lccsancom/google/android/gms/common/internal/BaseGmsClient;ILccsanandroid/os/Bundle;)V

    .line 3
    return-void
.end method


# virtual methods
.method protected final zza(Lccsancom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzg;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v0, v0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzce:Lccsancom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    invoke-interface {v0, p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lccsancom/google/android/gms/common/ConnectionResult;)V

    .line 5
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzg;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0, p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lccsancom/google/android/gms/common/ConnectionResult;)V

    .line 6
    return-void
.end method

.method protected final zzm()Z
    .locals 2

    .line 7
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzg;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v0, v0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzce:Lccsancom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    sget-object v1, Lccsancom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lccsancom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lccsancom/google/android/gms/common/ConnectionResult;)V

    .line 8
    const/4 v0, 0x1

    return v0
.end method
