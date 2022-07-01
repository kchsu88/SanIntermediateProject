.class public final Lccsancom/mbridge/msdk/mbnative/c/b$a;
.super Lccsancom/mbridge/msdk/mbnative/f/a/b;
.source "NativeController.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/e/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbnative/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/mbnative/c/b;

.field private b:Z

.field private c:Ljava/lang/Runnable;

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/mbnative/c/b;)V
    .locals 0

    .line 1263
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbnative/f/a/b;-><init>()V

    .line 1264
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->b:Z

    .line 1267
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->g:Z

    .line 1269
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2

    .line 1427
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(Lccsancom/mbridge/msdk/mbnative/c/b;Z)Z

    .line 1428
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->b:Z

    if-nez v0, :cond_3

    .line 1429
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1430
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->n(Lccsancom/mbridge/msdk/mbnative/c/b;)I

    move-result p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/mbnative/c/c;->b(ILjava/lang/String;)V

    .line 1431
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(Lccsancom/mbridge/msdk/mbnative/c/b;I)I

    .line 1433
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->c:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 1434
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->j(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsancom/mbridge/msdk/mbnative/c/b$e;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbnative/c/b$e;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1436
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->e(Lccsancom/mbridge/msdk/mbnative/c/b;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbnative/c/b$a;->f()I

    move-result p1

    if-eq p1, v1, :cond_2

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->g:Z

    if-eqz p1, :cond_4

    .line 1437
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbnative/c/b$a;->f()I

    move-result v0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbnative/c/b$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 1440
    :cond_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->e(Lccsancom/mbridge/msdk/mbnative/c/b;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->g:Z

    if-eqz p1, :cond_4

    .line 1441
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbnative/c/b$a;->f()I

    move-result v0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbnative/c/b$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 1444
    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 0

    .line 1451
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->c:Ljava/lang/Runnable;

    .line 1452
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1281
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->h:Ljava/util/List;

    .line 1282
    return-void
.end method

.method public final a(Ljava/util/List;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/same/net/c/b;",
            ">;",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;",
            ")V"
        }
    .end annotation

    .line 1291
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(Lccsancom/mbridge/msdk/mbnative/c/b;Z)Z

    .line 1292
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->i(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/j;

    move-result-object p1

    .line 1293
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/db/j;->b()V

    .line 1295
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->c:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1296
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbnative/c/b;->j(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsancom/mbridge/msdk/mbnative/c/b$e;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->c:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/mbnative/c/b$e;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1299
    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_19

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_19

    .line 1301
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/mbnative/c/b;Ljava/lang/String;)Ljava/lang/String;

    .line 1302
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1303
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1304
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1305
    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v5}, Lccsancom/mbridge/msdk/mbnative/c/b;->k(Lccsancom/mbridge/msdk/mbnative/c/b;)I

    move-result v5

    const/4 v6, 0x2

    if-gtz v5, :cond_3

    .line 1306
    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v5}, Lccsancom/mbridge/msdk/mbnative/c/b;->k(Lccsancom/mbridge/msdk/mbnative/c/b;)I

    move-result v5

    const/4 v7, -0x3

    if-ne v5, v7, :cond_1

    .line 1307
    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v5, v7}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/mbnative/c/b;I)I

    goto :goto_0

    .line 1309
    :cond_1
    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v5}, Lccsancom/mbridge/msdk/mbnative/c/b;->c(Lccsancom/mbridge/msdk/mbnative/c/b;)I

    move-result v7

    invoke-static {v5, v7}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/mbnative/c/b;I)I

    .line 1311
    :goto_0
    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v5}, Lccsancom/mbridge/msdk/mbnative/c/b;->l(Lccsancom/mbridge/msdk/mbnative/c/b;)I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getTemplate()I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 1312
    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v5}, Lccsancom/mbridge/msdk/mbnative/c/b;->l(Lccsancom/mbridge/msdk/mbnative/c/b;)I

    move-result v7

    invoke-static {v5, v7}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/mbnative/c/b;I)I

    .line 1315
    :cond_2
    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v5}, Lccsancom/mbridge/msdk/mbnative/c/b;->m(Lccsancom/mbridge/msdk/mbnative/c/b;)I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getTemplate()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_3

    .line 1316
    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v5}, Lccsancom/mbridge/msdk/mbnative/c/b;->m(Lccsancom/mbridge/msdk/mbnative/c/b;)I

    move-result v7

    invoke-static {v5, v7}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/mbnative/c/b;I)I

    .line 1320
    :cond_3
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_12

    .line 1321
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1322
    iget-object v8, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 1323
    iget-object v8, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v8}, Lccsancom/mbridge/msdk/mbnative/c/b;->d(Lccsancom/mbridge/msdk/mbnative/c/b;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1324
    iget-object v8, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v8}, Lccsancom/mbridge/msdk/mbnative/c/b;->d(Lccsancom/mbridge/msdk/mbnative/c/b;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBidToken(Ljava/lang/String;)V

    .line 1325
    invoke-virtual {v7, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsBidCampaign(Z)V

    .line 1327
    :cond_4
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/b;->d()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1328
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->loadIconUrlAsyncWithBlock(Lccsancom/mbridge/msdk/out/OnImageLoadListener;)V

    .line 1329
    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->loadImageUrlAsyncWithBlock(Lccsancom/mbridge/msdk/out/OnImageLoadListener;)V

    .line 1331
    :cond_5
    if-eqz v7, :cond_11

    .line 1332
    iget-object v8, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v8}, Lccsancom/mbridge/msdk/mbnative/c/b;->i(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsanandroid/content/Context;

    move-result-object v8

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lccsancom/mbridge/msdk/foundation/tools/u;->c(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 1333
    iget-object v9, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v9}, Lccsancom/mbridge/msdk/mbnative/c/b;->c(Lccsancom/mbridge/msdk/mbnative/c/b;)I

    move-result v9

    const/16 v10, 0x63

    if-ge v5, v9, :cond_b

    .line 1334
    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOfferType()I

    move-result v9

    if-eq v9, v10, :cond_b

    .line 1335
    invoke-static {v7}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1336
    if-eqz v8, :cond_6

    const/4 v9, 0x1

    goto :goto_2

    :cond_6
    const/4 v9, 0x2

    :goto_2
    invoke-virtual {v7, v9}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRtinsType(I)V

    .line 1338
    :cond_7
    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getWtick()I

    move-result v9

    if-eq v9, v0, :cond_a

    if-nez v8, :cond_8

    goto :goto_3

    .line 1345
    :cond_8
    invoke-static {v7}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1346
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1348
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1352
    :cond_9
    iget-object v9, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->d:Ljava/lang/String;

    sget v11, Lccsancom/mbridge/msdk/foundation/same/a;->u:I

    invoke-static {v9, v7, v11}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;I)V

    goto :goto_4

    .line 1339
    :cond_a
    :goto_3
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1340
    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1341
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1358
    :cond_b
    :goto_4
    iget-object v9, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v9}, Lccsancom/mbridge/msdk/mbnative/c/b;->k(Lccsancom/mbridge/msdk/mbnative/c/b;)I

    move-result v9

    if-ge v5, v9, :cond_f

    .line 1359
    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOfferType()I

    move-result v9

    if-eq v9, v10, :cond_f

    .line 1360
    invoke-static {v7}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1361
    if-eqz v8, :cond_c

    const/4 v9, 0x1

    goto :goto_5

    :cond_c
    const/4 v9, 0x2

    :goto_5
    invoke-virtual {v7, v9}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRtinsType(I)V

    .line 1363
    :cond_d
    if-nez v8, :cond_e

    .line 1364
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1366
    :cond_e
    invoke-static {v7}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1367
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1372
    :cond_f
    :goto_6
    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 1373
    new-instance v8, Lccsancom/mbridge/msdk/foundation/entity/f;

    invoke-direct {v8}, Lccsancom/mbridge/msdk/foundation/entity/f;-><init>()V

    .line 1374
    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lccsancom/mbridge/msdk/foundation/entity/f;->a(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFca()I

    move-result v9

    invoke-virtual {v8, v9}, Lccsancom/mbridge/msdk/foundation/entity/f;->a(I)V

    .line 1376
    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFcb()I

    move-result v9

    invoke-virtual {v8, v9}, Lccsancom/mbridge/msdk/foundation/entity/f;->b(I)V

    .line 1377
    invoke-virtual {v8, v1}, Lccsancom/mbridge/msdk/foundation/entity/f;->d(I)V

    .line 1378
    invoke-virtual {v8, v1}, Lccsancom/mbridge/msdk/foundation/entity/f;->c(I)V

    .line 1379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lccsancom/mbridge/msdk/foundation/entity/f;->a(J)V

    .line 1380
    invoke-virtual {p1, v8}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Lccsancom/mbridge/msdk/foundation/entity/f;)V

    .line 1382
    :cond_10
    iget-object v8, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v8}, Lccsancom/mbridge/msdk/mbnative/c/b;->i(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsanandroid/content/Context;

    move-result-object v8

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve()I

    move-result v9

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve_src()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v9, v7}, Lccsancom/mbridge/msdk/click/b;->a(Lccsanandroid/content/Context;ILjava/lang/String;)V

    .line 1320
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1386
    :cond_12
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1, v4}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(Lccsancom/mbridge/msdk/mbnative/c/b;Ljava/util/List;)V

    .line 1388
    nop

    .line 1389
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1390
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getType()I

    move-result p1

    goto :goto_7

    .line 1389
    :cond_13
    const/4 p1, 0x1

    .line 1392
    :goto_7
    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/a/c;->a(I)Lccsancom/mbridge/msdk/mbnative/a/b;

    move-result-object p2

    .line 1393
    if-eqz p2, :cond_14

    .line 1394
    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v5}, Lccsancom/mbridge/msdk/mbnative/c/b;->d(Lccsancom/mbridge/msdk/mbnative/c/b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v3, v5}, Lccsancom/mbridge/msdk/mbnative/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1397
    :cond_14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_15

    .line 1398
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbnative/c/b$a;->f()I

    move-result p2

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbnative/c/b$a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APP ALREADY INSTALLED"

    invoke-virtual {p1, v1, p2, v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 1399
    return-void

    .line 1402
    :cond_15
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p2, v2}, Lccsancom/mbridge/msdk/mbnative/c/b;->c(Lccsancom/mbridge/msdk/mbnative/c/b;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {p2, p1, v2}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/mbnative/c/b;ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/mbnative/c/b;Ljava/util/List;)Z

    .line 1404
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->b()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->d:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 1405
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->b()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->d:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 1406
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->n(Lccsancom/mbridge/msdk/mbnative/c/b;)I

    move-result p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->d:Ljava/lang/String;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(ILjava/lang/String;)V

    goto :goto_9

    .line 1408
    :cond_16
    nop

    .line 1409
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->e()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->d:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1410
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->e()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->d:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1412
    :cond_17
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->c(Lccsancom/mbridge/msdk/mbnative/c/b;)I

    move-result p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p2}, Lccsancom/mbridge/msdk/mbnative/c/b;->o(Lccsancom/mbridge/msdk/mbnative/c/b;)I

    move-result p2

    add-int/2addr p1, p2

    .line 1413
    if-le p1, v0, :cond_18

    .line 1414
    goto :goto_8

    .line 1413
    :cond_18
    move v1, p1

    .line 1416
    :goto_8
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(Lccsancom/mbridge/msdk/mbnative/c/b;I)I

    .line 1418
    :goto_9
    goto :goto_a

    .line 1419
    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "0_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->d:Ljava/lang/String;

    .line 1420
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->n(Lccsancom/mbridge/msdk/mbnative/c/b;)I

    move-result p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->d:Ljava/lang/String;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/mbnative/c/c;->b(ILjava/lang/String;)V

    .line 1421
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(Lccsancom/mbridge/msdk/mbnative/c/b;I)I

    .line 1423
    :goto_a
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 1277
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->b:Z

    .line 1278
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation

    .line 1456
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->b:Z

    if-nez v0, :cond_a

    .line 1457
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->j(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsancom/mbridge/msdk/mbnative/c/b$e;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbnative/c/b$e;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1460
    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    .line 1468
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/out/Frame;

    .line 1469
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/out/Frame;->getCampaigns()Ljava/util/List;

    move-result-object v2

    .line 1470
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 1477
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/out/Campaign;

    .line 1478
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/b;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1479
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/out/Campaign;->loadImageUrlAsyncWithBlock(Lccsancom/mbridge/msdk/out/OnImageLoadListener;)V

    .line 1480
    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/out/Campaign;->loadIconUrlAsyncWithBlock(Lccsancom/mbridge/msdk/out/OnImageLoadListener;)V

    .line 1482
    :cond_3
    goto :goto_1

    .line 1483
    :cond_4
    goto :goto_0

    .line 1471
    :cond_5
    :goto_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->g(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsancom/mbridge/msdk/mbnative/d/a;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1472
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->c(Lccsancom/mbridge/msdk/mbnative/c/b;Z)Z

    .line 1473
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->g(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsancom/mbridge/msdk/mbnative/d/a;

    move-result-object p1

    const-string v0, "ads in frame is empty"

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbnative/d/a;->onAdLoadError(Ljava/lang/String;)V

    .line 1475
    :cond_6
    return-void

    .line 1485
    :cond_7
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->g(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsancom/mbridge/msdk/mbnative/d/a;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1486
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->g(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsancom/mbridge/msdk/mbnative/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbnative/d/a;->onAdFramesLoaded(Ljava/util/List;)V

    goto :goto_4

    .line 1461
    :cond_8
    :goto_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->g(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsancom/mbridge/msdk/mbnative/d/a;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1462
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->c(Lccsancom/mbridge/msdk/mbnative/c/b;Z)Z

    .line 1463
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->g(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsancom/mbridge/msdk/mbnative/d/a;

    move-result-object p1

    const-string v0, "frame is empty"

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbnative/d/a;->onAdLoadError(Ljava/lang/String;)V

    .line 1465
    :cond_9
    return-void

    .line 1490
    :cond_a
    :goto_4
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 1272
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$a;->g:Z

    .line 1273
    return-void
.end method
