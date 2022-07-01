.class public final Lccsancom/mbridge/msdk/videocommon/b/b;
.super Ljava/lang/Object;
.source "AdUnitInfo.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Lccsancom/mbridge/msdk/videocommon/b/a;


# direct methods
.method public constructor <init>(IILccsancom/mbridge/msdk/videocommon/b/a;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/b/b;->a:I

    .line 20
    iput p2, p0, Lccsancom/mbridge/msdk/videocommon/b/b;->b:I

    .line 21
    iput-object p3, p0, Lccsancom/mbridge/msdk/videocommon/b/b;->c:Lccsancom/mbridge/msdk/videocommon/b/a;

    .line 22
    return-void
.end method

.method public static a(Lccsanorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/videocommon/b/b;",
            ">;"
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 53
    invoke-virtual {p0, v2}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v3

    .line 54
    const-string v4, "id"

    invoke-virtual {v3, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 55
    const-string v5, "timeout"

    invoke-virtual {v3, v5}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 56
    const-string v6, "params"

    .line 57
    invoke-virtual {v3, v6}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v3

    .line 58
    nop

    .line 59
    if-eqz v3, :cond_0

    .line 60
    invoke-static {v3}, Lccsancom/mbridge/msdk/videocommon/b/a;->a(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/videocommon/b/a;

    move-result-object v3

    goto :goto_1

    .line 59
    :cond_0
    move-object v3, v0

    .line 62
    :goto_1
    new-instance v6, Lccsancom/mbridge/msdk/videocommon/b/b;

    invoke-direct {v6, v4, v5, v3}, Lccsancom/mbridge/msdk/videocommon/b/b;-><init>(IILccsancom/mbridge/msdk/videocommon/b/a;)V

    .line 64
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_1
    return-object v1

    .line 67
    :catch_0
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 25
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/b/b;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 33
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/b/b;->b:I

    return v0
.end method
