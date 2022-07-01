.class public Lccsancom/mbridge/msdk/foundation/same/net/d/f;
.super Lccsancom/mbridge/msdk/foundation/same/net/i;
.source "StringRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/foundation/same/net/i<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lccsancom/mbridge/msdk/foundation/same/net/d/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/net/d/f;->c:Ljava/lang/String;

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2, p4}, Lccsancom/mbridge/msdk/foundation/same/net/i;-><init>(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 21
    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/f;->d:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method protected final a(Lccsancom/mbridge/msdk/foundation/same/net/f/c;)Lccsancom/mbridge/msdk/foundation/same/net/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/f/c;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/same/net/k<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lccsancom/mbridge/msdk/foundation/same/net/f/c;->b:[B

    iget-object v2, p1, Lccsancom/mbridge/msdk/foundation/same/net/f/c;->d:Ljava/util/List;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 38
    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/k;->a(Ljava/lang/Object;Lccsancom/mbridge/msdk/foundation/same/net/f/c;)Lccsancom/mbridge/msdk/foundation/same/net/k;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/net/d/f;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/net/a/a;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Lccsancom/mbridge/msdk/foundation/same/net/a/a;-><init>(ILccsancom/mbridge/msdk/foundation/same/net/f/c;)V

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/net/k;->a(Lccsancom/mbridge/msdk/foundation/same/net/a/a;)Lccsancom/mbridge/msdk/foundation/same/net/k;

    move-result-object p1

    return-object p1
.end method

.method public final e()[B
    .locals 3

    .line 27
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/f;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return-object v0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    return-object v0
.end method
