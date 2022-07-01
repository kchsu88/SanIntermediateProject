.class public Lccsancom/applovin/impl/a/c;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/sdk/utils/p;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lccsancom/applovin/impl/sdk/k;

.field private final d:Lccsanorg/json/JSONObject;

.field private final e:Lccsanorg/json/JSONObject;

.field private final f:Lccsancom/applovin/impl/sdk/a/b;

.field private final g:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "video/mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "video/webm"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "video/3gpp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "video/x-matroska"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/a/c;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/a/b;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lccsancom/applovin/impl/a/c;->b:Lccsancom/applovin/impl/sdk/k;

    iput-object p1, p0, Lccsancom/applovin/impl/a/c;->d:Lccsanorg/json/JSONObject;

    iput-object p2, p0, Lccsancom/applovin/impl/a/c;->e:Lccsanorg/json/JSONObject;

    iput-object p3, p0, Lccsancom/applovin/impl/a/c;->f:Lccsancom/applovin/impl/sdk/a/b;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/a/c;->a:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lccsancom/applovin/impl/a/c;->g:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/sdk/utils/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/a/c;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()Lccsanorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/a/c;->d:Lccsanorg/json/JSONObject;

    return-object v0
.end method

.method public d()Lccsanorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/a/c;->e:Lccsanorg/json/JSONObject;

    return-object v0
.end method

.method public e()Lccsancom/applovin/impl/sdk/a/b;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/a/c;->f:Lccsancom/applovin/impl/sdk/a/b;

    return-object v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lccsancom/applovin/impl/a/c;->g:J

    return-wide v0
.end method

.method public g()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/a/c;->d:Lccsanorg/json/JSONObject;

    const-string/jumbo v1, "vast_preferred_video_types"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/CollectionUtils;->explode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lccsancom/applovin/impl/a/c;->c:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/a/c;->d:Lccsanorg/json/JSONObject;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/Utils;->getVideoCompletionPercent(Lccsanorg/json/JSONObject;)I

    move-result v0

    return v0
.end method
