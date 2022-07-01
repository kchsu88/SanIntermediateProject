.class public Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;
.super Ljava/lang/Object;


# static fields
.field public static final GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String; = "com.google.android.gms"

.field public static final GOOGLE_PLAY_SERVICES_VERSION_CODE:I

.field public static final GOOGLE_PLAY_STORE_PACKAGE:Ljava/lang/String; = "com.android.vending"

.field static final TRACKING_SOURCE_DIALOG:Ljava/lang/String; = "d"

.field static final TRACKING_SOURCE_NOTIFICATION:Ljava/lang/String; = "n"

.field private static final zzm:Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget v0, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    sput v0, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    .line 53
    new-instance v0, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

    invoke-direct {v0}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->zzm:Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;
    .locals 1

    .line 1
    sget-object v0, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->zzm:Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

    return-object v0
.end method

.method private static zza(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    const-string v1, "gcore_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    sget v1, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    if-eqz p0, :cond_1

    .line 42
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    if-eqz p0, :cond_2

    .line 45
    nop

    .line 46
    :try_start_0
    invoke-static {p0}, Lccsancom/google/android/gms/common/wrappers/Wrappers;->packageManager(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    .line 47
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p0

    .line 48
    iget p0, p0, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cancelAvailabilityErrorNotifications(Lccsanandroid/content/Context;)V
    .locals 0

    .line 26
    invoke-static {p1}, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->cancelAvailabilityErrorNotifications(Lccsanandroid/content/Context;)V

    .line 27
    return-void
.end method

.method public getApkVersion(Lccsanandroid/content/Context;)I
    .locals 0

    .line 29
    invoke-static {p1}, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->getApkVersion(Lccsanandroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getClientVersion(Lccsanandroid/content/Context;)I
    .locals 0

    .line 28
    invoke-static {p1}, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->getClientVersion(Lccsanandroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getErrorResolutionIntent(I)Lccsanandroid/content/Intent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Lccsanandroid/content/Context;ILjava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getErrorResolutionIntent(Lccsanandroid/content/Context;ILjava/lang/String;)Lccsanandroid/content/Intent;
    .locals 1

    .line 13
    const-string v0, "com.google.android.gms"

    packed-switch p2, :pswitch_data_0

    .line 20
    const/4 p1, 0x0

    return-object p1

    .line 19
    :pswitch_0
    invoke-static {v0}, Lccsancom/google/android/gms/common/internal/zzg;->zzg(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_1
    if-eqz p1, :cond_0

    invoke-static {p1}, Lccsancom/google/android/gms/common/util/DeviceProperties;->isWearableWithoutPlayStore(Lccsanandroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 15
    invoke-static {}, Lccsancom/google/android/gms/common/internal/zzg;->zzs()Lccsanandroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 16
    :cond_0
    nop

    .line 17
    invoke-static {p1, p3}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->zza(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {v0, p1}, Lccsancom/google/android/gms/common/internal/zzg;->zza(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getErrorResolutionPendingIntent(Lccsanandroid/content/Context;II)Lccsanandroid/app/PendingIntent;
    .locals 1

    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionPendingIntent(Lccsanandroid/content/Context;IILjava/lang/String;)Lccsanandroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getErrorResolutionPendingIntent(Lccsanandroid/content/Context;IILjava/lang/String;)Lccsanandroid/app/PendingIntent;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2, p4}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Lccsanandroid/content/Context;ILjava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object p2

    .line 23
    if-nez p2, :cond_0

    .line 24
    const/4 p1, 0x0

    return-object p1

    .line 25
    :cond_0
    const/high16 p4, 0x8000000

    invoke-static {p1, p3, p2, p4}, Lccsanandroid/app/PendingIntent;->getActivity(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getErrorString(I)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-static {p1}, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->getErrorString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isGooglePlayServicesAvailable(Lccsanandroid/content/Context;)I
    .locals 1

    .line 3
    sget v0, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Lccsanandroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public isGooglePlayServicesAvailable(Lccsanandroid/content/Context;I)I
    .locals 0

    .line 4
    nop

    .line 5
    invoke-static {p1, p2}, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->isGooglePlayServicesAvailable(Lccsanandroid/content/Context;I)I

    move-result p2

    .line 6
    invoke-static {p1, p2}, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->isPlayServicesPossiblyUpdating(Lccsanandroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    const/16 p2, 0x12

    .line 8
    :cond_0
    return p2
.end method

.method public isPlayServicesPossiblyUpdating(Lccsanandroid/content/Context;I)Z
    .locals 0

    .line 30
    invoke-static {p1, p2}, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->isPlayServicesPossiblyUpdating(Lccsanandroid/content/Context;I)Z

    move-result p1

    return p1
.end method

.method public isPlayStorePossiblyUpdating(Lccsanandroid/content/Context;I)Z
    .locals 0

    .line 31
    invoke-static {p1, p2}, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->isPlayStorePossiblyUpdating(Lccsanandroid/content/Context;I)Z

    move-result p1

    return p1
.end method

.method public isUninstalledAppPossiblyUpdating(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 32
    invoke-static {p1, p2}, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->isUninstalledAppPossiblyUpdating(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isUserResolvableError(I)Z
    .locals 0

    .line 11
    invoke-static {p1}, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->isUserRecoverableError(I)Z

    move-result p1

    return p1
.end method

.method public verifyGooglePlayServicesIsAvailable(Lccsanandroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/gms/common/GooglePlayServicesRepairableException;,
            Lccsancom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    .line 9
    invoke-static {p1, p2}, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->ensurePlayServicesAvailable(Lccsanandroid/content/Context;I)V

    .line 10
    return-void
.end method
