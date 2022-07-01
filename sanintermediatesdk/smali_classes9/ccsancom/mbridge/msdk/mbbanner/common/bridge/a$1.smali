.class final Lccsancom/mbridge/msdk/mbbanner/common/bridge/a$1;
.super Ljava/lang/Object;
.source "BannerSignalCommunicationImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->i(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;Ljava/util/ArrayList;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a$1;->b:Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 214
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 213
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    .line 212
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/j;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 216
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/db/j;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    goto :goto_0

    .line 220
    :cond_0
    goto :goto_1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerSignalCommunicationImpl"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_1
    return-void
.end method
