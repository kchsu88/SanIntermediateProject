.class public final Lccsancom/google/android/gms/dynamite/DynamiteModule;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;,
        Lccsancom/google/android/gms/dynamite/DynamiteModule$zza;,
        Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;,
        Lccsancom/google/android/gms/dynamite/DynamiteModule$zzb;,
        Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    }
.end annotation


# static fields
.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION:Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_HIGHEST_OR_REMOTE_VERSION:Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_REMOTE:Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field private static zzid:Ljava/lang/Boolean;

.field private static zzie:Lccsancom/google/android/gms/dynamite/zzi;

.field private static zzif:Lccsancom/google/android/gms/dynamite/zzk;

.field private static zzig:Ljava/lang/String;

.field private static zzih:I

.field private static final zzii:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lccsancom/google/android/gms/dynamite/DynamiteModule$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzij:Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;

.field private static final zzik:Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field private static final zzil:Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;


# instance fields
.field private final zzim:Lccsanandroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 261
    const/4 v0, -0x1

    sput v0, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzih:I

    .line 262
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzii:Ljava/lang/ThreadLocal;

    .line 263
    new-instance v0, Lccsancom/google/android/gms/dynamite/zza;

    invoke-direct {v0}, Lccsancom/google/android/gms/dynamite/zza;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzij:Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;

    .line 264
    new-instance v0, Lccsancom/google/android/gms/dynamite/zzb;

    invoke-direct {v0}, Lccsancom/google/android/gms/dynamite/zzb;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 265
    new-instance v0, Lccsancom/google/android/gms/dynamite/zzc;

    invoke-direct {v0}, Lccsancom/google/android/gms/dynamite/zzc;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzik:Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 266
    new-instance v0, Lccsancom/google/android/gms/dynamite/zzd;

    invoke-direct {v0}, Lccsancom/google/android/gms/dynamite/zzd;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION:Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 267
    new-instance v0, Lccsancom/google/android/gms/dynamite/zze;

    invoke-direct {v0}, Lccsancom/google/android/gms/dynamite/zze;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 268
    new-instance v0, Lccsancom/google/android/gms/dynamite/zzf;

    invoke-direct {v0}, Lccsancom/google/android/gms/dynamite/zzf;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_REMOTE_VERSION:Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 269
    new-instance v0, Lccsancom/google/android/gms/dynamite/zzg;

    invoke-direct {v0}, Lccsancom/google/android/gms/dynamite/zzg;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzil:Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    return-void
.end method

.method private constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/content/Context;

    iput-object p1, p0, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzim:Lccsanandroid/content/Context;

    .line 260
    return-void
.end method

.method public static getLocalVersion(Lccsanandroid/content/Context;Ljava/lang/String;)I
    .locals 5

    .line 37
    const-string v0, "DynamiteModule"

    .line 38
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "com.google.android.gms.dynamite.descriptors."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ModuleDescriptor"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 41
    const-string v2, "MODULE_ID"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 42
    const-string v3, "MODULE_VERSION"

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 43
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 44
    nop

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Module descriptor id \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' didn\'t match expected id \'"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-static {v0, p0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return v1

    .line 48
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    const-string p1, "Failed to load module descriptor class: "

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0, p0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 49
    :catch_1
    move-exception p0

    .line 50
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Local module descriptor class for "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    nop

    .line 54
    :goto_1
    return v1
.end method

.method public static getRemoteVersion(Lccsanandroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 149
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zza(Lccsanandroid/content/Context;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static load(Lccsanandroid/content/Context;Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lccsancom/google/android/gms/dynamite/DynamiteModule;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 1
    const-string v0, ":"

    const-string v1, "DynamiteModule"

    sget-object v2, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzii:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/android/gms/dynamite/DynamiteModule$zza;

    .line 2
    new-instance v4, Lccsancom/google/android/gms/dynamite/DynamiteModule$zza;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lccsancom/google/android/gms/dynamite/DynamiteModule$zza;-><init>(Lccsancom/google/android/gms/dynamite/zza;)V

    .line 3
    invoke-virtual {v2, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4
    :try_start_0
    sget-object v6, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzij:Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;

    .line 5
    invoke-interface {p1, p0, p2, v6}, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->zza(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;)Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;

    move-result-object v6

    .line 6
    iget v7, v6, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zziq:I

    iget v8, v6, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzir:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x44

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Considering local module "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and remote module "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget v0, v6, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzis:I

    if-eqz v0, :cond_9

    iget v0, v6, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzis:I

    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    iget v0, v6, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zziq:I

    if-eqz v0, :cond_9

    :cond_0
    iget v0, v6, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzis:I

    const/4 v8, 0x1

    if-ne v0, v8, :cond_1

    iget v0, v6, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzir:I

    if-eqz v0, :cond_9

    .line 9
    :cond_1
    iget v0, v6, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzis:I

    if-ne v0, v7, :cond_3

    .line 10
    invoke-static {p0, p2}, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zze(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsancom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, v4, Lccsancom/google/android/gms/dynamite/DynamiteModule$zza;->zzin:Lccsanandroid/database/Cursor;

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, v4, Lccsancom/google/android/gms/dynamite/DynamiteModule$zza;->zzin:Lccsanandroid/database/Cursor;

    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V

    .line 13
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 14
    return-object p0

    .line 15
    :cond_3
    :try_start_1
    iget v0, v6, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzis:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v8, :cond_8

    .line 16
    :try_start_2
    iget v0, v6, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzir:I

    invoke-static {p0, p2, v0}, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zza(Lccsanandroid/content/Context;Ljava/lang/String;I)Lccsancom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0
    :try_end_2
    .catch Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    iget-object p1, v4, Lccsancom/google/android/gms/dynamite/DynamiteModule$zza;->zzin:Lccsanandroid/database/Cursor;

    if-eqz p1, :cond_4

    .line 18
    iget-object p1, v4, Lccsancom/google/android/gms/dynamite/DynamiteModule$zza;->zzin:Lccsanandroid/database/Cursor;

    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V

    .line 19
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 20
    return-object p0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    :try_start_3
    const-string v2, "Failed to load remote module: "

    invoke-virtual {v0}, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    :goto_0
    invoke-static {v1, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget v1, v6, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zziq:I

    if-eqz v1, :cond_7

    .line 24
    new-instance v1, Lccsancom/google/android/gms/dynamite/DynamiteModule$zzb;

    iget v2, v6, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zziq:I

    const/4 v6, 0x0

    invoke-direct {v1, v2, v6}, Lccsancom/google/android/gms/dynamite/DynamiteModule$zzb;-><init>(II)V

    .line 25
    invoke-interface {p1, p0, p2, v1}, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->zza(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;)Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;

    move-result-object p1

    .line 26
    iget p1, p1, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzis:I

    if-ne p1, v7, :cond_7

    .line 27
    invoke-static {p0, p2}, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zze(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsancom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28
    iget-object p1, v4, Lccsancom/google/android/gms/dynamite/DynamiteModule$zza;->zzin:Lccsanandroid/database/Cursor;

    if-eqz p1, :cond_6

    .line 29
    iget-object p1, v4, Lccsancom/google/android/gms/dynamite/DynamiteModule$zza;->zzin:Lccsanandroid/database/Cursor;

    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V

    .line 30
    :cond_6
    sget-object p1, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzii:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 31
    return-object p0

    .line 32
    :cond_7
    :try_start_4
    new-instance p0, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p1, "Remote load failed. No local fallback found."

    invoke-direct {p0, p1, v0, v5}, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lccsancom/google/android/gms/dynamite/zza;)V

    throw p0

    .line 33
    :cond_8
    new-instance p0, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    iget p1, v6, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzis:I

    const/16 p2, 0x2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "VersionPolicy returned invalid code:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lccsancom/google/android/gms/dynamite/zza;)V

    throw p0

    .line 8
    :cond_9
    new-instance p0, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    iget p1, v6, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zziq:I

    iget p2, v6, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzir:I

    const/16 v0, 0x5b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "No acceptable module found. Local version is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and remote version is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lccsancom/google/android/gms/dynamite/zza;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 34
    :catchall_0
    move-exception p0

    iget-object p1, v4, Lccsancom/google/android/gms/dynamite/DynamiteModule$zza;->zzin:Lccsanandroid/database/Cursor;

    if-eqz p1, :cond_a

    .line 35
    iget-object p1, v4, Lccsancom/google/android/gms/dynamite/DynamiteModule$zza;->zzin:Lccsanandroid/database/Cursor;

    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V

    .line 36
    :cond_a
    sget-object p1, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzii:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw p0
.end method

.method public static zza(Lccsanandroid/content/Context;Ljava/lang/String;Z)I
    .locals 8

    .line 55
    :try_start_0
    const-class v0, Lccsancom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 56
    :try_start_1
    sget-object v1, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzid:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    if-nez v1, :cond_5

    .line 58
    :try_start_2
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 59
    const-class v2, Lccsancom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;

    .line 60
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 61
    const-string/jumbo v2, "sClassLoader"

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 63
    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ClassLoader;

    .line 65
    if-eqz v4, :cond_1

    .line 66
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-ne v4, v2, :cond_0

    .line 67
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 68
    :cond_0
    :try_start_4
    invoke-static {v4}, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zza(Ljava/lang/ClassLoader;)V
    :try_end_4
    .catch Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v2

    .line 71
    :goto_0
    :try_start_5
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 72
    :cond_1
    const-string v4, "com.google.android.gms"

    .line 73
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 77
    :cond_2
    :try_start_6
    invoke-static {p0, p1, p2}, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzc(Lccsanandroid/content/Context;Ljava/lang/String;Z)I

    move-result v4

    .line 78
    sget-object v5, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzig:Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 80
    :cond_3
    new-instance v5, Lccsancom/google/android/gms/dynamite/zzh;

    sget-object v6, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzig:Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lccsancom/google/android/gms/dynamite/zzh;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 81
    nop

    .line 82
    invoke-static {v5}, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zza(Ljava/lang/ClassLoader;)V

    .line 83
    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v5, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzid:Ljava/lang/Boolean;
    :try_end_6
    .catch Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 85
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    return v4

    .line 79
    :cond_4
    :goto_1
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    return v4

    .line 86
    :catch_1
    move-exception v4

    .line 87
    :try_start_b
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 89
    :goto_2
    monitor-exit v1

    move-object v1, v2

    goto :goto_4

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v2
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 90
    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    .line 91
    :goto_3
    :try_start_d
    const-string v2, "DynamiteModule"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to load module via V2: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 93
    :goto_4
    sput-object v1, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzid:Ljava/lang/Boolean;

    .line 94
    :cond_5
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 95
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v0, :cond_7

    .line 96
    :try_start_f
    invoke-static {p0, p1, p2}, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzc(Lccsanandroid/content/Context;Ljava/lang/String;Z)I

    move-result p0
    :try_end_f
    .catch Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    return p0

    .line 97
    :catch_5
    move-exception p1

    .line 98
    :try_start_10
    const-string p2, "DynamiteModule"

    const-string v0, "Failed to retrieve remote module version: "

    invoke-virtual {p1}, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-static {p2, p1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 p0, 0x0

    return p0

    .line 100
    :cond_7
    invoke-static {p0, p1, p2}, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzb(Lccsanandroid/content/Context;Ljava/lang/String;Z)I

    move-result p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    return p0

    .line 94
    :catchall_1
    move-exception p1

    :try_start_11
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    throw p1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 101
    :catchall_2
    move-exception p1

    .line 102
    invoke-static {p0, p1}, Lccsancom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Lccsanandroid/content/Context;Ljava/lang/Throwable;)Z

    .line 103
    throw p1
.end method

.method private static zza(Lccsanandroid/content/Context;Ljava/lang/String;ILccsanandroid/database/Cursor;Lccsancom/google/android/gms/dynamite/zzk;)Lccsanandroid/content/Context;
    .locals 3

    .line 225
    const-string v0, "DynamiteModule"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lccsancom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    .line 226
    invoke-static {}, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzai()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    const-string v2, "Dynamite loader version >= 2, using loadModule2NoCrashUtils"

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    nop

    .line 229
    invoke-static {p0}, Lccsancom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    .line 230
    invoke-static {p3}, Lccsancom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 231
    invoke-interface {p4, p0, p1, p2, p3}, Lccsancom/google/android/gms/dynamite/zzk;->zzb(Lccsancom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILccsancom/google/android/gms/dynamic/IObjectWrapper;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    goto :goto_0

    .line 232
    :cond_0
    const-string v2, "Dynamite loader version < 2, falling back to loadModule2"

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    nop

    .line 234
    invoke-static {p0}, Lccsancom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    .line 235
    invoke-static {p3}, Lccsancom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 236
    invoke-interface {p4, p0, p1, p2, p3}, Lccsancom/google/android/gms/dynamite/zzk;->zza(Lccsancom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILccsancom/google/android/gms/dynamic/IObjectWrapper;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    .line 237
    :goto_0
    invoke-static {p0}, Lccsancom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lccsancom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 238
    :catch_0
    move-exception p0

    .line 239
    const-string p1, "Failed to load DynamiteLoader: "

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v0, p0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-object v1
.end method

.method private static zza(Lccsanandroid/content/Context;Ljava/lang/String;I)Lccsancom/google/android/gms/dynamite/DynamiteModule;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 152
    :try_start_0
    const-class v0, Lccsancom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    :try_start_1
    sget-object v1, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzid:Ljava/lang/Boolean;

    .line 154
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    if-eqz v1, :cond_1

    .line 157
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {p0, p1, p2}, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzc(Lccsanandroid/content/Context;Ljava/lang/String;I)Lccsancom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0

    return-object p0

    .line 159
    :cond_0
    invoke-static {p0, p1, p2}, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzb(Lccsanandroid/content/Context;Ljava/lang/String;I)Lccsancom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0

    return-object p0

    .line 156
    :cond_1
    new-instance p1, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to determine which loading route to use."

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lccsancom/google/android/gms/dynamite/zza;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 160
    :catchall_1
    move-exception p1

    .line 161
    invoke-static {p0, p1}, Lccsancom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Lccsanandroid/content/Context;Ljava/lang/Throwable;)Z

    .line 162
    throw p1
.end method

.method private static zza(Ljava/lang/ClassLoader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 241
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"

    .line 242
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/os/IBinder;

    .line 243
    nop

    .line 244
    if-nez p0, :cond_0

    .line 245
    move-object v1, v0

    goto :goto_0

    .line 246
    :cond_0
    const-string v1, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    invoke-interface {p0, v1}, Lccsanandroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Lccsanandroid/os/IInterface;

    move-result-object v1

    .line 247
    instance-of v2, v1, Lccsancom/google/android/gms/dynamite/zzk;

    if-eqz v2, :cond_1

    .line 248
    check-cast v1, Lccsancom/google/android/gms/dynamite/zzk;

    goto :goto_0

    .line 249
    :cond_1
    new-instance v1, Lccsancom/google/android/gms/dynamite/zzl;

    invoke-direct {v1, p0}, Lccsancom/google/android/gms/dynamite/zzl;-><init>(Lccsanandroid/os/IBinder;)V

    .line 250
    :goto_0
    sput-object v1, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzif:Lccsancom/google/android/gms/dynamite/zzk;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    return-void

    .line 252
    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    goto :goto_1

    :catch_4
    move-exception p0

    .line 253
    :goto_1
    new-instance v1, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to instantiate dynamite loader"

    invoke-direct {v1, v2, p0, v0}, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lccsancom/google/android/gms/dynamite/zza;)V

    throw v1
.end method

.method private static zzai()Ljava/lang/Boolean;
    .locals 3

    .line 222
    const-class v0, Lccsancom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0

    .line 223
    :try_start_0
    sget v1, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzih:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static zzb(Lccsanandroid/content/Context;Ljava/lang/String;Z)I
    .locals 5

    .line 104
    const-string v0, "DynamiteModule"

    invoke-static {p0}, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzj(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/dynamite/zzi;

    move-result-object v1

    .line 105
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 106
    return v2

    .line 107
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lccsancom/google/android/gms/dynamite/zzi;->zzaj()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 108
    nop

    .line 109
    invoke-static {p0}, Lccsancom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    .line 110
    invoke-interface {v1, p0, p1, p2}, Lccsancom/google/android/gms/dynamite/zzi;->zzb(Lccsancom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I

    move-result p0

    return p0

    .line 111
    :cond_1
    const-string v3, "IDynamite loader version < 2, falling back to getModuleVersion2"

    invoke-static {v0, v3}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {p0}, Lccsancom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-interface {v1, p0, p1, p2}, Lccsancom/google/android/gms/dynamite/zzi;->zza(Lccsancom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I

    move-result p0
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 113
    :catch_0
    move-exception p0

    .line 114
    const-string p1, "Failed to retrieve remote module version: "

    invoke-virtual {p0}, Lccsanandroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0, p0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v2
.end method

.method private static zzb(Lccsanandroid/content/Context;Ljava/lang/String;I)Lccsancom/google/android/gms/dynamite/DynamiteModule;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 163
    const-string v0, "Failed to load remote module."

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Selected remote version of "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version >= "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamiteModule"

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {p0}, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzj(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/dynamite/zzi;

    move-result-object v1

    .line 165
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 167
    :try_start_0
    invoke-interface {v1}, Lccsancom/google/android/gms/dynamite/zzi;->zzaj()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 168
    nop

    .line 169
    invoke-static {p0}, Lccsancom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    .line 170
    invoke-interface {v1, p0, p1, p2}, Lccsancom/google/android/gms/dynamite/zzi;->zzb(Lccsancom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    goto :goto_0

    .line 171
    :cond_0
    const-string v4, "Dynamite loader version < 2, falling back to createModuleContext"

    invoke-static {v2, v4}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    nop

    .line 173
    invoke-static {p0}, Lccsancom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-interface {v1, p0, p1, p2}, Lccsancom/google/android/gms/dynamite/zzi;->zza(Lccsancom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    nop

    .line 177
    :goto_0
    invoke-static {p0}, Lccsancom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lccsancom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 179
    new-instance p1, Lccsancom/google/android/gms/dynamite/DynamiteModule;

    invoke-static {p0}, Lccsancom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lccsancom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/Context;

    invoke-direct {p1, p0}, Lccsancom/google/android/gms/dynamite/DynamiteModule;-><init>(Lccsanandroid/content/Context;)V

    return-object p1

    .line 178
    :cond_1
    new-instance p0, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    invoke-direct {p0, v0, v3}, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lccsancom/google/android/gms/dynamite/zza;)V

    throw p0

    .line 175
    :catch_0
    move-exception p0

    .line 176
    new-instance p1, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    invoke-direct {p1, v0, p0, v3}, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lccsancom/google/android/gms/dynamite/zza;)V

    throw p1

    .line 166
    :cond_2
    new-instance p0, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p1, "Failed to create IDynamiteLoader."

    invoke-direct {p0, p1, v3}, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lccsancom/google/android/gms/dynamite/zza;)V

    throw p0
.end method

.method private static zzc(Lccsanandroid/content/Context;Ljava/lang/String;Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 116
    nop

    .line 117
    nop

    .line 118
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v1

    .line 119
    nop

    .line 120
    if-eqz p2, :cond_0

    const-string p0, "api_force_staging"

    goto :goto_0

    :cond_0
    const-string p0, "api"

    .line 121
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x2a

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p2, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "content://com.google.android.gms.chimera/"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v2

    .line 122
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lccsanandroid/content/ContentResolver;->query(Lccsanandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 123
    nop

    .line 124
    if-eqz p0, :cond_4

    :try_start_1
    invoke-interface {p0}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 127
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 128
    if-lez p1, :cond_2

    .line 129
    const-class p2, Lccsancom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    const/4 v1, 0x2

    :try_start_2
    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzig:Ljava/lang/String;

    .line 131
    const-string v1, "loaderVersion"

    .line 132
    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 133
    if-ltz v1, :cond_1

    .line 134
    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    sput v1, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzih:I

    .line 135
    :cond_1
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    :try_start_3
    sget-object p2, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzii:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsancom/google/android/gms/dynamite/DynamiteModule$zza;

    .line 137
    if-eqz p2, :cond_2

    iget-object v1, p2, Lccsancom/google/android/gms/dynamite/DynamiteModule$zza;->zzin:Lccsanandroid/database/Cursor;

    if-nez v1, :cond_2

    .line 138
    iput-object p0, p2, Lccsancom/google/android/gms/dynamite/DynamiteModule$zza;->zzin:Lccsanandroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 139
    goto :goto_1

    .line 135
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 140
    :cond_2
    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_3

    .line 141
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 142
    :cond_3
    return p1

    .line 125
    :cond_4
    :try_start_6
    const-string p1, "DynamiteModule"

    const-string p2, "Failed to retrieve remote module version."

    invoke-static {p1, p2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance p1, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to connect to dynamite module ContentResolver."

    invoke-direct {p1, p2, v0}, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lccsancom/google/android/gms/dynamite/zza;)V

    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 147
    :catchall_1
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_3

    .line 143
    :catch_0
    move-exception p1

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    goto :goto_2

    .line 147
    :catchall_2
    move-exception p0

    goto :goto_3

    .line 143
    :catch_1
    move-exception p0

    move-object p1, v0

    .line 144
    :goto_2
    :try_start_7
    instance-of p2, p0, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    if-eqz p2, :cond_5

    .line 145
    throw p0

    .line 146
    :cond_5
    new-instance p2, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v1, "V2 version check failed"

    invoke-direct {p2, v1, p0, v0}, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lccsancom/google/android/gms/dynamite/zza;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 147
    :catchall_3
    move-exception p0

    move-object v0, p1

    :goto_3
    if-eqz v0, :cond_6

    .line 148
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    :cond_6
    throw p0
.end method

.method private static zzc(Lccsanandroid/content/Context;Ljava/lang/String;I)Lccsancom/google/android/gms/dynamite/DynamiteModule;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 207
    const-string v0, "DynamiteModule"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Selected remote version of "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version >= "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-class v0, Lccsancom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0

    .line 209
    :try_start_0
    sget-object v1, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzif:Lccsancom/google/android/gms/dynamite/zzk;

    .line 210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    .line 213
    sget-object v2, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzii:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/gms/dynamite/DynamiteModule$zza;

    .line 214
    if-eqz v2, :cond_1

    iget-object v3, v2, Lccsancom/google/android/gms/dynamite/DynamiteModule$zza;->zzin:Lccsanandroid/database/Cursor;

    if-eqz v3, :cond_1

    .line 216
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    .line 217
    iget-object v2, v2, Lccsancom/google/android/gms/dynamite/DynamiteModule$zza;->zzin:Lccsanandroid/database/Cursor;

    .line 218
    invoke-static {p0, p1, p2, v2, v1}, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zza(Lccsanandroid/content/Context;Ljava/lang/String;ILccsanandroid/database/Cursor;Lccsancom/google/android/gms/dynamite/zzk;)Lccsanandroid/content/Context;

    move-result-object p0

    .line 219
    if-eqz p0, :cond_0

    .line 221
    new-instance p1, Lccsancom/google/android/gms/dynamite/DynamiteModule;

    invoke-direct {p1, p0}, Lccsancom/google/android/gms/dynamite/DynamiteModule;-><init>(Lccsanandroid/content/Context;)V

    return-object p1

    .line 220
    :cond_0
    new-instance p0, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p1, "Failed to get module context"

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lccsancom/google/android/gms/dynamite/zza;)V

    throw p0

    .line 215
    :cond_1
    new-instance p0, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p1, "No result cursor"

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lccsancom/google/android/gms/dynamite/zza;)V

    throw p0

    .line 212
    :cond_2
    new-instance p0, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p1, "DynamiteLoaderV2 was not cached."

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lccsancom/google/android/gms/dynamite/zza;)V

    throw p0

    .line 210
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static zze(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsancom/google/android/gms/dynamite/DynamiteModule;
    .locals 2

    .line 150
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Selected local version of "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v0, "DynamiteModule"

    invoke-static {v0, p1}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance p1, Lccsancom/google/android/gms/dynamite/DynamiteModule;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lccsancom/google/android/gms/dynamite/DynamiteModule;-><init>(Lccsanandroid/content/Context;)V

    return-object p1
.end method

.method private static zzj(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/dynamite/zzi;
    .locals 5

    .line 180
    const-class v0, Lccsancom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0

    .line 181
    :try_start_0
    sget-object v1, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzie:Lccsancom/google/android/gms/dynamite/zzi;

    if-eqz v1, :cond_0

    .line 182
    monitor-exit v0

    return-object v1

    .line 183
    :cond_0
    invoke-static {}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v1

    invoke-virtual {v1, p0}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Lccsanandroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 184
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 185
    :cond_1
    :try_start_1
    const-string v1, "com.google.android.gms"

    const/4 v3, 0x3

    .line 186
    invoke-virtual {p0, v1, v3}, Lccsanandroid/content/Context;->createPackageContext(Ljava/lang/String;I)Lccsanandroid/content/Context;

    move-result-object p0

    .line 187
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 188
    const-string v1, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 189
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/os/IBinder;

    .line 190
    nop

    .line 191
    if-nez p0, :cond_2

    .line 192
    move-object v1, v2

    goto :goto_0

    .line 193
    :cond_2
    const-string v1, "com.google.android.gms.dynamite.IDynamiteLoader"

    invoke-interface {p0, v1}, Lccsanandroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Lccsanandroid/os/IInterface;

    move-result-object v1

    .line 194
    instance-of v3, v1, Lccsancom/google/android/gms/dynamite/zzi;

    if-eqz v3, :cond_3

    .line 195
    check-cast v1, Lccsancom/google/android/gms/dynamite/zzi;

    goto :goto_0

    .line 196
    :cond_3
    new-instance v1, Lccsancom/google/android/gms/dynamite/zzj;

    invoke-direct {v1, p0}, Lccsancom/google/android/gms/dynamite/zzj;-><init>(Lccsanandroid/os/IBinder;)V

    .line 197
    :goto_0
    nop

    .line 198
    if-eqz v1, :cond_4

    .line 199
    sput-object v1, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzie:Lccsancom/google/android/gms/dynamite/zzi;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :try_start_2
    monitor-exit v0

    return-object v1

    .line 201
    :cond_4
    goto :goto_2

    .line 202
    :catch_0
    move-exception p0

    .line 203
    const-string v1, "DynamiteModule"

    const-string v3, "Failed to load IDynamiteLoader from GmsCore: "

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1, p0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_2
    monitor-exit v0

    .line 205
    return-object v2

    .line 204
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public final getModuleContext()Lccsanandroid/content/Context;
    .locals 1

    .line 206
    iget-object v0, p0, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzim:Lccsanandroid/content/Context;

    return-object v0
.end method

.method public final instantiate(Ljava/lang/String;)Lccsanandroid/os/IBinder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 254
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zzim:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 256
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 257
    :goto_0
    new-instance v1, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to instantiate module class: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lccsancom/google/android/gms/dynamite/zza;)V

    throw v1
.end method
