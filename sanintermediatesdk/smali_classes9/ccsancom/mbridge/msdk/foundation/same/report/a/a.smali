.class public final Lccsancom/mbridge/msdk/foundation/same/report/a/a;
.super Ljava/lang/Object;
.source "CampaignRequestTimeUtil.java"


# instance fields
.field private a:Lccsancom/mbridge/msdk/foundation/entity/g;

.field private b:Lccsancom/mbridge/msdk/foundation/db/f;

.field private c:Lccsanandroid/content/Context;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/foundation/entity/g;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->b:Lccsancom/mbridge/msdk/foundation/db/f;

    .line 20
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->a:Lccsancom/mbridge/msdk/foundation/entity/g;

    .line 21
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->c:Lccsanandroid/content/Context;

    .line 22
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->b:Lccsancom/mbridge/msdk/foundation/db/f;

    .line 23
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->a:Lccsancom/mbridge/msdk/foundation/entity/g;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->c:Lccsanandroid/content/Context;

    if-eqz p1, :cond_0

    .line 24
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result p1

    .line 25
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->a:Lccsancom/mbridge/msdk/foundation/entity/g;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/g;->d(I)V

    .line 26
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->a:Lccsancom/mbridge/msdk/foundation/entity/g;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->c:Lccsanandroid/content/Context;

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->a(Lccsanandroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/g;->c(Ljava/lang/String;)V

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 58
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->a:Lccsancom/mbridge/msdk/foundation/entity/g;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->b:Lccsancom/mbridge/msdk/foundation/db/f;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/k;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/k;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->a:Lccsancom/mbridge/msdk/foundation/entity/g;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/k;->a(Lccsancom/mbridge/msdk/foundation/entity/g;)V

    .line 61
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 39
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->a:Lccsancom/mbridge/msdk/foundation/entity/g;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/g;->b(I)V

    .line 42
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->a:Lccsancom/mbridge/msdk/foundation/entity/g;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/g;->a(Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->a:Lccsancom/mbridge/msdk/foundation/entity/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/g;->c(I)V

    .line 50
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->a:Lccsancom/mbridge/msdk/foundation/entity/g;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/g;->b(Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 69
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a/a;->a:Lccsancom/mbridge/msdk/foundation/entity/g;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/g;->a(I)V

    .line 72
    :cond_0
    return-void
.end method
