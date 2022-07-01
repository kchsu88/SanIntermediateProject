.class final Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;
.super Lccsancom/mbridge/msdk/video/module/a/a/a;
.source "MBTempContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 1051
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 1052
    invoke-direct {p0, p2, p3}, Lccsancom/mbridge/msdk/video/module/a/a/a;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 1053
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 8

    .line 1058
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->c(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z

    .line 1059
    const-string v0, ""

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1080
    :sswitch_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsancom/mbridge/msdk/video/bt/module/b/h;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->p(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v3}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->q(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1076
    :sswitch_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsancom/mbridge/msdk/video/bt/module/b/h;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->n(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->o(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    goto :goto_0

    .line 1068
    :sswitch_2
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v2

    new-instance v3, Lccsancom/mbridge/msdk/video/signal/a/c$b;

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v4

    new-instance v5, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;

    iget-object v6, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$d;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$1;)V

    invoke-direct {v3, v4, v5}, Lccsancom/mbridge/msdk/video/signal/a/c$b;-><init>(Lccsancom/mbridge/msdk/video/signal/c;Lccsancom/mbridge/msdk/video/signal/c$a;)V

    invoke-interface {v2, v3}, Lccsancom/mbridge/msdk/video/signal/c;->a(Lccsancom/mbridge/msdk/video/signal/c$a;)V

    .line 1069
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-interface {v2, v1, v0}, Lccsancom/mbridge/msdk/video/signal/c;->click(ILjava/lang/String;)V

    .line 1070
    goto :goto_0

    .line 1073
    :sswitch_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsancom/mbridge/msdk/video/bt/module/b/h;

    move-result-object v0

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->l(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v3}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->m(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1074
    goto :goto_0

    .line 1065
    :sswitch_4
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-interface {v2, v1, v0}, Lccsancom/mbridge/msdk/video/signal/c;->click(ILjava/lang/String;)V

    .line 1066
    goto :goto_0

    .line 1062
    :sswitch_5
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$b;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->k(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    .line 1063
    nop

    .line 1083
    :goto_0
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/a/a/a;->a(ILjava/lang/Object;)V

    .line 1084
    return-void

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_5
        0x68 -> :sswitch_5
        0x69 -> :sswitch_4
        0x6a -> :sswitch_3
        0x6c -> :sswitch_2
        0x71 -> :sswitch_3
        0x75 -> :sswitch_1
        0x7e -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method
