.class public Lccsancom/mbridge/msdk/mbsignalcommon/webEnvCheck/WebGLCheckSignal;
.super Lccsancom/mbridge/msdk/mbsignalcommon/windvane/h;
.source "WebGLCheckSignal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/h;-><init>()V

    return-void
.end method


# virtual methods
.method public webglState(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 13
    :try_start_0
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    const-string p2, "webgl"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 15
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsancom/mbridge/msdk/foundation/controller/a;->c(I)V

    .line 16
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->a(Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 20
    :goto_0
    return-void
.end method
