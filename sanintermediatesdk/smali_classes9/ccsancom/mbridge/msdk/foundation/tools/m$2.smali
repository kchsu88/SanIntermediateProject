.class final Lccsancom/mbridge/msdk/foundation/tools/m$2;
.super Ljava/lang/Object;
.source "SameDiTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/tools/m;->m(Lccsanandroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/tools/m$2;->a:Lccsanandroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 373
    nop

    .line 375
    const/4 v0, 0x0

    :try_start_0
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 376
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/m$2;->a:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsanandroid/webkit/WebSettings;->getDefaultUserAgent(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :cond_0
    goto :goto_0

    .line 385
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 378
    :catch_0
    move-exception v1

    .line 381
    :goto_0
    :try_start_1
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 382
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/m$2;->a:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->r(Lccsanandroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    :cond_1
    goto :goto_2

    .line 386
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 388
    :goto_2
    return-void
.end method
