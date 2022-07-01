.class final Lccsancom/mbridge/msdk/foundation/tools/i$4;
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

    .line 396
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/tools/i$4;->c:Lccsancom/mbridge/msdk/foundation/tools/i;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/tools/i$4;->a:Lccsanandroid/content/Context;

    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/tools/i$4;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 400
    const-string v0, "MIMManager"

    :try_start_0
    iget-object v7, p0, Lccsancom/mbridge/msdk/foundation/tools/i$4;->a:Lccsanandroid/content/Context;

    iget-object v8, p0, Lccsancom/mbridge/msdk/foundation/tools/i$4;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1027
    nop

    .line 1289
    if-eqz v8, :cond_0

    .line 1290
    :try_start_1
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v1

    .line 1291
    if-eqz v1, :cond_0

    .line 1292
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/i;->o()[Ljava/lang/String;

    move-result-object v9

    .line 1293
    if-eqz v9, :cond_0

    .line 1294
    array-length v10, v9

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_0

    aget-object v4, v9, v11

    .line 1295
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v8

    invoke-static/range {v1 .. v6}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1294
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1300
    :catch_0
    move-exception v1

    .line 1301
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1302
    :cond_0
    nop

    .line 403
    :goto_1
    goto :goto_2

    .line 401
    :catch_1
    move-exception v1

    .line 402
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :goto_2
    return-void
.end method
