.class public final Lccsancom/google/android/gms/common/util/CrashUtils;
.super Ljava/lang/Object;


# static fields
.field private static final zzge:[Ljava/lang/String;

.field private static zzgf:Lccsanandroid/os/DropBoxManager;

.field private static zzgg:Z

.field private static zzgh:I

.field private static zzgi:I

.field private static zzgj:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android."

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "com.android."

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "dalvik."

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "java."

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "javax."

    aput-object v3, v0, v1

    sput-object v0, Lccsancom/google/android/gms/common/util/CrashUtils;->zzge:[Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    sput-object v0, Lccsancom/google/android/gms/common/util/CrashUtils;->zzgf:Lccsanandroid/os/DropBoxManager;

    .line 11
    sput-boolean v2, Lccsancom/google/android/gms/common/util/CrashUtils;->zzgg:Z

    .line 12
    const/4 v0, -0x1

    sput v0, Lccsancom/google/android/gms/common/util/CrashUtils;->zzgh:I

    .line 13
    sput v2, Lccsancom/google/android/gms/common/util/CrashUtils;->zzgi:I

    .line 14
    sput v2, Lccsancom/google/android/gms/common/util/CrashUtils;->zzgj:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDynamiteErrorToDropBox(Lccsanandroid/content/Context;Ljava/lang/Throwable;)Z
    .locals 1

    .line 2
    const/high16 v0, 0x20000000

    invoke-static {p0, p1, v0}, Lccsancom/google/android/gms/common/util/CrashUtils;->zza(Lccsanandroid/content/Context;Ljava/lang/Throwable;I)Z

    move-result p0

    return p0
.end method

.method private static zza(Lccsanandroid/content/Context;Ljava/lang/Throwable;I)Z
    .locals 1

    .line 3
    const/4 p2, 0x0

    :try_start_0
    invoke-static {p0}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p2

    .line 6
    :catch_0
    move-exception p0

    .line 7
    const-string p1, "CrashUtils"

    const-string v0, "Error adding exception to DropBox!"

    invoke-static {p1, v0, p0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    return p2
.end method
