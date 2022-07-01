.class public Lccsancom/mbridge/msdk/foundation/same/net/d/c;
.super Lccsancom/mbridge/msdk/foundation/same/net/d/e;
.source "JsonArrayRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/foundation/same/net/d/e<",
        "Lccsanorg/json/JSONArray;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lccsancom/mbridge/msdk/foundation/same/net/d/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/net/d/c;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/foundation/same/net/e<",
            "Lccsanorg/json/JSONArray;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/foundation/same/net/d/e;-><init>(ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected final a(Lccsancom/mbridge/msdk/foundation/same/net/f/c;)Lccsancom/mbridge/msdk/foundation/same/net/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/f/c;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/same/net/k<",
            "Lccsanorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .line 26
    const/16 v0, 0x8

    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lccsancom/mbridge/msdk/foundation/same/net/f/c;->b:[B

    iget-object v3, p1, Lccsancom/mbridge/msdk/foundation/same/net/f/c;->d:Ljava/util/List;

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 27
    new-instance v2, Lccsanorg/json/JSONArray;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1}, Lccsancom/mbridge/msdk/foundation/same/net/k;->a(Ljava/lang/Object;Lccsancom/mbridge/msdk/foundation/same/net/f/c;)Lccsancom/mbridge/msdk/foundation/same/net/k;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 31
    :catch_0
    move-exception v1

    .line 32
    sget-object v2, Lccsancom/mbridge/msdk/foundation/same/net/d/c;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;

    invoke-direct {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/a/a;-><init>(ILccsancom/mbridge/msdk/foundation/same/net/f/c;)V

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/same/net/k;->a(Lccsancom/mbridge/msdk/foundation/same/net/a/a;)Lccsancom/mbridge/msdk/foundation/same/net/k;

    move-result-object p1

    return-object p1

    .line 28
    :catch_1
    move-exception v1

    .line 29
    sget-object v2, Lccsancom/mbridge/msdk/foundation/same/net/d/c;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;

    invoke-direct {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/a/a;-><init>(ILccsancom/mbridge/msdk/foundation/same/net/f/c;)V

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/same/net/k;->a(Lccsancom/mbridge/msdk/foundation/same/net/a/a;)Lccsancom/mbridge/msdk/foundation/same/net/k;

    move-result-object p1

    return-object p1
.end method
