.class public final Lccsancom/mbridge/msdk/foundation/db/a/a;
.super Ljava/lang/Object;
.source "ReplaceTempDaoMiddle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/db/a/a$a;
    }
.end annotation


# instance fields
.field private a:Lccsancom/mbridge/msdk/foundation/db/l;

.field private b:Lccsancom/mbridge/msdk/foundation/same/a/b;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/a/b;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/foundation/same/a/b;-><init>(I)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/db/a/a;->b:Lccsancom/mbridge/msdk/foundation/same/a/b;

    .line 20
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/l;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/l;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/db/a/a;->a:Lccsancom/mbridge/msdk/foundation/db/l;

    .line 21
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/db/l;->a()Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 22
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/foundation/db/a/a;->a(Lccsanorg/json/JSONObject;Z)V

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/foundation/db/a/a$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/db/a/a;-><init>()V

    return-void
.end method

.method public static a()Lccsancom/mbridge/msdk/foundation/db/a/a;
    .locals 1

    .line 29
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/db/a/a$a;->a()Lccsancom/mbridge/msdk/foundation/db/a/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lccsanorg/json/JSONObject;
    .locals 2

    .line 33
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/db/a/a;->b:Lccsancom/mbridge/msdk/foundation/same/a/b;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/a/b;->a(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    return-object v0

    .line 37
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/db/a/a;->a:Lccsancom/mbridge/msdk/foundation/db/l;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/db/l;->a(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/db/a/a;->b:Lccsancom/mbridge/msdk/foundation/same/a/b;

    invoke-virtual {v1, p1, v0}, Lccsancom/mbridge/msdk/foundation/same/a/b;->a(Ljava/lang/String;Lccsanorg/json/JSONObject;)Z

    .line 42
    :cond_1
    return-object v0
.end method

.method public final a(Lccsanorg/json/JSONObject;Z)V
    .locals 4

    .line 46
    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 48
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v2

    .line 51
    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/db/a/a;->b:Lccsancom/mbridge/msdk/foundation/same/a/b;

    invoke-virtual {v3, v1, v2}, Lccsancom/mbridge/msdk/foundation/same/a/b;->a(Ljava/lang/String;Lccsanorg/json/JSONObject;)Z

    .line 52
    if-eqz p2, :cond_0

    .line 53
    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/db/a/a;->a:Lccsancom/mbridge/msdk/foundation/db/l;

    invoke-virtual {v3, v1, v2}, Lccsancom/mbridge/msdk/foundation/db/l;->a(Ljava/lang/String;Lccsanorg/json/JSONObject;)V

    .line 55
    :cond_0
    goto :goto_0

    .line 57
    :cond_1
    return-void
.end method

.method public final b()Lccsanorg/json/JSONArray;
    .locals 2

    .line 60
    new-instance v0, Lccsanorg/json/JSONArray;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/db/a/a;->b:Lccsancom/mbridge/msdk/foundation/same/a/b;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/same/a/b;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
