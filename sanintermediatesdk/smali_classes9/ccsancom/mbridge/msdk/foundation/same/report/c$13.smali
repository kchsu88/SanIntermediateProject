.class final Lccsancom/mbridge/msdk/foundation/same/report/c$13;
.super Lccsancom/mbridge/msdk/foundation/same/report/d/b;
.source "ReportController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/same/report/c;->a(Lccsancom/mbridge/msdk/foundation/entity/k;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/entity/k;

.field final synthetic b:Ljava/lang/Boolean;

.field final synthetic c:Lccsancom/mbridge/msdk/foundation/same/report/c;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/same/report/c;Lccsancom/mbridge/msdk/foundation/entity/k;Ljava/lang/Boolean;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/c$13;->c:Lccsancom/mbridge/msdk/foundation/same/report/c;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/report/c$13;->a:Lccsancom/mbridge/msdk/foundation/entity/k;

    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/same/report/c$13;->b:Ljava/lang/Boolean;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/report/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 143
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/c$13;->c:Lccsancom/mbridge/msdk/foundation/same/report/c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/report/c;->a(Lccsancom/mbridge/msdk/foundation/same/report/c;)Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/db/m;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/m;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/c$13;->a:Lccsancom/mbridge/msdk/foundation/entity/k;

    .line 144
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/k;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/report/c$13;->a:Lccsancom/mbridge/msdk/foundation/entity/k;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/db/m;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/c$13;->b:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/c$13;->c:Lccsancom/mbridge/msdk/foundation/same/report/c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/report/c;->a(Lccsancom/mbridge/msdk/foundation/same/report/c;)Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/db/m;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/m;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/db/m;->b()I

    move-result p1

    .line 148
    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    .line 149
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/b;->a()Lccsancom/mbridge/msdk/foundation/controller/b;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/b;->c()V

    .line 152
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 157
    return-void
.end method
