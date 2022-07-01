.class final Lccsancom/mbridge/msdk/c/a$2;
.super Ljava/lang/Object;
.source "LoopTimer.java"

# interfaces
.implements Lccsancom/mbridge/msdk/reward/adapter/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/c/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/reward/adapter/d;

.field final synthetic b:Lccsancom/mbridge/msdk/c/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/c/a;Lccsancom/mbridge/msdk/reward/adapter/d;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lccsancom/mbridge/msdk/c/a$2;->b:Lccsancom/mbridge/msdk/c/a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/c/a$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 207
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 211
    iget-object p1, p0, Lccsancom/mbridge/msdk/c/a$2;->b:Lccsancom/mbridge/msdk/c/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/c/a;->d(Lccsancom/mbridge/msdk/c/a;)Lccsanandroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/c/a$2;->b:Lccsancom/mbridge/msdk/c/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/c/a;->d(Lccsancom/mbridge/msdk/c/a;)Lccsanandroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->obtainMessage(I)Lccsanandroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 212
    iget-object p1, p0, Lccsancom/mbridge/msdk/c/a$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/b;)V

    .line 213
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 217
    iget-object p1, p0, Lccsancom/mbridge/msdk/c/a$2;->b:Lccsancom/mbridge/msdk/c/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/c/a;->d(Lccsancom/mbridge/msdk/c/a;)Lccsanandroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/c/a$2;->b:Lccsancom/mbridge/msdk/c/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/c/a;->d(Lccsancom/mbridge/msdk/c/a;)Lccsanandroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->obtainMessage(I)Lccsanandroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 218
    iget-object p1, p0, Lccsancom/mbridge/msdk/c/a$2;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/b;)V

    .line 219
    return-void
.end method
