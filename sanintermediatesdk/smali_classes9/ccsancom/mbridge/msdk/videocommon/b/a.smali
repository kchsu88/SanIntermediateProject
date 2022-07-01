.class public final Lccsancom/mbridge/msdk/videocommon/b/a;
.super Ljava/lang/Object;
.source "AdParams.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/b/a;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lccsancom/mbridge/msdk/videocommon/b/a;->b:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static a(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/videocommon/b/a;
    .locals 2

    .line 35
    nop

    .line 36
    if-eqz p0, :cond_0

    .line 38
    :try_start_0
    const-string v0, "appId"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string v1, "placementId"

    .line 40
    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 41
    new-instance v1, Lccsancom/mbridge/msdk/videocommon/b/a;

    invoke-direct {v1, v0, p0}, Lccsancom/mbridge/msdk/videocommon/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return-object v1

    .line 43
    :catch_0
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
