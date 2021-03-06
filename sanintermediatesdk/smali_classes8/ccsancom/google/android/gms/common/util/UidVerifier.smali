.class public final Lccsancom/google/android/gms/common/util/UidVerifier;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGooglePlayServicesUid(Lccsanandroid/content/Context;I)Z
    .locals 3

    .line 2
    const-string v0, "com.google.android.gms"

    invoke-static {p0, p1, v0}, Lccsancom/google/android/gms/common/util/UidVerifier;->uidHasPackageName(Lccsanandroid/content/Context;ILjava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 3
    return v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object p1

    .line 5
    const/16 v2, 0x40

    .line 6
    :try_start_0
    invoke-virtual {p1, v0, v2}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    nop

    .line 12
    invoke-static {p0}, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->getInstance(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/common/GoogleSignatureVerifier;

    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->isGooglePublicSignedPackage(Lccsanandroid/content/pm/PackageInfo;)Z

    move-result p0

    .line 14
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const/4 p0, 0x3

    const-string p1, "UidVerifier"

    invoke-static {p1, p0}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 10
    const-string p0, "Package manager can\'t find google play services package, defaulting to false"

    invoke-static {p1, p0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_1
    return v1
.end method

.method public static uidHasPackageName(Lccsanandroid/content/Context;ILjava/lang/String;)Z
    .locals 0

    .line 15
    invoke-static {p0}, Lccsancom/google/android/gms/common/wrappers/Wrappers;->packageManager(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzb(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method
