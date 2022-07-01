.class final Lccsancom/mbridge/msdk/reward/adapter/c$k$1;
.super Ljava/lang/Object;
.source "RewardCampaignsResourceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/reward/adapter/c$k;-><init>(Lccsanandroid/os/Handler;Ljava/lang/Runnable;ZZLjava/lang/String;Lccsancom/mbridge/msdk/reward/adapter/c$j;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/reward/adapter/c$j;

.field final synthetic b:Lccsancom/mbridge/msdk/videocommon/a$a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic g:Z

.field final synthetic h:J

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Lccsancom/mbridge/msdk/reward/adapter/c$k;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/adapter/c$k;Lccsancom/mbridge/msdk/reward/adapter/c$j;Lccsancom/mbridge/msdk/videocommon/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ZJLjava/lang/String;)V
    .locals 0

    .line 1213
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->j:Lccsancom/mbridge/msdk/reward/adapter/c$k;

    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->a:Lccsancom/mbridge/msdk/reward/adapter/c$j;

    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->b:Lccsancom/mbridge/msdk/videocommon/a$a;

    iput-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-boolean p8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->g:Z

    iput-wide p9, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->h:J

    iput-object p11, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->i:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1216
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->a:Lccsancom/mbridge/msdk/reward/adapter/c$j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->b:Lccsancom/mbridge/msdk/videocommon/a$a;

    if-eqz v0, :cond_0

    .line 1217
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Z)V

    .line 1218
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lccsancom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V

    .line 1220
    :try_start_0
    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v5

    const-string v6, "WebView onPageFinish timeout exception after 5s"

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->c:Ljava/lang/String;

    iget-boolean v8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->g:Z

    iget-object v9, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->d:Ljava/lang/String;

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v11, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->h:J

    sub-long v11, v0, v11

    invoke-static/range {v4 .. v12}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    goto :goto_0

    .line 1221
    :catch_0
    move-exception v0

    .line 1224
    :goto_0
    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->a:Lccsancom/mbridge/msdk/reward/adapter/c$j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->i:Ljava/lang/String;

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->c:Ljava/lang/String;

    iget-object v8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->d:Ljava/lang/String;

    iget-object v9, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->e:Ljava/lang/String;

    iget-object v10, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->b:Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-interface/range {v4 .. v10}, Lccsancom/mbridge/msdk/reward/adapter/c$j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V

    .line 1227
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;->b:Lccsancom/mbridge/msdk/videocommon/a$a;

    if-eqz v0, :cond_1

    .line 1228
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/a$a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    .line 1229
    if-eqz v0, :cond_1

    .line 1231
    :try_start_1
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1234
    goto :goto_1

    .line 1232
    :catch_1
    move-exception v0

    .line 1237
    :cond_1
    :goto_1
    return-void
.end method
