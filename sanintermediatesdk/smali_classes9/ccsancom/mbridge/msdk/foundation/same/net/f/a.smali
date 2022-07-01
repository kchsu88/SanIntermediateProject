.class public Lccsancom/mbridge/msdk/foundation/same/net/f/a;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/net/g;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lccsancom/mbridge/msdk/foundation/same/net/e/a;

.field private c:Lccsancom/mbridge/msdk/foundation/same/net/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lccsancom/mbridge/msdk/foundation/same/net/f/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/net/f/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/foundation/same/net/e/a;Lccsancom/mbridge/msdk/foundation/same/net/c;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/f/a;->b:Lccsancom/mbridge/msdk/foundation/same/net/e/a;

    .line 28
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/net/f/a;->c:Lccsancom/mbridge/msdk/foundation/same/net/c;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/i;)Lccsancom/mbridge/msdk/foundation/same/net/f/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/i<",
            "*>;)",
            "Lccsancom/mbridge/msdk/foundation/same/net/f/c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/foundation/same/net/a/a;
        }
    .end annotation

    .line 33
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    .line 35
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/net/i;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 41
    nop

    .line 42
    nop

    .line 44
    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/net/i;->f()V

    .line 46
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/f/a;->b:Lccsancom/mbridge/msdk/foundation/same/net/e/a;

    invoke-interface {v2, p1}, Lccsancom/mbridge/msdk/foundation/same/net/e/a;->a(Lccsancom/mbridge/msdk/foundation/same/net/i;)Lccsancom/mbridge/msdk/foundation/same/net/f/b;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lccsanorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 47
    :try_start_1
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/same/net/f/b;->a()I

    move-result v3

    .line 49
    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/same/net/f/a;->c:Lccsancom/mbridge/msdk/foundation/same/net/c;

    invoke-virtual {p1, v2, v4}, Lccsancom/mbridge/msdk/foundation/same/net/i;->a(Lccsancom/mbridge/msdk/foundation/same/net/f/b;Lccsancom/mbridge/msdk/foundation/same/net/c;)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lccsanorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    :try_start_2
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    .line 52
    nop

    .line 1102
    nop

    .line 54
    const/16 v4, 0xc8

    if-lt v3, v4, :cond_0

    const/16 v4, 0x18f

    if-gt v3, v4, :cond_0

    .line 56
    new-instance v4, Lccsancom/mbridge/msdk/foundation/same/net/f/c;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/same/net/f/b;->b()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v3, p1, v5}, Lccsancom/mbridge/msdk/foundation/same/net/f/c;-><init>(I[BLjava/util/List;)V

    return-object v4

    .line 54
    :cond_0
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lccsanorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object p1, v1

    move-object v2, p1

    .line 71
    :goto_0
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException ex= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    const/4 v0, 0x2

    if-eqz v2, :cond_5

    .line 78
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/same/net/f/b;->a()I

    move-result v3

    .line 80
    if-eqz p1, :cond_4

    .line 81
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/net/f/c;

    .line 82
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/same/net/f/b;->b()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v3, p1, v2}, Lccsancom/mbridge/msdk/foundation/same/net/f/c;-><init>(I[BLjava/util/List;)V

    .line 84
    const/16 p1, 0x190

    if-lt v3, p1, :cond_2

    const/16 p1, 0x1f3

    if-le v3, p1, :cond_1

    goto :goto_1

    .line 85
    :cond_1
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;

    const/4 v0, 0x6

    invoke-direct {p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/a/a;-><init>(ILccsancom/mbridge/msdk/foundation/same/net/f/c;)V

    throw p1

    .line 87
    :cond_2
    :goto_1
    const/16 p1, 0x1f4

    if-lt v3, p1, :cond_3

    const/16 p1, 0x257

    if-gt v3, p1, :cond_3

    .line 88
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;

    const/4 v0, 0x7

    invoke-direct {p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/a/a;-><init>(ILccsancom/mbridge/msdk/foundation/same/net/f/c;)V

    throw p1

    .line 91
    :cond_3
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;

    invoke-direct {p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/a/a;-><init>(ILccsancom/mbridge/msdk/foundation/same/net/f/c;)V

    throw p1

    .line 94
    :cond_4
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;

    invoke-direct {p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/a/a;-><init>(ILccsancom/mbridge/msdk/foundation/same/net/f/c;)V

    throw p1

    .line 75
    :cond_5
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;

    invoke-direct {p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/a/a;-><init>(ILccsancom/mbridge/msdk/foundation/same/net/f/c;)V

    throw p1

    .line 66
    :catch_3
    move-exception p1

    .line 67
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MalformedURLException ex= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;

    const/4 v0, 0x4

    invoke-direct {p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/a/a;-><init>(ILccsancom/mbridge/msdk/foundation/same/net/f/c;)V

    throw p1

    .line 62
    :catch_4
    move-exception p1

    .line 63
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectTimeoutException ex= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;

    invoke-direct {p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/a/a;-><init>(ILccsancom/mbridge/msdk/foundation/same/net/f/c;)V

    throw p1

    .line 58
    :catch_5
    move-exception p1

    .line 59
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SocketTimeoutException ex= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;

    invoke-direct {p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/a/a;-><init>(ILccsancom/mbridge/msdk/foundation/same/net/f/c;)V

    throw p1

    .line 36
    :cond_6
    const-string v0, "perform-discard-cancelled"

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/i;->a(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/f/a;->c:Lccsancom/mbridge/msdk/foundation/same/net/c;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/c;->b(Lccsancom/mbridge/msdk/foundation/same/net/i;)V

    .line 38
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/a/a;-><init>(ILccsancom/mbridge/msdk/foundation/same/net/f/c;)V

    throw p1
.end method
