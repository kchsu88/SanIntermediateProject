.class public final Lccsancom/mbridge/msdk/foundation/controller/a$a;
.super Ljava/lang/Object;
.source "MBSDKContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/controller/a$a$c;,
        Lccsancom/mbridge/msdk/foundation/controller/a$a$b;,
        Lccsancom/mbridge/msdk/foundation/controller/a$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/controller/a;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/foundation/controller/a;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/a$a;->a:Lccsancom/mbridge/msdk/foundation/controller/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/controller/a$a$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 294
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 297
    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    .line 298
    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 301
    nop

    .line 303
    new-instance v0, Lccsancom/mbridge/msdk/foundation/controller/a$a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/mbridge/msdk/foundation/controller/a$a$b;-><init>(Lccsancom/mbridge/msdk/foundation/controller/a$a;Lccsancom/mbridge/msdk/foundation/controller/a$1;)V

    .line 304
    new-instance v1, Lccsanandroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 306
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lccsanandroid/content/Context;->bindService(Lccsanandroid/content/Intent;Lccsanandroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    :try_start_1
    new-instance v1, Lccsancom/mbridge/msdk/foundation/controller/a$a$c;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a$a$b;->a()Lccsanandroid/os/IBinder;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lccsancom/mbridge/msdk/foundation/controller/a$a$c;-><init>(Lccsancom/mbridge/msdk/foundation/controller/a$a;Lccsanandroid/os/IBinder;)V

    .line 309
    new-instance v3, Lccsancom/mbridge/msdk/foundation/controller/a$a$a;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a$a$c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/controller/a$a$c;->a(Z)Z

    move-result v1

    invoke-direct {v3, p0, v4, v1}, Lccsancom/mbridge/msdk/foundation/controller/a$a$a;-><init>(Lccsancom/mbridge/msdk/foundation/controller/a$a;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    nop

    .line 314
    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->unbindService(Lccsanandroid/content/ServiceConnection;)V

    .line 310
    return-object v3

    .line 314
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 311
    :catch_0
    move-exception v1

    .line 312
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    :goto_0
    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->unbindService(Lccsanandroid/content/ServiceConnection;)V

    .line 315
    throw v1

    .line 317
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Google Play connection failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 299
    :catch_1
    move-exception p1

    .line 300
    throw p1

    .line 295
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be called from the main thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
