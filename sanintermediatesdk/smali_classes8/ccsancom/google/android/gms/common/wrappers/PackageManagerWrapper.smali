.class public Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;
.super Ljava/lang/Object;


# instance fields
.field private final zzhv:Lccsanandroid/content/Context;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhv:Lccsanandroid/content/Context;

    .line 3
    return-void
.end method


# virtual methods
.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .locals 1

    .line 22
    iget-object v0, p0, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhv:Lccsanandroid/content/Context;

    invoke-virtual {v0, p1}, Lccsanandroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 23
    iget-object v0, p0, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhv:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/ApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhv:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhv:Lccsanandroid/content/Context;

    .line 25
    invoke-virtual {v0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhv:Lccsanandroid/content/Context;

    .line 26
    invoke-virtual {v1}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lccsanandroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsanandroid/content/pm/PackageManager;->getApplicationLabel(Lccsanandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 27
    return-object p1
.end method

.method public getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhv:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public final getPackagesForUid(I)[Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhv:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isCallerInstantApp()Z
    .locals 2

    .line 28
    invoke-static {}, Lccsanandroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Lccsanandroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhv:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/google/android/gms/common/wrappers/InstantApps;->isInstantApp(Lccsanandroid/content/Context;)Z

    move-result v0

    return v0

    .line 30
    :cond_0
    invoke-static {}, Lccsancom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhv:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    nop

    .line 34
    iget-object v1, p0, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhv:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/content/pm/PackageManager;->isInstantApp(Ljava/lang/String;)Z

    move-result v0

    .line 35
    return v0

    .line 36
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zza(Ljava/lang/String;II)Lccsanandroid/content/pm/PackageInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 6
    iget-object p2, p0, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhv:Lccsanandroid/content/Context;

    invoke-virtual {p2}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object p2

    const/16 p3, 0x40

    invoke-virtual {p2, p1, p3}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(ILjava/lang/String;)Z
    .locals 4

    .line 8
    invoke-static {}, Lccsancom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 9
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhv:Lccsanandroid/content/Context;

    const-string v3, "appops"

    .line 10
    invoke-virtual {v0, v3}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/AppOpsManager;

    .line 11
    invoke-virtual {v0, p1, p2}, Lccsanandroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return v1

    .line 13
    :catch_0
    move-exception p1

    .line 14
    return v2

    .line 15
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhv:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 16
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 17
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 18
    aget-object v3, p1, v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 19
    return v1

    .line 20
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_2
    return v2
.end method
