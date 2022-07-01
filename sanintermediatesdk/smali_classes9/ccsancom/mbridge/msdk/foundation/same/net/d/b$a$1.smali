.class final Lccsancom/mbridge/msdk/foundation/same/net/d/b$a$1;
.super Lccsancom/mbridge/msdk/foundation/same/net/f;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/foundation/same/net/f<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a$1;->b:Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/net/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 100
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a$1;->b:Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->b(Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;)Lccsancom/mbridge/msdk/foundation/same/net/e;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/same/net/e;->a()V

    .line 101
    return-void
.end method

.method public final a(JJ)V
    .locals 1

    .line 134
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a$1;->b:Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->b(Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;)Lccsancom/mbridge/msdk/foundation/same/net/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/foundation/same/net/e;->a(JJ)V

    .line 135
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/a/a;)V
    .locals 1

    .line 121
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a$1;->a:Z

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a$1;->b:Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->b(Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;)Lccsancom/mbridge/msdk/foundation/same/net/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/e;->a(Lccsancom/mbridge/msdk/foundation/same/net/a/a;)V

    .line 124
    :cond_0
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/k;)V
    .locals 1

    .line 114
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a$1;->a:Z

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a$1;->b:Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->b(Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;)Lccsancom/mbridge/msdk/foundation/same/net/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/e;->a(Lccsancom/mbridge/msdk/foundation/same/net/k;)V

    .line 117
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 105
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a$1;->a:Z

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a$1;->b:Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->a(Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;I)I

    .line 107
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a$1;->b:Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->b(Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;)Lccsancom/mbridge/msdk/foundation/same/net/e;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/same/net/e;->b()V

    .line 108
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a$1;->b:Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->a:Lccsancom/mbridge/msdk/foundation/same/net/d/b;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a$1;->b:Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/d/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/d/b;Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;)V

    .line 110
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 128
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a$1;->b:Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->b(Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;)Lccsancom/mbridge/msdk/foundation/same/net/e;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/same/net/e;->c()V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a$1;->a:Z

    .line 130
    return-void
.end method
