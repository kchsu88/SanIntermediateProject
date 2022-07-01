.class public Lccsancom/google/android/gms/security/ProviderInstaller;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;
    }
.end annotation


# static fields
.field public static final PROVIDER_NAME:Ljava/lang/String; = "GmsCore_OpenSSL"

.field private static final lock:Ljava/lang/Object;

.field private static final zziu:Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

.field private static zziv:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/gms/security/ProviderInstaller;->zziu:Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/security/ProviderInstaller;->lock:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lccsancom/google/android/gms/security/ProviderInstaller;->zziv:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installIfNeeded(Lccsanandroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/gms/common/GooglePlayServicesRepairableException;,
            Lccsancom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    .line 2
    const-string v0, "Context must not be null"

    invoke-static {p0, v0}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lccsancom/google/android/gms/security/ProviderInstaller;->zziu:Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

    const v1, 0xb5f608

    invoke-virtual {v0, p0, v1}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->verifyGooglePlayServicesIsAvailable(Lccsanandroid/content/Context;I)V

    .line 4
    const/16 v0, 0x8

    const/4 v1, 0x6

    :try_start_0
    invoke-static {p0}, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->getRemoteContext(Lccsanandroid/content/Context;)Lccsanandroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Lccsanandroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    nop

    .line 10
    if-nez p0, :cond_1

    .line 11
    const-string p0, "ProviderInstaller"

    invoke-static {p0, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 12
    const-string p0, "ProviderInstaller"

    const-string v1, "Failed to get remote context"

    invoke-static {p0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    new-instance p0, Lccsancom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {p0, v0}, Lccsancom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw p0

    .line 14
    :cond_1
    sget-object v2, Lccsancom/google/android/gms/security/ProviderInstaller;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 15
    :try_start_1
    sget-object v3, Lccsancom/google/android/gms/security/ProviderInstaller;->zziv:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    .line 16
    nop

    .line 17
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 18
    const-string v6, "com.google.android.gms.common.security.ProviderInstallerImpl"

    invoke-virtual {v3, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 19
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Lccsanandroid/content/Context;

    aput-object v7, v6, v4

    .line 20
    const-string v7, "insertProvider"

    invoke-virtual {v3, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lccsancom/google/android/gms/security/ProviderInstaller;->zziv:Ljava/lang/reflect/Method;

    .line 21
    :cond_2
    sget-object v3, Lccsancom/google/android/gms/security/ProviderInstaller;->zziv:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    nop

    .line 29
    :try_start_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 23
    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 25
    const-string v4, "ProviderInstaller"

    invoke-static {v4, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 26
    if-nez v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 27
    :goto_0
    const-string v1, "ProviderInstaller"

    const-string v3, "Failed to install provider: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1, p0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_5
    new-instance p0, Lccsancom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {p0, v0}, Lccsancom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw p0

    .line 29
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 6
    :catch_1
    move-exception p0

    .line 7
    const-string p0, "ProviderInstaller"

    invoke-static {p0, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 8
    const-string p0, "ProviderInstaller"

    const-string v1, "Failed to get remote context - resource not found"

    invoke-static {p0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_6
    new-instance p0, Lccsancom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {p0, v0}, Lccsancom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw p0
.end method

.method public static installIfNeededAsync(Lccsanandroid/content/Context;Lccsancom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V
    .locals 1

    .line 30
    const-string v0, "Context must not be null"

    invoke-static {p0, v0}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v0, "Listener must not be null"

    invoke-static {p1, v0}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "Must be called on the UI thread"

    invoke-static {v0}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 33
    new-instance v0, Lccsancom/google/android/gms/security/zza;

    invoke-direct {v0, p0, p1}, Lccsancom/google/android/gms/security/zza;-><init>(Lccsanandroid/content/Context;Lccsancom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V

    .line 34
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lccsanandroid/os/AsyncTask;->execute([Ljava/lang/Object;)Lccsanandroid/os/AsyncTask;

    .line 35
    return-void
.end method

.method static synthetic zzak()Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;
    .locals 1

    .line 36
    sget-object v0, Lccsancom/google/android/gms/security/ProviderInstaller;->zziu:Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

    return-object v0
.end method
