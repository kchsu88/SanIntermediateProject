.class public Lccsancom/mbridge/msdk/foundation/same/net/f;
.super Ljava/lang/Object;
.source "Listener.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/net/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/mbridge/msdk/foundation/same/net/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:J

.field private b:Lccsancom/mbridge/msdk/foundation/same/report/a/a;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/f;->d:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/f;->e:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/f;->f:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/f;->b:Lccsancom/mbridge/msdk/foundation/same/report/a/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/f;->a:J

    .line 23
    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/f;->b:Lccsancom/mbridge/msdk/foundation/same/report/a/a;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->b(I)V

    .line 93
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/f;->b:Lccsancom/mbridge/msdk/foundation/same/report/a/a;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->a()V

    .line 95
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 4

    .line 83
    new-instance v0, Lccsancom/mbridge/msdk/foundation/entity/g;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/entity/g;-><init>()V

    .line 84
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/report/a/a;

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/foundation/same/report/a/a;-><init>(Lccsancom/mbridge/msdk/foundation/entity/g;)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/f;->b:Lccsancom/mbridge/msdk/foundation/same/report/a/a;

    .line 85
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->b(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/f;->b:Lccsancom/mbridge/msdk/foundation/same/report/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->a(I)V

    .line 87
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/f;->b:Lccsancom/mbridge/msdk/foundation/same/report/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/f;->a:J

    sub-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->a(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public a(JJ)V
    .locals 0

    .line 68
    return-void
.end method

.method public a(Lccsancom/mbridge/msdk/foundation/same/net/a/a;)V
    .locals 0

    .line 52
    return-void
.end method

.method public a(Lccsancom/mbridge/msdk/foundation/same/net/k;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/k<",
            "TT;>;)V"
        }
    .end annotation

    .line 32
    const-string v0, "_"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/f;->f:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->a:Ljava/lang/Object;

    instance-of v1, v1, Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "status"

    if-eqz v1, :cond_0

    .line 34
    :try_start_1
    iget-object v1, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->a:Ljava/lang/Object;

    check-cast v1, Lccsanorg/json/JSONObject;

    invoke-virtual {v1, v8}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 35
    iget-object v1, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->a:Ljava/lang/Object;

    check-cast v1, Lccsanorg/json/JSONObject;

    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 36
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->a()Lccsancom/mbridge/msdk/foundation/same/net/g/c;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->a(Ljava/lang/String;ILjava/lang/String;J)V

    .line 39
    :cond_0
    iget-object v1, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->a:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 40
    new-instance v1, Lccsanorg/json/JSONObject;

    iget-object v2, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v8}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 42
    iget-object p1, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->a:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 43
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->a()Lccsancom/mbridge/msdk/foundation/same/net/g/c;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->a(Ljava/lang/String;ILjava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    :cond_1
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Listener"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 27
    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 98
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/f;->b:Lccsancom/mbridge/msdk/foundation/same/report/a/a;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->c(I)V

    .line 101
    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 56
    return-void
.end method

.method public final d()V
    .locals 0

    .line 60
    return-void
.end method
