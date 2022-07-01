.class final Lccsancom/mbridge/msdk/reward/a/a$d$1;
.super Ljava/lang/Object;
.source "RewardVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/reward/a/a$d;->a(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/reward/a/a$d;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/a/a$d;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d$1;->a:Lccsancom/mbridge/msdk/reward/a/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 693
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$d$1;->a:Lccsancom/mbridge/msdk/reward/a/a$d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a$d;->a(Lccsancom/mbridge/msdk/reward/a/a$d;)Lccsancom/mbridge/msdk/reward/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$d$1;->a:Lccsancom/mbridge/msdk/reward/a/a$d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a$d;->a(Lccsancom/mbridge/msdk/reward/a/a$d;)Lccsancom/mbridge/msdk/reward/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Z)V

    .line 696
    :cond_0
    return-void
.end method
