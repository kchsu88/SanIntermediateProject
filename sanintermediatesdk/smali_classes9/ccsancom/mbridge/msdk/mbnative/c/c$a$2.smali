.class final Lccsancom/mbridge/msdk/mbnative/c/c$a$2;
.super Ljava/lang/Object;
.source "NativePreloadController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/mbnative/c/c$a;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lccsancom/mbridge/msdk/mbnative/c/c$a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbnative/c/c$a;Ljava/lang/String;I)V
    .locals 0

    .line 853
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->c:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->a:Ljava/lang/String;

    iput p3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 857
    nop

    .line 858
    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->PRELOAD_RESULT_IN_SUBTHREAD:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 859
    invoke-static {}, Lccsanandroid/os/Looper;->prepare()V

    .line 860
    const/4 v0, 0x1

    goto :goto_0

    .line 862
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->c:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->g(Lccsancom/mbridge/msdk/mbnative/c/c$a;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 864
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->c:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a(Lccsancom/mbridge/msdk/mbnative/c/c$a;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 865
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->c:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v2, v2, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a:Lccsancom/mbridge/msdk/mbnative/c/c;

    invoke-static {v2}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(Lccsancom/mbridge/msdk/mbnative/c/c;)Lccsanandroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->c:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a(Lccsancom/mbridge/msdk/mbnative/c/c$a;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 867
    :cond_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->c:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->f()I

    move-result v2

    if-eq v2, v1, :cond_2

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->c:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->h(Lccsancom/mbridge/msdk/mbnative/c/c$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 868
    :cond_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->c:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v2, v1, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a:Lccsancom/mbridge/msdk/mbnative/c/c;

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->c:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->f()I

    move-result v4

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->c:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v5, v1, Lccsancom/mbridge/msdk/mbnative/c/c$a;->d:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->c:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v6, v1, Lccsancom/mbridge/msdk/mbnative/c/c$a;->e:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->c:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->i(Lccsancom/mbridge/msdk/mbnative/c/c$a;)Lccsancom/mbridge/msdk/a/a/a;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/a/a/a;)V

    goto :goto_1

    .line 872
    :cond_3
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->c:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->h(Lccsancom/mbridge/msdk/mbnative/c/c$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 873
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->c:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v2, v1, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a:Lccsancom/mbridge/msdk/mbnative/c/c;

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->c:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->f()I

    move-result v4

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->c:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v5, v1, Lccsancom/mbridge/msdk/mbnative/c/c$a;->d:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->c:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v6, v1, Lccsancom/mbridge/msdk/mbnative/c/c$a;->e:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->c:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->i(Lccsancom/mbridge/msdk/mbnative/c/c$a;)Lccsancom/mbridge/msdk/a/a/a;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/a/a/a;)V

    .line 877
    :cond_4
    :goto_1
    iget v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 878
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->c:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->f(Lccsancom/mbridge/msdk/mbnative/c/c$a;)I

    move-result v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;->c:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v2, v2, Lccsancom/mbridge/msdk/mbnative/c/c$a;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/mbnative/c/c;->b(ILjava/lang/String;)V

    .line 880
    :cond_5
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 881
    invoke-static {}, Lccsanandroid/os/Looper;->loop()V

    .line 883
    :cond_6
    return-void
.end method
