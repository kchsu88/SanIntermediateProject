.class public final Lccsancom/mbridge/msdk/videocommon/b/c;
.super Ljava/lang/Object;
.source "Reward.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/b/c;->a:Ljava/lang/String;

    .line 23
    iput p2, p0, Lccsancom/mbridge/msdk/videocommon/b/c;->b:I

    .line 24
    return-void
.end method

.method public static a(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/videocommon/b/c;
    .locals 3

    .line 90
    if-eqz p0, :cond_0

    .line 92
    :try_start_0
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    const-string v1, "amount"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 94
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    new-instance p0, Lccsancom/mbridge/msdk/videocommon/b/c;

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/videocommon/b/c;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 97
    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lccsanorg/json/JSONArray;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/json/JSONArray;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/videocommon/b/c;",
            ">;"
        }
    .end annotation

    .line 69
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 71
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 73
    invoke-virtual {p0, v1}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v2

    .line 74
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    const-string v4, "amount"

    invoke-virtual {v2, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 76
    const-string v5, "id"

    invoke-virtual {v2, v5}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    new-instance v5, Lccsancom/mbridge/msdk/videocommon/b/c;

    invoke-direct {v5, v3, v4}, Lccsancom/mbridge/msdk/videocommon/b/c;-><init>(Ljava/lang/String;I)V

    .line 78
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-object v0

    .line 81
    :catch_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/b/c;
    .locals 3

    .line 48
    nop

    .line 50
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/d/b;->b()Lccsancom/mbridge/msdk/videocommon/d/a;

    move-result-object v1

    .line 52
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/b/c;->c()Lccsancom/mbridge/msdk/videocommon/b/c;

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    .line 55
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/d/a;->i()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/d/a;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsancom/mbridge/msdk/videocommon/b/c;

    move-object v0, p0

    .line 59
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 60
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/b/c;->c()Lccsancom/mbridge/msdk/videocommon/b/c;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_2
    goto :goto_1

    .line 62
    :catch_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    :goto_1
    return-object v0
.end method

.method private static c()Lccsancom/mbridge/msdk/videocommon/b/c;
    .locals 3

    .line 43
    new-instance v0, Lccsancom/mbridge/msdk/videocommon/b/c;

    const-string v1, "Virtual Item"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/videocommon/b/c;-><init>(Ljava/lang/String;I)V

    .line 44
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 39
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/b/c;->b:I

    .line 40
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/b/c;->a:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public final b()I
    .locals 1

    .line 35
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/b/c;->b:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reward{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/mbridge/msdk/videocommon/b/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
