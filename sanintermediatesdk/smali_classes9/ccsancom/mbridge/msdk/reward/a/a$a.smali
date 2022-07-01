.class public final Lccsancom/mbridge/msdk/reward/a/a$a;
.super Ljava/lang/Object;
.source "RewardVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/reward/a/a;

.field private b:Lccsancom/mbridge/msdk/reward/adapter/a;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/reward/a/a;Lccsancom/mbridge/msdk/reward/adapter/a;IZ)V
    .locals 0

    .line 2044
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$a;->a:Lccsancom/mbridge/msdk/reward/a/a;

    .line 2045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2046
    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a$a;->b:Lccsancom/mbridge/msdk/reward/adapter/a;

    .line 2047
    iput p3, p0, Lccsancom/mbridge/msdk/reward/a/a$a;->c:I

    .line 2048
    iput-boolean p4, p0, Lccsancom/mbridge/msdk/reward/a/a$a;->d:Z

    .line 2049
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 2053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/mbridge/msdk/reward/a/a$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " CommonCancelTimeTask mIsDevCall\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/a/a$a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardVideoController"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$a;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->m(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$a;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$a;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v5

    const/4 v1, 0x0

    const-string v3, "v3 is timeout"

    const-string v6, ""

    const-string v7, ""

    invoke-static/range {v1 .. v7}, Lccsancom/mbridge/msdk/reward/b/a;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2056
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$a;->a:Lccsancom/mbridge/msdk/reward/a/a;

    const-string v1, "v3 is timeout"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;Ljava/lang/String;)V

    .line 2057
    return-void
.end method
