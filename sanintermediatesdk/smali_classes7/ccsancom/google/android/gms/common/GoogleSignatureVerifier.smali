.class public Lccsancom/google/android/gms/common/GoogleSignatureVerifier;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static zzal:Lccsancom/google/android/gms/common/GoogleSignatureVerifier;


# instance fields
.field private final mContext:Lccsanandroid/content/Context;

.field private volatile zzam:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Lccsanandroid/content/Context;

    .line 3
    return-void
.end method

.method public static getInstance(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/common/GoogleSignatureVerifier;
    .locals 2

    .line 4
    invoke-static {p0}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v0, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->zzal:Lccsancom/google/android/gms/common/GoogleSignatureVerifier;

    if-nez v1, :cond_0

    .line 7
    invoke-static {p0}, Lccsancom/google/android/gms/common/zzc;->zza(Lccsanandroid/content/Context;)V

    .line 8
    new-instance v1, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;

    invoke-direct {v1, p0}, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;-><init>(Lccsanandroid/content/Context;)V

    sput-object v1, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->zzal:Lccsancom/google/android/gms/common/GoogleSignatureVerifier;

    .line 9
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-object p0, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->zzal:Lccsancom/google/android/gms/common/GoogleSignatureVerifier;

    return-object p0

    .line 9
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static varargs zza(Lccsanandroid/content/pm/PackageInfo;[Lccsancom/google/android/gms/common/zze;)Lccsancom/google/android/gms/common/zze;
    .locals 3

    .line 88
    iget-object v0, p0, Lccsanandroid/content/pm/PackageInfo;->signatures:[Lccsanandroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 89
    return-object v1

    .line 90
    :cond_0
    iget-object v0, p0, Lccsanandroid/content/pm/PackageInfo;->signatures:[Lccsanandroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 91
    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    invoke-static {p0, p1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-object v1

    .line 93
    :cond_1
    new-instance v0, Lccsancom/google/android/gms/common/zzf;

    iget-object p0, p0, Lccsanandroid/content/pm/PackageInfo;->signatures:[Lccsanandroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lccsanandroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lccsancom/google/android/gms/common/zzf;-><init>([B)V

    .line 94
    nop

    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    .line 95
    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, Lccsancom/google/android/gms/common/zze;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 96
    aget-object p0, p1, v2

    return-object p0

    .line 97
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_3
    return-object v1
.end method

.method private final zza(Lccsanandroid/content/pm/PackageInfo;)Lccsancom/google/android/gms/common/zzm;
    .locals 6

    .line 69
    iget-object v0, p0, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Lccsanandroid/content/Context;)Z

    move-result v0

    .line 70
    nop

    .line 71
    if-nez p1, :cond_0

    .line 72
    const-string p1, "null pkg"

    invoke-static {p1}, Lccsancom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lccsancom/google/android/gms/common/zzm;

    move-result-object p1

    return-object p1

    .line 73
    :cond_0
    iget-object v1, p1, Lccsanandroid/content/pm/PackageInfo;->signatures:[Lccsanandroid/content/pm/Signature;

    array-length v1, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 74
    const-string p1, "single cert required"

    invoke-static {p1}, Lccsancom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lccsancom/google/android/gms/common/zzm;

    move-result-object p1

    return-object p1

    .line 75
    :cond_1
    new-instance v1, Lccsancom/google/android/gms/common/zzf;

    iget-object v2, p1, Lccsanandroid/content/pm/PackageInfo;->signatures:[Lccsanandroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lccsanandroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/google/android/gms/common/zzf;-><init>([B)V

    .line 76
    iget-object v2, p1, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 77
    nop

    .line 78
    invoke-static {v2, v1, v0}, Lccsancom/google/android/gms/common/zzc;->zza(Ljava/lang/String;Lccsancom/google/android/gms/common/zze;Z)Lccsancom/google/android/gms/common/zzm;

    move-result-object v4

    .line 79
    nop

    .line 80
    iget-boolean v5, v4, Lccsancom/google/android/gms/common/zzm;->zzac:Z

    .line 81
    if-eqz v5, :cond_3

    iget-object v5, p1, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_3

    iget-object p1, p1, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget p1, p1, Lccsanandroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    .line 82
    invoke-static {v2, v1, v3}, Lccsancom/google/android/gms/common/zzc;->zza(Ljava/lang/String;Lccsancom/google/android/gms/common/zze;Z)Lccsancom/google/android/gms/common/zzm;

    move-result-object p1

    .line 83
    iget-boolean p1, p1, Lccsancom/google/android/gms/common/zzm;->zzac:Z

    .line 84
    if-eqz p1, :cond_3

    .line 85
    :cond_2
    const-string p1, "debuggable release cert app rejected"

    invoke-static {p1}, Lccsancom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lccsancom/google/android/gms/common/zzm;

    move-result-object p1

    return-object p1

    .line 86
    :cond_3
    nop

    .line 87
    return-object v4
.end method

.method private final zza(Ljava/lang/String;I)Lccsancom/google/android/gms/common/zzm;
    .locals 2

    .line 47
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Lccsanandroid/content/Context;

    .line 48
    invoke-static {v0}, Lccsancom/google/android/gms/common/wrappers/Wrappers;->packageManager(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/16 v1, 0x40

    .line 49
    invoke-virtual {v0, p1, v1, p2}, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->zza(Ljava/lang/String;II)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p2

    .line 50
    invoke-direct {p0, p2}, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->zza(Lccsanandroid/content/pm/PackageInfo;)Lccsancom/google/android/gms/common/zzm;

    move-result-object p1
    :try_end_0
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 51
    :catch_0
    move-exception p2

    .line 52
    const-string p2, "no pkg "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lccsancom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lccsancom/google/android/gms/common/zzm;

    move-result-object p1

    return-object p1
.end method

.method public static zza(Lccsanandroid/content/pm/PackageInfo;Z)Z
    .locals 3

    .line 33
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object v1, p0, Lccsanandroid/content/pm/PackageInfo;->signatures:[Lccsanandroid/content/pm/Signature;

    if-eqz v1, :cond_1

    .line 34
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 35
    sget-object p1, Lccsancom/google/android/gms/common/zzh;->zzx:[Lccsancom/google/android/gms/common/zze;

    invoke-static {p0, p1}, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->zza(Lccsanandroid/content/pm/PackageInfo;[Lccsancom/google/android/gms/common/zze;)Lccsancom/google/android/gms/common/zze;

    move-result-object p0

    goto :goto_0

    .line 36
    :cond_0
    new-array p1, v1, [Lccsancom/google/android/gms/common/zze;

    sget-object v2, Lccsancom/google/android/gms/common/zzh;->zzx:[Lccsancom/google/android/gms/common/zze;

    aget-object v2, v2, v0

    aput-object v2, p1, v0

    invoke-static {p0, p1}, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->zza(Lccsanandroid/content/pm/PackageInfo;[Lccsancom/google/android/gms/common/zze;)Lccsancom/google/android/gms/common/zze;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    return v1

    :cond_1
    nop

    .line 37
    return v0
.end method

.method private final zzc(Ljava/lang/String;)Lccsancom/google/android/gms/common/zzm;
    .locals 2

    .line 53
    if-nez p1, :cond_0

    .line 54
    const-string p1, "null pkg"

    invoke-static {p1}, Lccsancom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lccsancom/google/android/gms/common/zzm;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->zzam:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-static {}, Lccsancom/google/android/gms/common/zzm;->zze()Lccsancom/google/android/gms/common/zzm;

    move-result-object p1

    return-object p1

    .line 57
    :cond_1
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Lccsanandroid/content/Context;

    .line 58
    invoke-static {v0}, Lccsancom/google/android/gms/common/wrappers/Wrappers;->packageManager(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/16 v1, 0x40

    .line 59
    invoke-virtual {v0, p1, v1}, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    nop

    .line 63
    invoke-direct {p0, v0}, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->zza(Lccsanandroid/content/pm/PackageInfo;)Lccsancom/google/android/gms/common/zzm;

    move-result-object v0

    .line 64
    nop

    .line 65
    iget-boolean v1, v0, Lccsancom/google/android/gms/common/zzm;->zzac:Z

    .line 66
    if-eqz v1, :cond_2

    .line 67
    iput-object p1, p0, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->zzam:Ljava/lang/String;

    .line 68
    :cond_2
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string v0, "no pkg "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lccsancom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lccsancom/google/android/gms/common/zzm;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public isGooglePublicSignedPackage(Lccsanandroid/content/pm/PackageInfo;)Z
    .locals 3

    .line 38
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 39
    return v0

    .line 40
    :cond_0
    invoke-static {p1, v0}, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->zza(Lccsanandroid/content/pm/PackageInfo;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 41
    return v2

    .line 42
    :cond_1
    invoke-static {p1, v2}, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->zza(Lccsanandroid/content/pm/PackageInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 43
    iget-object p1, p0, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Lccsanandroid/content/Context;

    invoke-static {p1}, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Lccsanandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 44
    return v2

    .line 45
    :cond_2
    const-string p1, "GoogleSignatureVerifier"

    const-string v1, "Test-keys aren\'t accepted on this build."

    invoke-static {p1, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_3
    return v0
.end method

.method public isPackageGoogleSigned(Ljava/lang/String;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->zzc(Ljava/lang/String;)Lccsancom/google/android/gms/common/zzm;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lccsancom/google/android/gms/common/zzm;->zzf()V

    .line 30
    nop

    .line 31
    iget-boolean p1, p1, Lccsancom/google/android/gms/common/zzm;->zzac:Z

    .line 32
    return p1
.end method

.method public isUidGoogleSigned(I)Z
    .locals 5

    .line 11
    nop

    .line 12
    iget-object v0, p0, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/google/android/gms/common/wrappers/Wrappers;->packageManager(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 13
    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v1, v0, v3

    .line 17
    invoke-direct {p0, v1, p1}, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->zza(Ljava/lang/String;I)Lccsancom/google/android/gms/common/zzm;

    move-result-object v1

    .line 18
    nop

    .line 19
    iget-boolean v4, v1, Lccsancom/google/android/gms/common/zzm;->zzac:Z

    .line 20
    if-nez v4, :cond_1

    .line 21
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    :cond_1
    goto :goto_2

    .line 14
    :cond_2
    :goto_1
    const-string p1, "no pkgs"

    invoke-static {p1}, Lccsancom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lccsancom/google/android/gms/common/zzm;

    move-result-object v1

    .line 23
    :goto_2
    nop

    .line 24
    invoke-virtual {v1}, Lccsancom/google/android/gms/common/zzm;->zzf()V

    .line 25
    nop

    .line 26
    iget-boolean p1, v1, Lccsancom/google/android/gms/common/zzm;->zzac:Z

    .line 27
    return p1
.end method
