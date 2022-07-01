.class final Lccsancom/mbridge/msdk/reward/a/a$4;
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
.field final synthetic a:Z

.field final synthetic b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic c:I

.field final synthetic d:Lccsancom/mbridge/msdk/reward/a/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/a/a;ZLccsancom/mbridge/msdk/foundation/entity/CampaignEx;I)V
    .locals 0

    .line 1158
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->a:Z

    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iput p4, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1161
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1165
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->b(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p4

    invoke-static {p1, p2, p4}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;Ljava/lang/String;Ljava/util/List;)V

    .line 1166
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->a:Z

    const/4 p2, 0x0

    const-string p4, "errorCode: 3202 errorMessage: temp resource download failed"

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1167
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    iget-boolean p1, p1, Lccsancom/mbridge/msdk/reward/a/a;->f:Z

    if-nez p1, :cond_3

    .line 1168
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    iput-boolean v0, p1, Lccsancom/mbridge/msdk/reward/a/a;->f:Z

    .line 1169
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 1170
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->m(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/content/Context;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v4

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v6

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1172
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object p1

    invoke-static {p1, p4}, Lccsancom/mbridge/msdk/reward/a/a$c;->d(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;)V

    goto :goto_0

    .line 1175
    :cond_1
    iget p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->c:I

    if-ne p1, v0, :cond_3

    .line 1176
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    iget-boolean p1, p1, Lccsancom/mbridge/msdk/reward/a/a;->f:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1177
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    iput-boolean v0, p1, Lccsancom/mbridge/msdk/reward/a/a;->f:Z

    .line 1178
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1179
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->m(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v4

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v6

    const-string v2, "temp resource download failed"

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1181
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$4;->d:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object p1

    invoke-static {p1, p4}, Lccsancom/mbridge/msdk/reward/a/a$c;->d(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;)V

    .line 1185
    :cond_3
    :goto_0
    return-void
.end method
