.class final Lccsancom/mbridge/msdk/reward/a/a$5;
.super Ljava/lang/Object;
.source "RewardVideoController.java"

# interfaces
.implements Lccsancom/mbridge/msdk/reward/adapter/c$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/util/List;Lccsancom/mbridge/msdk/reward/adapter/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lccsancom/mbridge/msdk/reward/adapter/d;

.field final synthetic d:Z

.field final synthetic e:I

.field final synthetic f:Lccsancom/mbridge/msdk/reward/a/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/a/a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;Lccsancom/mbridge/msdk/reward/adapter/d;ZI)V
    .locals 0

    .line 1189
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->f:Lccsancom/mbridge/msdk/reward/a/a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->b:Ljava/util/List;

    iput-object p4, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->c:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean p5, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->d:Z

    iput p6, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1192
    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->f:Lccsancom/mbridge/msdk/reward/a/a;

    const/4 v0, 0x1

    iput-boolean v0, p4, Lccsancom/mbridge/msdk/reward/a/a;->d:Z

    .line 1193
    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->f:Lccsancom/mbridge/msdk/reward/a/a;

    iget-boolean p4, p4, Lccsancom/mbridge/msdk/reward/a/a;->c:Z

    if-eqz p4, :cond_0

    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->f:Lccsancom/mbridge/msdk/reward/a/a;

    iget-boolean p4, p4, Lccsancom/mbridge/msdk/reward/a/a;->e:Z

    if-nez p4, :cond_0

    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->f:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p4}, Lccsancom/mbridge/msdk/reward/a/a;->q(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/os/Handler;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 1194
    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->f:Lccsancom/mbridge/msdk/reward/a/a;

    iput-boolean v0, p4, Lccsancom/mbridge/msdk/reward/a/a;->e:Z

    .line 1195
    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->f:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p4}, Lccsancom/mbridge/msdk/reward/a/a;->q(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/os/Handler;

    move-result-object p4

    new-instance v0, Lccsancom/mbridge/msdk/reward/a/a$5$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lccsancom/mbridge/msdk/reward/a/a$5$1;-><init>(Lccsancom/mbridge/msdk/reward/a/a$5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1242
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1246
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->f:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->b(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p4

    invoke-static {p1, p2, p4}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;Ljava/lang/String;Ljava/util/List;)V

    .line 1247
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->f:Lccsancom/mbridge/msdk/reward/a/a;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lccsancom/mbridge/msdk/reward/a/a;->d:Z

    .line 1248
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->f:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1249
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->f:Lccsancom/mbridge/msdk/reward/a/a;

    iget-boolean p1, p1, Lccsancom/mbridge/msdk/reward/a/a;->f:Z

    if-nez p1, :cond_1

    .line 1250
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->f:Lccsancom/mbridge/msdk/reward/a/a;

    const/4 p4, 0x1

    iput-boolean p4, p1, Lccsancom/mbridge/msdk/reward/a/a;->f:Z

    .line 1251
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->f:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->f:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 1252
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->f:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->f:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->m(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/content/Context;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->f:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->f:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v4

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v6

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1254
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$5;->f:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object p1

    const-string p2, "errorCode: 3203 errorMessage: tpl temp resource download failed"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/reward/a/a$c;->d(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;)V

    .line 1257
    :cond_1
    return-void
.end method
