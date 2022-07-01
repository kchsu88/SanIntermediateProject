.class final Lccsancom/mbridge/msdk/reward/adapter/c$k;
.super Lccsancom/mbridge/msdk/mbsignalcommon/b/b;
.source "RewardCampaignsResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# instance fields
.field private a:Lccsanandroid/os/Handler;

.field private b:Ljava/lang/Runnable;

.field private final c:Z

.field private final d:Z

.field private e:Ljava/lang/String;

.field private final f:Lccsancom/mbridge/msdk/reward/adapter/c$j;

.field private final g:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Lccsancom/mbridge/msdk/videocommon/a$a;

.field private final l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private n:J

.field private o:Z

.field private p:Z

.field private final q:Ljava/lang/Runnable;

.field private final r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lccsanandroid/os/Handler;Ljava/lang/Runnable;ZZLjava/lang/String;Lccsancom/mbridge/msdk/reward/adapter/c$j;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;J)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/os/Handler;",
            "Ljava/lang/Runnable;",
            "ZZ",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/reward/adapter/c$j;",
            "Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/videocommon/a$a;",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;J)V"
        }
    .end annotation

    .line 1197
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;-><init>()V

    .line 1198
    iput-object v13, v12, Lccsancom/mbridge/msdk/reward/adapter/c$k;->a:Lccsanandroid/os/Handler;

    .line 1199
    move-object/from16 v0, p2

    iput-object v0, v12, Lccsancom/mbridge/msdk/reward/adapter/c$k;->b:Ljava/lang/Runnable;

    .line 1200
    move/from16 v0, p3

    iput-boolean v0, v12, Lccsancom/mbridge/msdk/reward/adapter/c$k;->c:Z

    .line 1201
    move/from16 v14, p4

    iput-boolean v14, v12, Lccsancom/mbridge/msdk/reward/adapter/c$k;->d:Z

    .line 1202
    move-object/from16 v15, p5

    iput-object v15, v12, Lccsancom/mbridge/msdk/reward/adapter/c$k;->e:Ljava/lang/String;

    .line 1203
    move-object/from16 v11, p6

    iput-object v11, v12, Lccsancom/mbridge/msdk/reward/adapter/c$k;->f:Lccsancom/mbridge/msdk/reward/adapter/c$j;

    .line 1204
    move-object/from16 v0, p7

    iput-object v0, v12, Lccsancom/mbridge/msdk/reward/adapter/c$k;->g:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1205
    move-object/from16 v9, p8

    iput-object v9, v12, Lccsancom/mbridge/msdk/reward/adapter/c$k;->h:Ljava/lang/String;

    .line 1206
    move-object/from16 v10, p10

    iput-object v10, v12, Lccsancom/mbridge/msdk/reward/adapter/c$k;->i:Ljava/lang/String;

    .line 1207
    move-object/from16 v8, p9

    iput-object v8, v12, Lccsancom/mbridge/msdk/reward/adapter/c$k;->j:Ljava/lang/String;

    .line 1208
    move-object/from16 v7, p11

    iput-object v7, v12, Lccsancom/mbridge/msdk/reward/adapter/c$k;->k:Lccsancom/mbridge/msdk/videocommon/a$a;

    .line 1209
    move-object/from16 v6, p12

    iput-object v6, v12, Lccsancom/mbridge/msdk/reward/adapter/c$k;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1210
    move-object/from16 v0, p13

    iput-object v0, v12, Lccsancom/mbridge/msdk/reward/adapter/c$k;->m:Ljava/util/List;

    .line 1211
    move-wide/from16 v4, p14

    iput-wide v4, v12, Lccsancom/mbridge/msdk/reward/adapter/c$k;->n:J

    .line 1213
    new-instance v3, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object v14, v3

    move-object/from16 v3, p11

    move-object/from16 v4, p10

    move-object/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p12

    move/from16 v8, p4

    move-wide/from16 v9, p14

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lccsancom/mbridge/msdk/reward/adapter/c$k$1;-><init>(Lccsancom/mbridge/msdk/reward/adapter/c$k;Lccsancom/mbridge/msdk/reward/adapter/c$j;Lccsancom/mbridge/msdk/videocommon/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ZJLjava/lang/String;)V

    iput-object v14, v12, Lccsancom/mbridge/msdk/reward/adapter/c$k;->r:Ljava/lang/Runnable;

    .line 1240
    new-instance v11, Lccsancom/mbridge/msdk/reward/adapter/c$k$2;

    move-object v0, v11

    move-object v15, v11

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lccsancom/mbridge/msdk/reward/adapter/c$k$2;-><init>(Lccsancom/mbridge/msdk/reward/adapter/c$k;Lccsancom/mbridge/msdk/reward/adapter/c$j;Lccsancom/mbridge/msdk/videocommon/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ZJLjava/lang/String;)V

    iput-object v15, v12, Lccsancom/mbridge/msdk/reward/adapter/c$k;->q:Ljava/lang/Runnable;

    .line 1266
    if-eqz v13, :cond_0

    .line 1267
    const-wide/16 v0, 0x1388

    invoke-virtual {v13, v14, v0, v1}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1269
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lccsanandroid/webkit/WebView;I)V
    .locals 11

    .line 1273
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;->a(Lccsanandroid/webkit/WebView;I)V

    .line 1274
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->a:Lccsanandroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->q:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1275
    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1278
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->a:Lccsanandroid/os/Handler;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->r:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1279
    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1282
    :cond_1
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->p:Z

    if-nez p1, :cond_9

    .line 1284
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preload temp readState: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->i:Ljava/lang/String;

    iget-boolean v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->d:Z

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->e:Ljava/lang/String;

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->n:J

    sub-long/2addr v7, v9

    invoke-static/range {v0 .. v8}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1287
    goto :goto_0

    .line 1285
    :catch_0
    move-exception p1

    .line 1288
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1289
    const/4 p1, 0x1

    if-ne p2, p1, :cond_7

    .line 1290
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->b:Ljava/lang/Runnable;

    if-eqz p2, :cond_2

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->a:Lccsanandroid/os/Handler;

    if-eqz v1, :cond_2

    .line 1291
    invoke-virtual {v1, p2}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1294
    :cond_2
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lccsancom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V

    .line 1295
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->k:Lccsancom/mbridge/msdk/videocommon/a$a;

    if-eqz p2, :cond_3

    .line 1296
    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Z)V

    .line 1298
    :cond_3
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->c:Z

    if-eqz p2, :cond_5

    .line 1299
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->d:Z

    const/16 v0, 0x11f

    if-eqz p2, :cond_4

    .line 1300
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->k:Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-static {v0, p2, v1}, Lccsancom/mbridge/msdk/videocommon/a;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V

    goto :goto_1

    .line 1302
    :cond_4
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->k:Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-static {v0, p2, v1}, Lccsancom/mbridge/msdk/videocommon/a;->b(ILjava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V

    goto :goto_1

    .line 1305
    :cond_5
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->d:Z

    const/16 v0, 0x5e

    if-eqz p2, :cond_6

    .line 1306
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->k:Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-static {v0, p2, v1}, Lccsancom/mbridge/msdk/videocommon/a;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V

    goto :goto_1

    .line 1308
    :cond_6
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->k:Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-static {v0, p2, v1}, Lccsancom/mbridge/msdk/videocommon/a;->b(ILjava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V

    .line 1312
    :goto_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->f:Lccsancom/mbridge/msdk/reward/adapter/c$j;

    if-eqz v2, :cond_8

    .line 1313
    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->j:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->i:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->e:Ljava/lang/String;

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->h:Ljava/lang/String;

    iget-object v8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->k:Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-interface/range {v2 .. v8}, Lccsancom/mbridge/msdk/reward/adapter/c$j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V

    goto :goto_2

    .line 1316
    :cond_7
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->f:Lccsancom/mbridge/msdk/reward/adapter/c$j;

    if-eqz v2, :cond_8

    .line 1317
    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->j:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->i:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->e:Ljava/lang/String;

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->h:Ljava/lang/String;

    iget-object v8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->k:Lccsancom/mbridge/msdk/videocommon/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v2 .. v9}, Lccsancom/mbridge/msdk/reward/adapter/c$j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Ljava/lang/String;)V

    .line 1320
    :cond_8
    :goto_2
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->p:Z

    .line 1322
    :cond_9
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1326
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;->a(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 1327
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->e:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->h:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lccsancom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V

    .line 1329
    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "WebView onReceivedError exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->i:Ljava/lang/String;

    iget-boolean v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->d:Z

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->e:Ljava/lang/String;

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v9, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->n:J

    sub-long v9, p1, v9

    invoke-static/range {v2 .. v10}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    goto :goto_0

    .line 1330
    :catch_0
    move-exception p1

    .line 1334
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->a:Lccsanandroid/os/Handler;

    if-eqz p1, :cond_1

    .line 1335
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->q:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    .line 1336
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->r:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1339
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->q:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 1340
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->a:Lccsanandroid/os/Handler;

    invoke-virtual {p2, p1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1344
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1345
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->k:Lccsancom/mbridge/msdk/videocommon/a$a;

    if-eqz p1, :cond_2

    .line 1346
    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Z)V

    .line 1348
    :cond_2
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->f:Lccsancom/mbridge/msdk/reward/adapter/c$j;

    if-eqz v2, :cond_3

    .line 1349
    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->j:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->i:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->e:Ljava/lang/String;

    iget-object v8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->k:Lccsancom/mbridge/msdk/videocommon/a$a;

    move-object v7, p4

    move-object v9, p3

    invoke-interface/range {v2 .. v9}, Lccsancom/mbridge/msdk/reward/adapter/c$j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1355
    :cond_3
    goto :goto_1

    .line 1351
    :catch_1
    move-exception p1

    .line 1352
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_4

    .line 1353
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindVaneWebView"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/SslErrorHandler;Lccsanandroid/net/http/SslError;)V
    .locals 11

    .line 1360
    invoke-super {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;->a(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/SslErrorHandler;Lccsanandroid/net/http/SslError;)V

    .line 1361
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->e:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->h:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lccsancom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V

    .line 1363
    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "WebView onReceivedSslError exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string p2, "SSLError"

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lccsanandroid/net/http/SslError;->getPrimaryError()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->i:Ljava/lang/String;

    iget-boolean v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->d:Z

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->e:Ljava/lang/String;

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v9, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->n:J

    sub-long v9, p1, v9

    invoke-static/range {v2 .. v10}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1366
    goto :goto_1

    .line 1364
    :catch_0
    move-exception p1

    .line 1367
    :goto_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->a:Lccsanandroid/os/Handler;

    if-eqz p1, :cond_2

    .line 1368
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->q:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    .line 1369
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->r:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1372
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->q:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 1373
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->a:Lccsanandroid/os/Handler;

    invoke-virtual {p2, p1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1377
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1378
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->k:Lccsancom/mbridge/msdk/videocommon/a$a;

    if-eqz p1, :cond_3

    .line 1379
    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Z)V

    .line 1381
    :cond_3
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->f:Lccsancom/mbridge/msdk/reward/adapter/c$j;

    if-eqz v2, :cond_5

    .line 1382
    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->j:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->i:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->e:Ljava/lang/String;

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->h:Ljava/lang/String;

    iget-object v8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->k:Lccsancom/mbridge/msdk/videocommon/a$a;

    if-nez p3, :cond_4

    const-string p1, ""

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Lccsanandroid/net/http/SslError;->getPrimaryError()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v9, p1

    invoke-interface/range {v2 .. v9}, Lccsancom/mbridge/msdk/reward/adapter/c$j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1388
    :cond_5
    goto :goto_3

    .line 1384
    :catch_1
    move-exception p1

    .line 1385
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_6

    .line 1386
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindVaneWebView"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    :cond_6
    :goto_3
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 12

    .line 1393
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 1394
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->a:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->r:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1395
    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1398
    :cond_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->o:Z

    if-nez v0, :cond_9

    .line 1400
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "preload temp onPageFinish"

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->i:Ljava/lang/String;

    iget-boolean v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->d:Z

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->e:Ljava/lang/String;

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->n:J

    sub-long/2addr v8, v10

    invoke-static/range {v1 .. v9}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1403
    goto :goto_0

    .line 1401
    :catch_0
    move-exception v0

    .line 1404
    :goto_0
    const-string v0, "wfr=1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_7

    .line 1405
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->i:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->h:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1406
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->h:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lccsancom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V

    .line 1407
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->b:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->a:Lccsanandroid/os/Handler;

    if-eqz v1, :cond_1

    .line 1408
    invoke-virtual {v1, p2}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1410
    :cond_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->k:Lccsancom/mbridge/msdk/videocommon/a$a;

    if-eqz p2, :cond_2

    .line 1411
    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Z)V

    .line 1413
    :cond_2
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->c:Z

    if-eqz p2, :cond_4

    .line 1414
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result p2

    const/16 v1, 0x11f

    if-eqz p2, :cond_3

    .line 1415
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->k:Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-static {v1, p2, v2}, Lccsancom/mbridge/msdk/videocommon/a;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V

    goto :goto_1

    .line 1417
    :cond_3
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->k:Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-static {v1, p2, v2}, Lccsancom/mbridge/msdk/videocommon/a;->b(ILjava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V

    goto :goto_1

    .line 1420
    :cond_4
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result p2

    const/16 v1, 0x5e

    if-eqz p2, :cond_5

    .line 1421
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->k:Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-static {v1, p2, v2}, Lccsancom/mbridge/msdk/videocommon/a;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V

    goto :goto_1

    .line 1423
    :cond_5
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->k:Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-static {v1, p2, v2}, Lccsancom/mbridge/msdk/videocommon/a;->b(ILjava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V

    .line 1427
    :goto_1
    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->f:Lccsancom/mbridge/msdk/reward/adapter/c$j;

    if-eqz v3, :cond_6

    .line 1428
    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->j:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->i:Ljava/lang/String;

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->e:Ljava/lang/String;

    iget-object v8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->h:Ljava/lang/String;

    iget-object v9, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->k:Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-interface/range {v3 .. v9}, Lccsancom/mbridge/msdk/reward/adapter/c$j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V

    .line 1430
    :cond_6
    goto :goto_2

    .line 1431
    :cond_7
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->a:Lccsanandroid/os/Handler;

    if-eqz p2, :cond_8

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->q:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 1432
    const-wide/16 v2, 0x1388

    invoke-virtual {p2, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1435
    :cond_8
    :goto_2
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;)V

    .line 1436
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$k;->o:Z

    .line 1438
    :cond_9
    return-void
.end method
