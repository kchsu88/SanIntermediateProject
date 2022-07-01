.class final Lccsancom/mbridge/msdk/foundation/tools/i$2;
.super Ljava/lang/Object;
.source "MIMManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/tools/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/content/Context;

.field final synthetic b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic c:Lccsancom/mbridge/msdk/foundation/tools/i;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/tools/i;Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/tools/i$2;->c:Lccsancom/mbridge/msdk/foundation/tools/i;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/tools/i$2;->a:Lccsanandroid/content/Context;

    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/tools/i$2;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 368
    const-string v0, "MIMManager"

    :try_start_0
    iget-object v7, p0, Lccsancom/mbridge/msdk/foundation/tools/i$2;->a:Lccsanandroid/content/Context;

    iget-object v8, p0, Lccsancom/mbridge/msdk/foundation/tools/i$2;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    nop

    .line 1325
    if-eqz v8, :cond_0

    .line 1326
    :try_start_1
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v1

    .line 1327
    if-eqz v1, :cond_0

    .line 1328
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/i;->q()[Ljava/lang/String;

    move-result-object v9

    .line 1329
    if-eqz v9, :cond_0

    .line 1330
    array-length v10, v9

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_0

    aget-object v4, v9, v11

    .line 1331
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v8

    invoke-static/range {v1 .. v6}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1330
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1336
    :catch_0
    move-exception v1

    .line 1337
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1338
    :cond_0
    nop

    .line 372
    :goto_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/i$2;->c:Lccsancom/mbridge/msdk/foundation/tools/i;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/i;->e(Lccsancom/mbridge/msdk/foundation/tools/i;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/i$2;->c:Lccsancom/mbridge/msdk/foundation/tools/i;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/i;->e(Lccsancom/mbridge/msdk/foundation/tools/i;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i$2;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    goto :goto_2

    .line 372
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 369
    :catch_1
    move-exception v1

    .line 370
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 372
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/i$2;->c:Lccsancom/mbridge/msdk/foundation/tools/i;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/i;->e(Lccsancom/mbridge/msdk/foundation/tools/i;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/i$2;->c:Lccsancom/mbridge/msdk/foundation/tools/i;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/i;->e(Lccsancom/mbridge/msdk/foundation/tools/i;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i$2;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    :goto_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/i$2;->c:Lccsancom/mbridge/msdk/foundation/tools/i;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/i;->e(Lccsancom/mbridge/msdk/foundation/tools/i;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i$2;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 376
    :cond_1
    return-void

    .line 372
    :goto_3
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i$2;->c:Lccsancom/mbridge/msdk/foundation/tools/i;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/i;->e(Lccsancom/mbridge/msdk/foundation/tools/i;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i$2;->c:Lccsancom/mbridge/msdk/foundation/tools/i;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/i;->e(Lccsancom/mbridge/msdk/foundation/tools/i;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/i$2;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i$2;->c:Lccsancom/mbridge/msdk/foundation/tools/i;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/i;->e(Lccsancom/mbridge/msdk/foundation/tools/i;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/i$2;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 375
    :cond_2
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
