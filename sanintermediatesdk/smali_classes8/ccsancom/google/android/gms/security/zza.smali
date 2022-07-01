.class final Lccsancom/google/android/gms/security/zza;
.super Lccsanandroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Lccsanandroid/content/Context;

.field private final synthetic zziw:Lccsancom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsancom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/google/android/gms/security/zza;->val$context:Lccsanandroid/content/Context;

    iput-object p2, p0, Lccsancom/google/android/gms/security/zza;->zziw:Lccsancom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;

    invoke-direct {p0}, Lccsanandroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private final varargs zza([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0

    .line 2
    :try_start_0
    iget-object p1, p0, Lccsancom/google/android/gms/security/zza;->val$context:Lccsanandroid/content/Context;

    invoke-static {p1}, Lccsancom/google/android/gms/security/ProviderInstaller;->installIfNeeded(Lccsanandroid/content/Context;)V
    :try_end_0
    .catch Lccsancom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lccsancom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    nop

    .line 6
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 5
    :catch_0
    move-exception p1

    iget p1, p1, Lccsancom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 4
    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lccsancom/google/android/gms/common/GooglePlayServicesRepairableException;->getConnectionStatusCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, [Ljava/lang/Void;

    invoke-direct {p0, p1}, Lccsancom/google/android/gms/security/zza;->zza([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iget-object p1, p0, Lccsancom/google/android/gms/security/zza;->zziw:Lccsancom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;

    invoke-interface {p1}, Lccsancom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;->onProviderInstalled()V

    return-void

    .line 10
    :cond_0
    invoke-static {}, Lccsancom/google/android/gms/security/ProviderInstaller;->zzak()Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/gms/security/zza;->val$context:Lccsanandroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "pi"

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Lccsanandroid/content/Context;ILjava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lccsancom/google/android/gms/security/zza;->zziw:Lccsancom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1, v0}, Lccsancom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;->onProviderInstallFailed(ILccsanandroid/content/Intent;)V

    .line 12
    return-void
.end method
