.class public final Lccsancom/mbridge/msdk/foundation/same/b/d;
.super Lccsancom/mbridge/msdk/foundation/same/b/b;
.source "MBridgeDirContext.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/same/b/b;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected final b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/same/b/a;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/b/c;->j:Lccsancom/mbridge/msdk/foundation/same/b/c;

    const-string v2, "mb/res"

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/same/b/d;->a(Ljava/util/ArrayList;Lccsancom/mbridge/msdk/foundation/same/b/c;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/same/b/a;

    .line 26
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/b/c;->b:Lccsancom/mbridge/msdk/foundation/same/b/c;

    const-string v2, "mb/res/Movies"

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/same/b/d;->a(Ljava/util/ArrayList;Lccsancom/mbridge/msdk/foundation/same/b/c;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/same/b/a;

    move-result-object v1

    .line 27
    sget-object v2, Lccsancom/mbridge/msdk/foundation/same/b/c;->c:Lccsancom/mbridge/msdk/foundation/same/b/c;

    const-string v3, "mb/res/.MBridge_VC"

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/same/b/a;->a(Lccsancom/mbridge/msdk/foundation/same/b/c;Ljava/lang/String;)V

    .line 29
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/b/c;->d:Lccsancom/mbridge/msdk/foundation/same/b/c;

    const-string v2, "mb/res/.mbridge700"

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/same/b/d;->a(Ljava/util/ArrayList;Lccsancom/mbridge/msdk/foundation/same/b/c;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/same/b/a;

    move-result-object v1

    .line 30
    sget-object v2, Lccsancom/mbridge/msdk/foundation/same/b/c;->f:Lccsancom/mbridge/msdk/foundation/same/b/c;

    const-string v3, "mb/res/img"

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/same/b/a;->a(Lccsancom/mbridge/msdk/foundation/same/b/c;Ljava/lang/String;)V

    .line 31
    sget-object v2, Lccsancom/mbridge/msdk/foundation/same/b/c;->e:Lccsancom/mbridge/msdk/foundation/same/b/c;

    const-string v3, "mb/res/res"

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/same/b/a;->a(Lccsancom/mbridge/msdk/foundation/same/b/c;Ljava/lang/String;)V

    .line 32
    sget-object v2, Lccsancom/mbridge/msdk/foundation/same/b/c;->g:Lccsancom/mbridge/msdk/foundation/same/b/c;

    const-string v3, "mb/res/html"

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/same/b/a;->a(Lccsancom/mbridge/msdk/foundation/same/b/c;Ljava/lang/String;)V

    .line 34
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/b/c;->i:Lccsancom/mbridge/msdk/foundation/same/b/c;

    const-string v2, "mb/other"

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/same/b/d;->a(Ljava/util/ArrayList;Lccsancom/mbridge/msdk/foundation/same/b/c;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/same/b/a;

    .line 36
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/b/c;->h:Lccsancom/mbridge/msdk/foundation/same/b/c;

    const-string v3, "mb/crashinfo"

    invoke-virtual {p0, v0, v1, v3}, Lccsancom/mbridge/msdk/foundation/same/b/d;->a(Ljava/util/ArrayList;Lccsancom/mbridge/msdk/foundation/same/b/c;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/same/b/a;

    .line 37
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/b/c;->i:Lccsancom/mbridge/msdk/foundation/same/b/c;

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/same/b/d;->a(Ljava/util/ArrayList;Lccsancom/mbridge/msdk/foundation/same/b/c;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/same/b/a;

    .line 39
    return-object v0
.end method
