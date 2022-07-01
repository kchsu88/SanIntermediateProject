.class public abstract Lccsancom/mbridge/msdk/foundation/same/net/h/c;
.super Lccsancom/mbridge/msdk/foundation/same/net/f;
.source "CommonMBListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/foundation/same/net/f<",
        "Lccsanorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/net/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/a/a;)V
    .locals 0

    .line 29
    iget p1, p1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;->a:I

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/net/g/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/c;->a(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/k<",
            "Lccsanorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 15
    if-eqz p1, :cond_2

    .line 16
    iget-object v0, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->a:Ljava/lang/Object;

    check-cast v0, Lccsanorg/json/JSONObject;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 17
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->a:Ljava/lang/Object;

    check-cast p1, Lccsanorg/json/JSONObject;

    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/c;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    iget-object p1, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->a:Ljava/lang/Object;

    check-cast p1, Lccsanorg/json/JSONObject;

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/c;->a(Lccsanorg/json/JSONObject;)V

    .line 25
    :cond_2
    :goto_1
    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Lccsanorg/json/JSONObject;)V
.end method
