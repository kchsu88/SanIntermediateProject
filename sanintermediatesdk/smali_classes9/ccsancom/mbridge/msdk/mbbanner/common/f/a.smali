.class public abstract Lccsancom/mbridge/msdk/mbbanner/common/f/a;
.super Lccsancom/mbridge/msdk/foundation/same/net/f;
.source "BannerResponseHandler.java"


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
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lccsancom/mbridge/msdk/mbbanner/common/f/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/mbbanner/common/f/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/net/f;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/f/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(ILjava/lang/String;)V
.end method

.method public abstract a(Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/a/a;)V
    .locals 1

    .line 74
    iget v0, p1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;->a:I

    iget p1, p1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;->a:I

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/net/g/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/f/a;->a(ILjava/lang/String;)V

    .line 75
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/k;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/k<",
            "Lccsanorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/f;->a(Lccsancom/mbridge/msdk/foundation/same/net/k;)V

    .line 35
    iget-object v0, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->c:Lccsancom/mbridge/msdk/foundation/same/net/f/c;

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/same/net/f/c;->d:Ljava/util/List;

    iget-object p1, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->a:Ljava/lang/Object;

    check-cast p1, Lccsanorg/json/JSONObject;

    .line 1039
    nop

    .line 1040
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 1041
    const-string v1, "msg"

    const/4 v2, 0x1

    if-ne v2, v0, :cond_5

    .line 1042
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lccsancom/mbridge/msdk/mbbanner/common/f/a;->a(J)V

    .line 1043
    const-string v3, "version"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1044
    const-string v4, "v5"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "data"

    if-eqz v3, :cond_0

    .line 1045
    invoke-virtual {p1, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbbanner/common/f/a;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->parseV5CampaignUnit(Lccsanorg/json/JSONObject;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    move-result-object v3

    goto :goto_0

    .line 1047
    :cond_0
    invoke-virtual {p1, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbbanner/common/f/a;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->parseCampaignUnit(Lccsanorg/json/JSONObject;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    move-result-object v3

    .line 1050
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1051
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1052
    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/mbbanner/common/f/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    .line 1053
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/f/a;->b:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1054
    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/mbbanner/common/f/a;->b(I)V

    .line 1056
    :cond_1
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/f/a;->a(I)V

    goto :goto_1

    .line 1058
    :cond_2
    const/4 v2, 0x0

    .line 1059
    if-eqz v3, :cond_3

    .line 1060
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getMsg()Ljava/lang/String;

    move-result-object v2

    .line 1062
    :cond_3
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1063
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1065
    :cond_4
    invoke-virtual {p0, v0, v2}, Lccsancom/mbridge/msdk/mbbanner/common/f/a;->a(ILjava/lang/String;)V

    .line 1067
    :goto_1
    goto :goto_2

    .line 1068
    :cond_5
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/f/a;->a(ILjava/lang/String;)V

    .line 36
    :goto_2
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/f/a;->b:Ljava/lang/String;

    .line 28
    return-void
.end method
