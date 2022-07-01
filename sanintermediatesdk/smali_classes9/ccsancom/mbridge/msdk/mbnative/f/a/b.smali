.class public abstract Lccsancom/mbridge/msdk/mbnative/f/a/b;
.super Lccsancom/mbridge/msdk/foundation/same/net/f;
.source "NativeResponseHandler.java"


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

    .line 17
    const-class v0, Lccsancom/mbridge/msdk/mbnative/f/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/mbnative/f/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/net/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 40
    invoke-super {p0}, Lccsancom/mbridge/msdk/foundation/same/net/f;->a()V

    .line 41
    return-void
.end method

.method public abstract a(ILjava/lang/String;)V
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/a/a;)V
    .locals 1

    .line 61
    iget v0, p1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;->a:I

    iget p1, p1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;->a:I

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/net/g/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lccsancom/mbridge/msdk/mbnative/f/a/b;->a(ILjava/lang/String;)V

    .line 62
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/k;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/k<",
            "Lccsanorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/f;->a(Lccsancom/mbridge/msdk/foundation/same/net/k;)V

    .line 50
    if-eqz p1, :cond_7

    iget-object v0, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->c:Lccsancom/mbridge/msdk/foundation/same/net/f/c;

    if-eqz v0, :cond_7

    .line 51
    iget v0, p0, Lccsancom/mbridge/msdk/mbnative/f/a/b;->b:I

    const-string v1, "v5"

    const-string v2, "version"

    const-string v3, "status"

    const/4 v4, 0x1

    const-string v5, "data"

    const-string v6, "msg"

    if-nez v0, :cond_3

    .line 52
    iget-object v0, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->c:Lccsancom/mbridge/msdk/foundation/same/net/f/c;

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/same/net/f/c;->d:Ljava/util/List;

    iget-object p1, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->a:Ljava/lang/Object;

    check-cast p1, Lccsanorg/json/JSONObject;

    .line 1091
    nop

    .line 1092
    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 1093
    if-ne v4, v3, :cond_2

    .line 1094
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lccsancom/mbridge/msdk/mbnative/f/a/b;->a(J)V

    .line 1095
    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1096
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1097
    invoke-virtual {p1, v5}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->parseV5CampaignUnit(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    move-result-object v1

    goto :goto_0

    .line 1099
    :cond_0
    invoke-virtual {p1, v5}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->parseCampaignUnit(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    move-result-object v1

    .line 1102
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1103
    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/mbnative/f/a/b;->a(Ljava/util/List;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    .line 1104
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/mbnative/f/a/b;->a(I)V

    goto :goto_1

    .line 1106
    :cond_1
    invoke-virtual {p1, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lccsancom/mbridge/msdk/mbnative/f/a/b;->a(ILjava/lang/String;)V

    .line 1108
    :goto_1
    goto :goto_2

    .line 1109
    :cond_2
    invoke-virtual {p1, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lccsancom/mbridge/msdk/mbnative/f/a/b;->a(ILjava/lang/String;)V

    .line 52
    :goto_2
    goto :goto_5

    .line 53
    :cond_3
    if-ne v0, v4, :cond_7

    .line 54
    iget-object v0, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->c:Lccsancom/mbridge/msdk/foundation/same/net/f/c;

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/same/net/f/c;->d:Ljava/util/List;

    iget-object p1, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->a:Ljava/lang/Object;

    check-cast p1, Lccsanorg/json/JSONObject;

    .line 2065
    nop

    .line 2066
    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 2067
    if-ne v4, v0, :cond_6

    .line 2068
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lccsancom/mbridge/msdk/mbnative/f/a/b;->a(J)V

    .line 2069
    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2070
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2071
    invoke-virtual {p1, v5}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->parseV5CampaignUnit(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    move-result-object v1

    goto :goto_3

    .line 2073
    :cond_4
    invoke-virtual {p1, v5}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->parseCampaignUnit(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    move-result-object v1

    .line 2076
    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getListFrames()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2077
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getListFrames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 2078
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getListFrames()Ljava/util/List;

    move-result-object p1

    .line 2079
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/mbnative/f/a/b;->b(Ljava/util/List;)V

    .line 2080
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getListFrames()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/mbnative/f/a/b;->a(I)V

    .line 2081
    goto :goto_4

    .line 2082
    :cond_5
    invoke-virtual {p1, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lccsancom/mbridge/msdk/mbnative/f/a/b;->a(ILjava/lang/String;)V

    .line 2084
    :goto_4
    goto :goto_5

    .line 2085
    :cond_6
    invoke-virtual {p1, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lccsancom/mbridge/msdk/mbnative/f/a/b;->a(ILjava/lang/String;)V

    .line 57
    :cond_7
    :goto_5
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/f/a/b;->c:Ljava/lang/String;

    .line 24
    return-void
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

.method public abstract b(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/f/a/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 35
    iget v0, p0, Lccsancom/mbridge/msdk/mbnative/f/a/b;->b:I

    return v0
.end method

.method public final g(I)V
    .locals 0

    .line 31
    iput p1, p0, Lccsancom/mbridge/msdk/mbnative/f/a/b;->b:I

    .line 32
    return-void
.end method
