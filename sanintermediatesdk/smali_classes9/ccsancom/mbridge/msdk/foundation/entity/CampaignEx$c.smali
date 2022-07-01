.class public final Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;
.super Ljava/lang/Object;
.source "CampaignEx.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2251
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->a:Ljava/lang/String;

    .line 2252
    return-void
.end method

.method public static a(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;
    .locals 1

    .line 2311
    :try_start_0
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2312
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->a(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 2315
    :cond_0
    goto :goto_0

    .line 2314
    :catchall_0
    move-exception p0

    .line 2316
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;
    .locals 6

    .line 2321
    if-eqz p0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2323
    new-instance v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    invoke-virtual {p0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;-><init>(Ljava/lang/String;)V

    .line 2325
    const-string v1, "video_template"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 3274
    iput v1, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->b:I

    .line 2326
    const-string v1, "template_url"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3298
    iput-object v1, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->e:Ljava/lang/String;

    .line 2327
    const-string v1, "orientation"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 4282
    iput v1, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->c:I

    .line 2328
    const-string v1, "paused_url"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4290
    iput-object v1, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d:Ljava/lang/String;

    .line 2330
    const-string v1, "image"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p0

    .line 2331
    if-eqz p0, :cond_2

    .line 2332
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2333
    invoke-virtual {p0}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 2334
    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2335
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2336
    invoke-virtual {p0, v3}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 2337
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 2338
    new-instance v5, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c$a;

    invoke-direct {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c$a;-><init>()V

    .line 2339
    iput-object v3, v5, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c$a;->a:Ljava/lang/String;

    .line 2340
    iget-object v3, v5, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c$a;->b:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2341
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2343
    :cond_0
    goto :goto_0

    .line 2344
    :cond_1
    nop

    .line 4306
    iput-object v1, v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->f:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2346
    :cond_2
    return-object v0

    .line 2348
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2349
    :cond_3
    nop

    .line 2350
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 2262
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 2278
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->c:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 2286
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 2294
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c$a;",
            ">;"
        }
    .end annotation

    .line 2302
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->f:Ljava/util/List;

    return-object v0
.end method
