.class final Lccsancom/mbridge/msdk/reward/adapter/d$4;
.super Ljava/lang/Object;
.source "RewardMVVideoAdapter.java"

# interfaces
.implements Lccsancom/mbridge/msdk/reward/adapter/c$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/adapter/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic c:I

.field final synthetic d:Lccsancom/mbridge/msdk/reward/adapter/d;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/adapter/d;ZLccsancom/mbridge/msdk/foundation/entity/CampaignEx;I)V
    .locals 0

    .line 1760
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$4;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$4;->a:Z

    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/d$4;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iput p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$4;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1763
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1767
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$4;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$4;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$4;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1768
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$4;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object p1

    new-instance p4, Lccsancom/mbridge/msdk/reward/adapter/d$4$1;

    invoke-direct {p4, p0, p2, p5, p3}, Lccsancom/mbridge/msdk/reward/adapter/d$4$1;-><init>(Lccsancom/mbridge/msdk/reward/adapter/d$4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1785
    :cond_0
    iget p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$4;->c:I

    const/4 p4, 0x1

    if-ne p1, p4, :cond_1

    .line 1786
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$4;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$4;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1787
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$4;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object p1

    new-instance p4, Lccsancom/mbridge/msdk/reward/adapter/d$4$2;

    invoke-direct {p4, p0, p2, p3}, Lccsancom/mbridge/msdk/reward/adapter/d$4$2;-><init>(Lccsancom/mbridge/msdk/reward/adapter/d$4;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1806
    :cond_1
    :goto_0
    return-void
.end method
