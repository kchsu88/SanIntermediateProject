.class public final Lccsancom/bumptech/glide/signature/ApplicationVersionSignature;
.super Ljava/lang/Object;
.source "ApplicationVersionSignature.java"


# static fields
.field private static final PACKAGE_NAME_TO_KEY:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lccsancom/bumptech/glide/load/Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/signature/ApplicationVersionSignature;->PACKAGE_NAME_TO_KEY:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static obtain(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/Key;
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 24
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "packageName":Ljava/lang/String;
    sget-object v1, Lccsancom/bumptech/glide/signature/ApplicationVersionSignature;->PACKAGE_NAME_TO_KEY:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/bumptech/glide/load/Key;

    .line 26
    .local v2, "result":Lccsancom/bumptech/glide/load/Key;
    if-nez v2, :cond_0

    .line 27
    invoke-static {p0}, Lccsancom/bumptech/glide/signature/ApplicationVersionSignature;->obtainVersionSignature(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/Key;

    move-result-object v3

    .line 28
    .local v3, "toAdd":Lccsancom/bumptech/glide/load/Key;
    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lccsancom/bumptech/glide/load/Key;

    .line 30
    if-nez v2, :cond_0

    .line 31
    move-object v2, v3

    .line 35
    .end local v3    # "toAdd":Lccsancom/bumptech/glide/load/Key;
    :cond_0
    return-object v2
.end method

.method private static obtainVersionSignature(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/Key;
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "pInfo":Lccsanandroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 50
    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Lccsanandroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Lccsanandroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 52
    .end local v1    # "e":Lccsanandroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v0, :cond_0

    .line 53
    iget v1, v0, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "versionCode":Ljava/lang/String;
    goto :goto_1

    .line 55
    .end local v1    # "versionCode":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .restart local v1    # "versionCode":Ljava/lang/String;
    :goto_1
    new-instance v2, Lccsancom/bumptech/glide/signature/StringSignature;

    invoke-direct {v2, v1}, Lccsancom/bumptech/glide/signature/StringSignature;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method static reset()V
    .locals 1

    .line 40
    sget-object v0, Lccsancom/bumptech/glide/signature/ApplicationVersionSignature;->PACKAGE_NAME_TO_KEY:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 41
    return-void
.end method
