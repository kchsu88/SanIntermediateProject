.class public Lccsancom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LegacyClientCallbackAdapter"
.end annotation


# instance fields
.field private final synthetic zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReportServiceBinding(Lccsancom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lccsancom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getScopes()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getRemoteService(Lccsancom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzg(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzg(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;->onConnectionFailed(Lccsancom/google/android/gms/common/ConnectionResult;)V

    .line 6
    :cond_1
    return-void
.end method
