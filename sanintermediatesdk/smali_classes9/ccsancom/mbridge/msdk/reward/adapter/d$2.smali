.class final Lccsancom/mbridge/msdk/reward/adapter/d$2;
.super Lccsancom/mbridge/msdk/reward/c/a;
.source "RewardMVVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/reward/adapter/d;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/reward/adapter/d;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/adapter/d;)V
    .locals 0

    .line 1201
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 11

    .line 1244
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load offer failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v4}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v4

    const-string v5, ""

    const-string v6, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v9}, Lccsancom/mbridge/msdk/reward/adapter/d;->g(Lccsancom/mbridge/msdk/reward/adapter/d;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-static/range {v0 .. v8}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    goto :goto_0

    .line 1245
    :catch_0
    move-exception v0

    .line 1249
    :goto_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1250
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;J)J

    .line 1253
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1254
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1256
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1257
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1259
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lccsancom/mbridge/msdk/reward/adapter/d;->d:Z

    .line 1260
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean v0, p1, Lccsancom/mbridge/msdk/reward/adapter/d;->e:Z

    .line 1261
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean v0, p1, Lccsancom/mbridge/msdk/reward/adapter/d;->f:Z

    .line 1262
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean v0, p1, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    .line 1263
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean v0, p1, Lccsancom/mbridge/msdk/reward/adapter/d;->g:Z

    .line 1264
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;)V

    .line 1265
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->n(Lccsancom/mbridge/msdk/reward/adapter/d;)V

    .line 1266
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 13

    .line 1206
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v1, :cond_1

    .line 1208
    :try_start_1
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load offer success tpl "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v6

    const-string v7, ""

    const-string v8, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->g(Lccsancom/mbridge/msdk/reward/adapter/d;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-static/range {v2 .. v10}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1211
    goto :goto_1

    .line 1209
    :catch_0
    move-exception v1

    .line 1214
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    .line 1215
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getRequestId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1238
    goto/16 :goto_3

    .line 1216
    :catch_1
    move-exception p1

    .line 1217
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1218
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1220
    :cond_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1221
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1223
    :cond_3
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1224
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1226
    :cond_4
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->d:Z

    .line 1227
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->e:Z

    .line 1228
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->f:Z

    .line 1229
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    .line 1230
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->g:Z

    .line 1232
    const/4 v2, 0x0

    :try_start_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load offer failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v6

    const-string v7, ""

    const-string v8, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->g(Lccsancom/mbridge/msdk/reward/adapter/d;)J

    move-result-wide v9

    sub-long v9, v0, v9

    invoke-static/range {v2 .. v10}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1235
    goto :goto_2

    .line 1233
    :catch_2
    move-exception p1

    .line 1236
    :goto_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    const-string v0, "exception after load success"

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;)V

    .line 1237
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->n(Lccsancom/mbridge/msdk/reward/adapter/d;)V

    .line 1239
    :goto_3
    return-void
.end method
