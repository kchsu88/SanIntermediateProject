.class final Lccsancom/mbridge/msdk/foundation/tools/i$5;
.super Ljava/lang/Object;
.source "MIMManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/tools/i;->a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic d:Lccsancom/mbridge/msdk/foundation/tools/i;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/tools/i;Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/tools/i$5;->d:Lccsancom/mbridge/msdk/foundation/tools/i;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/tools/i$5;->a:Lccsanandroid/content/Context;

    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/tools/i$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lccsancom/mbridge/msdk/foundation/tools/i$5;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 414
    const-string v0, "MIMManager"

    const-string v1, "&"

    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/i$5;->a:Lccsanandroid/content/Context;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/i$5;->b:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/i$5;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v2, :cond_5

    .line 415
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 416
    const-string v3, "key=2000100&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    const-string v3, "network_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/tools/i$5;->a:Lccsanandroid/content/Context;

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/tools/i$5;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 420
    const-string v3, "rid_n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/tools/i$5;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    :cond_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/tools/i$5;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 423
    const-string v3, "rid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/tools/i$5;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    :cond_1
    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/tools/i$5;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 426
    const-string v3, "unit_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/tools/i$5;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    :cond_2
    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/tools/i$5;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 429
    const-string v3, "cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/tools/i$5;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    :cond_3
    const-string v1, "status="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i$5;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/same/report/a;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 433
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 436
    :cond_4
    :try_start_1
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/report/d/a;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/tools/i$5;->a:Lccsanandroid/content/Context;

    invoke-direct {v1, v3}, Lccsancom/mbridge/msdk/foundation/same/report/d/a;-><init>(Lccsanandroid/content/Context;)V

    .line 437
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/tools/i$5;->a:Lccsanandroid/content/Context;

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Ljava/lang/String;Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    move-result-object v2

    .line 438
    const/4 v3, 0x0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v4

    iget-object v4, v4, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->a:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v2, v5}, Lccsancom/mbridge/msdk/foundation/same/report/d/a;->c(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    goto :goto_0

    .line 439
    :catch_0
    move-exception v1

    .line 440
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 441
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    :cond_5
    :goto_0
    goto :goto_1

    .line 445
    :catchall_0
    move-exception v1

    .line 446
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :goto_1
    return-void
.end method
