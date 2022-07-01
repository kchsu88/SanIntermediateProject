.class public Lccsancom/mbridge/msdk/foundation/entity/DomainCampaignEx;
.super Lccsancom/mbridge/msdk/out/Campaign;
.source "DomainCampaignEx.java"

# interfaces
.implements Lccsancom/mbridge/msdk/system/NoProGuard;
.implements Ljava/io/Serializable;


# static fields
.field private static final JSON_KEY_AD_TRACKING_DLE:Ljava/lang/String; = "D+S8+FxXJFPsYFc3+F5/Hv=="

.field private static final JSON_KEY_AD_TRACKING_DLS:Ljava/lang/String; = "D+S8+FxXJFPsYFc3+bfTD+zT"

.field private static final JSON_KEY_AD_TRACKING_I:Ljava/lang/String; = "D+S8+FQ/hbxtY7M="

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-string v0, "DomainCampaignEx"

    sput-object v0, Lccsancom/mbridge/msdk/foundation/entity/DomainCampaignEx;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lccsancom/mbridge/msdk/out/Campaign;-><init>()V

    return-void
.end method

.method public static campaignToJsonObject(Lccsanorg/json/JSONObject;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsanorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 63
    return-object p0
.end method

.method public static parseCampaign(Lccsanorg/json/JSONObject;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    .line 37
    return-object p1
.end method

.method public static parseCampaignWithBackData(Lccsanorg/json/JSONObject;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    .line 33
    return-object p1
.end method

.method protected static replaceValueByKey(Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 67
    if-eqz p0, :cond_4

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 71
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getRks()Ljava/util/HashMap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    const-string v1, "\\}"

    const-string v2, "\\{"

    if-eqz v0, :cond_1

    .line 73
    :try_start_1
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 74
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 76
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 78
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAks()Ljava/util/HashMap;

    move-result-object p1

    .line 82
    if-eqz p1, :cond_2

    .line 83
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 84
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 86
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 88
    goto :goto_1

    .line 91
    :cond_2
    const-string p1, "\\{c\\}"

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->assembCParams()Ljava/lang/String;

    move-result-object p0

    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 92
    const-string p0, "=\\{.*?\\}"

    .line 93
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 94
    invoke-virtual {p0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 95
    :goto_2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 96
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 97
    const-string v0, "="

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    goto :goto_2

    .line 101
    :cond_3
    goto :goto_3

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    sget-object p1, Lccsancom/mbridge/msdk/foundation/entity/DomainCampaignEx;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    :goto_3
    return-object p2

    .line 68
    :cond_4
    :goto_4
    return-object p2
.end method

.method public static trackingStr2Object(Lccsanorg/json/JSONObject;Lccsancom/mbridge/msdk/foundation/entity/i;)Lccsancom/mbridge/msdk/foundation/entity/i;
    .locals 1

    .line 41
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 44
    :try_start_0
    const-string v0, "D+S8+FxXJFPsYFc3+bfTD+zT"

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/foundation/entity/i;->t([Ljava/lang/String;)V

    .line 47
    const-string v0, "D+S8+FxXJFPsYFc3+F5/Hv=="

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/foundation/entity/i;->u([Ljava/lang/String;)V

    .line 51
    const-string v0, "D+S8+FQ/hbxtY7M="

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p0

    .line 52
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->processNativeVideoTrackingArray(Lccsanorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lccsancom/mbridge/msdk/foundation/entity/i;->v([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 53
    :catch_0
    move-exception p0

    .line 57
    :goto_0
    return-object p1

    .line 59
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public needShowIDialog(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z
    .locals 0

    .line 106
    const/4 p1, 0x0

    return p1
.end method
