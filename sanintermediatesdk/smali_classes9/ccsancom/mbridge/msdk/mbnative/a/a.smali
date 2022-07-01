.class public final Lccsancom/mbridge/msdk/mbnative/a/a;
.super Lccsancom/mbridge/msdk/mbnative/a/b;
.source "APICache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/mbnative/a/b<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Lccsancom/mbridge/msdk/out/Campaign;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lccsancom/mbridge/msdk/foundation/db/d;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbnative/a/b;-><init>()V

    .line 20
    iput p1, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->b:I

    .line 21
    nop

    .line 22
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object p1

    .line 21
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/d;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->a:Lccsancom/mbridge/msdk/foundation/db/d;

    .line 23
    return-void
.end method

.method private a(Ljava/util/List;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;I)Z"
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTimestamp()J

    move-result-wide v3

    .line 37
    const-wide/16 v5, 0x0

    .line 38
    const-wide/16 v7, 0x3e8

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 43
    :pswitch_0
    nop

    .line 1050
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object p1

    .line 1051
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object p2

    .line 1050
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object p1

    .line 1052
    if-nez p1, :cond_0

    .line 1053
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object p1

    .line 1056
    :cond_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/a;->p()J

    move-result-wide p1

    mul-long v5, p1, v7

    .line 1057
    nop

    .line 43
    goto :goto_0

    .line 40
    :pswitch_1
    nop

    .line 1040
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object p1

    .line 1041
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object p2

    .line 1040
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object p1

    .line 1042
    if-nez p1, :cond_1

    .line 1043
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object p1

    .line 1045
    :cond_1
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/a;->v()J

    move-result-wide p1

    mul-long v5, p1, v7

    .line 1046
    nop

    .line 40
    nop

    .line 41
    nop

    .line 46
    :goto_0
    sub-long/2addr v1, v3

    cmp-long p1, v1, v5

    if-lez p1, :cond_2

    .line 47
    const/4 p1, 0x1

    return p1

    .line 49
    :cond_2
    return v0

    .line 52
    :cond_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .line 14
    check-cast p1, Ljava/lang/String;

    .line 1107
    nop

    .line 1108
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->a:Lccsancom/mbridge/msdk/foundation/db/d;

    iget v1, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->b:I

    const/4 v2, 0x2

    invoke-virtual {v0, p1, p2, v2, v1}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p2

    .line 1110
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1111
    goto :goto_1

    .line 1113
    :cond_0
    invoke-direct {p0, p2, v2}, Lccsancom/mbridge/msdk/mbnative/a/a;->a(Ljava/util/List;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1114
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->a:Lccsancom/mbridge/msdk/foundation/db/d;

    iget v1, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->b:I

    invoke-virtual {p2, p1, v2, v1}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;II)V

    goto :goto_0

    .line 1116
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1117
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1119
    :goto_0
    nop

    .line 14
    :goto_1
    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 14
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    .line 4057
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 4058
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4059
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->a:Lccsancom/mbridge/msdk/foundation/db/d;

    iget v1, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v1, v3}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;IIZ)V

    .line 4060
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->a:Lccsancom/mbridge/msdk/foundation/db/d;

    const/4 v1, 0x2

    iget v4, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->b:I

    invoke-virtual {v0, p1, v1, v4, v3}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;IIZ)V

    .line 4061
    nop

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 4062
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 4063
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCacheLevel(I)V

    .line 4064
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->a:Lccsancom/mbridge/msdk/foundation/db/d;

    invoke-virtual {v1, v0, p1, v2}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)J

    .line 4061
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .line 14
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    .line 3071
    nop

    .line 3072
    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    .line 3073
    const/4 p3, 0x1

    goto :goto_0

    .line 3072
    :cond_0
    const/4 p3, 0x0

    .line 3075
    :goto_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    .line 3076
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3077
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->a:Lccsancom/mbridge/msdk/foundation/db/d;

    iget v3, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->b:I

    invoke-virtual {v2, p1, v1, v3, p3}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;IIZ)V

    .line 3078
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->a:Lccsancom/mbridge/msdk/foundation/db/d;

    const/4 v3, 0x2

    iget v4, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->b:I

    invoke-virtual {v2, p1, v3, v4, p3}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;IIZ)V

    .line 3079
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_1

    .line 3080
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 3081
    invoke-virtual {p3, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCacheLevel(I)V

    .line 3082
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->a:Lccsancom/mbridge/msdk/foundation/db/d;

    invoke-virtual {v2, p3, p1, v1}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)J

    .line 3079
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 14
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 7

    .line 140
    nop

    .line 141
    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 142
    const/4 p3, 0x0

    goto :goto_0

    .line 141
    :cond_0
    const/4 p3, 0x1

    .line 144
    :goto_0
    if-eqz p2, :cond_2

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    :try_start_0
    check-cast p2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 147
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->a:Lccsancom/mbridge/msdk/foundation/db/d;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTab()I

    move-result v2

    .line 148
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCacheLevel()I

    move-result v4

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getType()I

    move-result v5

    .line 147
    move-object v3, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->a:Lccsancom/mbridge/msdk/foundation/db/d;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCacheLevel()I

    move-result v3

    iget v4, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->b:I

    .line 149
    move-object v2, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;Ljava/lang/String;IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_1
    goto :goto_1

    .line 152
    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    :cond_2
    :goto_1
    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5

    .line 14
    check-cast p1, Ljava/lang/String;

    .line 2089
    nop

    .line 2090
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->a:Lccsancom/mbridge/msdk/foundation/db/d;

    iget v1, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p2

    .line 2092
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2093
    goto :goto_2

    .line 2095
    :cond_0
    invoke-direct {p0, p2, v2}, Lccsancom/mbridge/msdk/mbnative/a/a;->a(Ljava/util/List;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2096
    nop

    .line 3026
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3027
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 3028
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCacheLevel(I)V

    .line 3029
    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/a/a;->a:Lccsancom/mbridge/msdk/foundation/db/d;

    invoke-virtual {v4, v3, p1, v2}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)J

    .line 3026
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2096
    :cond_1
    goto :goto_1

    .line 2098
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2099
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2102
    :goto_1
    nop

    .line 14
    :goto_2
    return-object v0
.end method
