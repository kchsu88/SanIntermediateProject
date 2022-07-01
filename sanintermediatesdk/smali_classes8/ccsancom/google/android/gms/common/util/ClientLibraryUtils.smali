.class public Lccsancom/google/android/gms/common/util/ClientLibraryUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClientVersion(Lccsanandroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 2
    invoke-static {p0, p1}, Lccsancom/google/android/gms/common/util/ClientLibraryUtils;->zzb(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p0

    .line 3
    const/4 p1, -0x1

    if-eqz p0, :cond_2

    iget-object v0, p0, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lccsanandroid/content/pm/ApplicationInfo;->metaData:Lccsanandroid/os/Bundle;

    .line 6
    if-nez p0, :cond_1

    .line 7
    return p1

    .line 8
    :cond_1
    const-string v0, "com.google.android.gms.version"

    invoke-virtual {p0, v0, p1}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 9
    return p0

    .line 4
    :cond_2
    :goto_0
    return p1
.end method

.method public static isPackageSide()Z
    .locals 1

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method private static zzb(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/pm/PackageInfo;
    .locals 1

    .line 10
    nop

    .line 11
    :try_start_0
    invoke-static {p0}, Lccsancom/google/android/gms/common/wrappers/Wrappers;->packageManager(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0

    const/16 v0, 0x80

    .line 12
    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    nop

    .line 16
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzc(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 17
    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lccsancom/google/android/gms/common/wrappers/Wrappers;->packageManager(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 19
    iget p0, p0, Lccsanandroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 p1, 0x200000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    return v0
.end method
