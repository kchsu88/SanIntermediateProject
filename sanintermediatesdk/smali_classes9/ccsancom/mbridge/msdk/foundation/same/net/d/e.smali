.class public abstract Lccsancom/mbridge/msdk/foundation/same/net/d/e;
.super Lccsancom/mbridge/msdk/foundation/same/net/i;
.source "JsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/mbridge/msdk/foundation/same/net/i<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lccsancom/mbridge/msdk/foundation/same/net/d/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/net/d/e;->c:Ljava/lang/String;

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
            "TT;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2, p4}, Lccsancom/mbridge/msdk/foundation/same/net/i;-><init>(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 16
    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/e;->d:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public final e()[B
    .locals 3

    .line 23
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/e;->d:Ljava/lang/String;

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

    .line 24
    :catch_0
    move-exception v1

    .line 25
    return-object v0
.end method
