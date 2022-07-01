.class final Lccsancom/mbridge/msdk/click/b$2;
.super Ljava/lang/Object;
.source "CommonClickUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/click/b;->a(Lccsanandroid/content/Context;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/b$2;->a:Lccsanandroid/content/Context;

    iput-object p2, p0, Lccsancom/mbridge/msdk/click/b$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 325
    :try_start_0
    const-string v0, "com.mbridge.msdk.foundation.tools.j"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 326
    const-string v1, "mia"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lccsanandroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lccsancom/mbridge/msdk/click/b$2;->a:Lccsanandroid/content/Context;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 328
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lccsancom/mbridge/msdk/click/b$2;->b:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 330
    :cond_0
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/b$2;->b:Ljava/lang/String;

    aput-object v1, v2, v6

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :goto_0
    goto :goto_1

    .line 332
    :catchall_0
    move-exception v0

    .line 333
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonClickUtil"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :goto_1
    return-void
.end method
