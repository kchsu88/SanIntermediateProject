.class final Lccsancom/mbridge/msdk/reward/a/a$3$2$1;
.super Ljava/lang/Object;
.source "RewardVideoController.java"

# interfaces
.implements Lccsancom/mbridge/msdk/reward/adapter/c$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/reward/a/a$3$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/reward/a/a$3$2;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/a/a$3$2;)V
    .locals 0

    .line 1097
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V
    .locals 7

    .line 1101
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->c:Lccsancom/mbridge/msdk/reward/adapter/d;

    const/4 p5, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->c:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-object p6, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p6, p6, Lccsancom/mbridge/msdk/reward/a/a$3$2;->d:Ljava/util/List;

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-boolean v0, v0, Lccsancom/mbridge/msdk/reward/a/a$3;->a:Z

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object v1, v1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget v1, v1, Lccsancom/mbridge/msdk/reward/a/a$3;->d:I

    invoke-virtual {p1, p6, v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Ljava/util/List;ZI)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1102
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1103
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    iget-boolean p1, p1, Lccsancom/mbridge/msdk/reward/a/a;->g:Z

    if-nez p1, :cond_2

    .line 1104
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    iput-boolean p5, p1, Lccsancom/mbridge/msdk/reward/a/a;->g:Z

    .line 1105
    const-string p1, "RewardVideoController"

    const-string p4, "Cache onVideoLoadSuccessForCache"

    invoke-static {p1, p4}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->m(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/content/Context;

    move-result-object p1

    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p4, p4, Lccsancom/mbridge/msdk/reward/a/a$3$2;->d:Ljava/util/List;

    iget-object p5, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p5, p5, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p5, p5, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p5}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object p5

    const-wide/16 v0, 0x0

    invoke-static {p1, p4, p5, v0, v1}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsanandroid/content/Context;Ljava/util/List;Ljava/lang/String;J)V

    .line 1107
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lccsancom/mbridge/msdk/reward/a/a$c;->b(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1111
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p2, p2, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p2, p2, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p2}, Lccsancom/mbridge/msdk/reward/a/a;->b(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;Ljava/lang/String;Ljava/util/List;)V

    .line 1112
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1113
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    iget-boolean p1, p1, Lccsancom/mbridge/msdk/reward/a/a;->f:Z

    if-nez p1, :cond_2

    .line 1114
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    iput-boolean p5, p1, Lccsancom/mbridge/msdk/reward/a/a;->f:Z

    .line 1115
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 1116
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->m(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v4

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v6

    const-string v2, "tpl temp preload success but isReady false"

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1118
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object p1

    const-string p2, "errorCode: 3504 errorMessage: tpl temp preload success but isReady false"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/reward/a/a$c;->d(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;)V

    .line 1122
    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Ljava/lang/String;)V
    .locals 7

    .line 1126
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p2, p2, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p2, p2, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p2}, Lccsancom/mbridge/msdk/reward/a/a;->b(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;Ljava/lang/String;Ljava/util/List;)V

    .line 1127
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1128
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    iget-boolean p1, p1, Lccsancom/mbridge/msdk/reward/a/a;->f:Z

    if-nez p1, :cond_1

    .line 1129
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lccsancom/mbridge/msdk/reward/a/a;->f:Z

    .line 1130
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 1131
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->m(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/content/Context;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "tpl temp preload failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v4

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v6

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1133
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$3$2$1;->a:Lccsancom/mbridge/msdk/reward/a/a$3$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3$2;->e:Lccsancom/mbridge/msdk/reward/a/a$3;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/a/a$3;->e:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "errorCode: 3302 errorMessage: tpl temp preload failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/reward/a/a$c;->d(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;)V

    .line 1136
    :cond_1
    return-void
.end method
