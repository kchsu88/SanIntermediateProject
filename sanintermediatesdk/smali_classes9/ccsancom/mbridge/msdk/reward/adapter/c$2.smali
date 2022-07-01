.class final Lccsancom/mbridge/msdk/reward/adapter/c$2;
.super Ljava/lang/Object;
.source "RewardCampaignsResourceManager.java"

# interfaces
.implements Lccsancom/mbridge/msdk/videocommon/download/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/reward/adapter/c;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/reward/adapter/c$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lccsancom/mbridge/msdk/reward/adapter/c$i;

.field final synthetic e:Lccsanandroid/content/Context;

.field final synthetic f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic g:Lccsancom/mbridge/msdk/reward/adapter/c;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/reward/adapter/c$i;Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->g:Lccsancom/mbridge/msdk/reward/adapter/c;

    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->d:Lccsancom/mbridge/msdk/reward/adapter/c$i;

    iput-object p6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->e:Lccsanandroid/content/Context;

    iput-object p7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 12

    .line 266
    const-string v0, "2000045"

    const-string v1, "url"

    const-string v2, "request_id"

    const-string v3, "unit_id"

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lccsancom/mbridge/msdk/videocommon/download/i;->b(Ljava/lang/String;Z)V

    .line 267
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v4

    .line 268
    const/16 v6, 0x69

    iput v6, v4, Lccsanandroid/os/Message;->what:I

    .line 269
    new-instance v6, Lccsanandroid/os/Bundle;

    invoke-direct {v6}, Lccsanandroid/os/Bundle;-><init>()V

    .line 270
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->a:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object v7, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->b:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->c:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v6, v1, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v4, v6}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 275
    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->g:Lccsancom/mbridge/msdk/reward/adapter/c;

    invoke-static {v6}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Lccsancom/mbridge/msdk/reward/adapter/c;)Lccsancom/mbridge/msdk/reward/adapter/c$h;

    move-result-object v6

    invoke-virtual {v6, v4}, Lccsancom/mbridge/msdk/reward/adapter/c$h;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 276
    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->d:Lccsancom/mbridge/msdk/reward/adapter/c$i;

    if-eqz v4, :cond_0

    .line 277
    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->b:Ljava/lang/String;

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->a:Ljava/lang/String;

    iget-object v8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->c:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8, p1}, Lccsancom/mbridge/msdk/reward/adapter/c$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_0
    new-instance v4, Lccsancom/mbridge/msdk/foundation/entity/m;

    invoke-direct {v4}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>()V

    .line 280
    invoke-virtual {v4, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 281
    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->e:Lccsanandroid/content/Context;

    if-eqz v6, :cond_1

    .line 282
    invoke-virtual {v6}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v6

    .line 283
    invoke-virtual {v4, v6}, Lccsancom/mbridge/msdk/foundation/entity/m;->b(I)V

    .line 285
    :cond_1
    invoke-virtual {v4, v5}, Lccsancom/mbridge/msdk/foundation/entity/m;->c(I)V

    .line 287
    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v5, :cond_2

    .line 288
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 289
    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 290
    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 293
    :cond_2
    invoke-virtual {v4, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->i(Ljava/lang/String;)V

    .line 294
    const-string v5, ""

    invoke-virtual {v4, v5}, Lccsancom/mbridge/msdk/foundation/entity/m;->p(Ljava/lang/String;)V

    .line 295
    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lccsancom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v5

    invoke-static {v5}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/p;

    move-result-object v5

    invoke-virtual {v5, v4}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/entity/m;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    goto/16 :goto_0

    .line 297
    :catch_0
    move-exception v4

    .line 298
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Lccsancom/mbridge/msdk/videocommon/download/i;->b(Ljava/lang/String;Z)V

    .line 299
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v5

    .line 300
    const/16 v6, 0xcd

    iput v6, v5, Lccsanandroid/os/Message;->what:I

    .line 301
    new-instance v6, Lccsanandroid/os/Bundle;

    invoke-direct {v6}, Lccsanandroid/os/Bundle;-><init>()V

    .line 302
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->a:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    sget-object v3, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->b:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->c:Ljava/lang/String;

    invoke-virtual {v6, v2, v3}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v6, v1, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v5, v6}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 307
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->g:Lccsancom/mbridge/msdk/reward/adapter/c;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Lccsancom/mbridge/msdk/reward/adapter/c;)Lccsancom/mbridge/msdk/reward/adapter/c$h;

    move-result-object v1

    invoke-virtual {v1, v5}, Lccsancom/mbridge/msdk/reward/adapter/c$h;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 308
    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->d:Lccsancom/mbridge/msdk/reward/adapter/c$i;

    if-eqz v6, :cond_3

    .line 309
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->b:Ljava/lang/String;

    iget-object v8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->a:Ljava/lang/String;

    iget-object v9, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    move-object v10, p1

    invoke-interface/range {v6 .. v11}, Lccsancom/mbridge/msdk/reward/adapter/c$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_3
    new-instance v1, Lccsancom/mbridge/msdk/foundation/entity/m;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>()V

    .line 312
    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->e:Lccsanandroid/content/Context;

    if-eqz v0, :cond_4

    .line 314
    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v0

    .line 315
    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->b(I)V

    .line 317
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->c(I)V

    .line 318
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_5

    .line 319
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 323
    :cond_5
    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->i(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->p(Ljava/lang/String;)V

    .line 325
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/p;

    move-result-object p1

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/entity/m;)J

    .line 327
    sget-boolean p1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p1, :cond_6

    .line 328
    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RewardCampaignsResourceManager"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_6
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 336
    const-string v0, "message"

    const-string v1, "url"

    const-string v2, "request_id"

    const-string v3, "unit_id"

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v5

    invoke-virtual {v5, p2, v4}, Lccsancom/mbridge/msdk/videocommon/download/i;->b(Ljava/lang/String;Z)V

    .line 337
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v5

    .line 338
    const/16 v6, 0xcd

    iput v6, v5, Lccsanandroid/os/Message;->what:I

    .line 339
    new-instance v6, Lccsanandroid/os/Bundle;

    invoke-direct {v6}, Lccsanandroid/os/Bundle;-><init>()V

    .line 340
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->a:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object v7, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->b:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->c:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {v6, v1, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v6, v0, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v5, v6}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 346
    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->g:Lccsancom/mbridge/msdk/reward/adapter/c;

    invoke-static {v6}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Lccsancom/mbridge/msdk/reward/adapter/c;)Lccsancom/mbridge/msdk/reward/adapter/c$h;

    move-result-object v6

    invoke-virtual {v6, v5}, Lccsancom/mbridge/msdk/reward/adapter/c$h;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 348
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->d:Lccsancom/mbridge/msdk/reward/adapter/c$i;

    if-eqz v7, :cond_0

    .line 349
    iget-object v8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->b:Ljava/lang/String;

    iget-object v9, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->a:Ljava/lang/String;

    iget-object v10, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->c:Ljava/lang/String;

    move-object v11, p2

    move-object v12, p1

    invoke-interface/range {v7 .. v12}, Lccsancom/mbridge/msdk/reward/adapter/c$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_0
    new-instance v5, Lccsancom/mbridge/msdk/foundation/entity/m;

    invoke-direct {v5}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>()V

    .line 352
    const-string v6, "2000045"

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 353
    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->e:Lccsanandroid/content/Context;

    if-eqz v6, :cond_1

    .line 354
    invoke-virtual {v6}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v6

    .line 355
    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/foundation/entity/m;->b(I)V

    .line 357
    :cond_1
    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/foundation/entity/m;->c(I)V

    .line 358
    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v6, :cond_2

    .line 359
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 360
    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 361
    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 363
    :cond_2
    invoke-virtual {v5, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->i(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v5, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->p(Ljava/lang/String;)V

    .line 365
    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 366
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v6

    invoke-static {v6}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/p;

    move-result-object v6

    invoke-virtual {v6, v5}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/entity/m;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    goto :goto_0

    .line 367
    :catch_0
    move-exception v5

    .line 368
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v6

    invoke-virtual {v6, p2, v4}, Lccsancom/mbridge/msdk/videocommon/download/i;->b(Ljava/lang/String;Z)V

    .line 369
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v4

    .line 370
    const/16 v6, 0x69

    iput v6, v4, Lccsanandroid/os/Message;->what:I

    .line 371
    new-instance v6, Lccsanandroid/os/Bundle;

    invoke-direct {v6}, Lccsanandroid/os/Bundle;-><init>()V

    .line 372
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->a:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    sget-object v3, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->b:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->c:Ljava/lang/String;

    invoke-virtual {v6, v2, v3}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v6, v1, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {v4, v6}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 378
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->g:Lccsancom/mbridge/msdk/reward/adapter/c;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Lccsancom/mbridge/msdk/reward/adapter/c;)Lccsancom/mbridge/msdk/reward/adapter/c$h;

    move-result-object v0

    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/reward/adapter/c$h;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 380
    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->d:Lccsancom/mbridge/msdk/reward/adapter/c$i;

    if-eqz v6, :cond_3

    .line 381
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->b:Ljava/lang/String;

    iget-object v8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->a:Ljava/lang/String;

    iget-object v9, p0, Lccsancom/mbridge/msdk/reward/adapter/c$2;->c:Ljava/lang/String;

    move-object v10, p2

    move-object v11, p1

    invoke-interface/range {v6 .. v11}, Lccsancom/mbridge/msdk/reward/adapter/c$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_3
    sget-boolean p1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p1, :cond_4

    .line 384
    invoke-virtual {v5}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RewardCampaignsResourceManager"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_4
    :goto_0
    return-void
.end method
