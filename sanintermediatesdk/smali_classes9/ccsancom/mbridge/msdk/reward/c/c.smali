.class public abstract Lccsancom/mbridge/msdk/reward/c/c;
.super Lccsancom/mbridge/msdk/foundation/same/net/f;
.source "RewardResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/foundation/same/net/f<",
        "Lccsanorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lccsancom/mbridge/msdk/reward/c/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/reward/c/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/net/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 43
    invoke-super {p0}, Lccsancom/mbridge/msdk/foundation/same/net/f;->a()V

    .line 44
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/a/a;)V
    .locals 3

    .line 127
    sget-object v0, Lccsancom/mbridge/msdk/reward/c/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget v0, p1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;->a:I

    iget p1, p1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;->a:I

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/net/g/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lccsancom/mbridge/msdk/reward/c/c;->b(ILjava/lang/String;)V

    .line 130
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/k;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/k<",
            "Lccsanorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/f;->a(Lccsancom/mbridge/msdk/foundation/same/net/k;)V

    .line 53
    if-eqz p1, :cond_b

    iget-object v0, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->c:Lccsancom/mbridge/msdk/foundation/same/net/f/c;

    if-eqz v0, :cond_b

    .line 54
    iget v0, p0, Lccsancom/mbridge/msdk/reward/c/c;->b:I

    const/4 v1, 0x0

    const-string v2, "v5"

    const-string v3, "version"

    const-string v4, "status"

    const/4 v5, 0x1

    const-string v6, "data"

    const-string v7, "msg"

    if-nez v0, :cond_5

    .line 55
    iget-object v0, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->c:Lccsancom/mbridge/msdk/foundation/same/net/f/c;

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/same/net/f/c;->d:Ljava/util/List;

    iget-object p1, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->a:Ljava/lang/Object;

    check-cast p1, Lccsanorg/json/JSONObject;

    .line 1095
    nop

    .line 1096
    invoke-virtual {p1, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 1097
    if-ne v5, v4, :cond_4

    .line 1098
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lccsancom/mbridge/msdk/reward/c/c;->a(J)V

    .line 1099
    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1100
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1101
    invoke-virtual {p1, v6}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/c/c;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->parseV5CampaignUnit(Lccsanorg/json/JSONObject;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    move-result-object v2

    goto :goto_0

    .line 1103
    :cond_0
    invoke-virtual {p1, v6}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/c/c;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->parseCampaignUnit(Lccsanorg/json/JSONObject;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    move-result-object v2

    .line 1106
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1107
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1108
    invoke-virtual {p0, v0, v2}, Lccsancom/mbridge/msdk/reward/c/c;->a(Ljava/util/List;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    .line 1109
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/reward/c/c;->a(I)V

    goto :goto_1

    .line 1111
    :cond_1
    nop

    .line 1112
    if-eqz v2, :cond_2

    .line 1113
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getMsg()Ljava/lang/String;

    move-result-object v1

    .line 1115
    :cond_2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1116
    invoke-virtual {p1, v7}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1118
    :cond_3
    invoke-virtual {p0, v4, v1}, Lccsancom/mbridge/msdk/reward/c/c;->b(ILjava/lang/String;)V

    .line 1120
    :goto_1
    goto :goto_2

    .line 1121
    :cond_4
    invoke-virtual {p1, v7}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lccsancom/mbridge/msdk/reward/c/c;->b(ILjava/lang/String;)V

    .line 55
    :goto_2
    goto/16 :goto_5

    .line 56
    :cond_5
    if-ne v0, v5, :cond_b

    .line 57
    iget-object v0, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->c:Lccsancom/mbridge/msdk/foundation/same/net/f/c;

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/same/net/f/c;->d:Ljava/util/List;

    iget-object p1, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->a:Ljava/lang/Object;

    check-cast p1, Lccsanorg/json/JSONObject;

    .line 2063
    nop

    .line 2064
    invoke-virtual {p1, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 2065
    if-ne v5, v0, :cond_a

    .line 2066
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lccsancom/mbridge/msdk/reward/c/c;->a(J)V

    .line 2067
    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2068
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2069
    invoke-virtual {p1, v6}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/c/c;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->parseV5CampaignUnit(Lccsanorg/json/JSONObject;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    move-result-object v2

    goto :goto_3

    .line 2071
    :cond_6
    invoke-virtual {p1, v6}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/c/c;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->parseCampaignUnit(Lccsanorg/json/JSONObject;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    move-result-object v2

    .line 2074
    :goto_3
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getListFrames()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 2075
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getListFrames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 2076
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getListFrames()Ljava/util/List;

    move-result-object p1

    .line 2077
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/reward/c/c;->a(Ljava/util/List;)V

    .line 2078
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/reward/c/c;->a(I)V

    .line 2079
    goto :goto_4

    .line 2080
    :cond_7
    nop

    .line 2081
    if-eqz v2, :cond_8

    .line 2082
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getMsg()Ljava/lang/String;

    move-result-object v1

    .line 2084
    :cond_8
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2085
    invoke-virtual {p1, v7}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2087
    :cond_9
    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/reward/c/c;->b(ILjava/lang/String;)V

    .line 2089
    :goto_4
    goto :goto_5

    .line 2090
    :cond_a
    invoke-virtual {p1, v7}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lccsancom/mbridge/msdk/reward/c/c;->b(ILjava/lang/String;)V

    .line 60
    :cond_b
    :goto_5
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/c/c;->c:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/List;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V
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
.end method

.method public abstract b(ILjava/lang/String;)V
.end method
