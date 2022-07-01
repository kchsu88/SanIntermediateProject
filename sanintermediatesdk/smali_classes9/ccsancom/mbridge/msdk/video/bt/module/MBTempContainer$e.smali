.class final Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;
.super Lccsancom/mbridge/msdk/video/module/a/a/f;
.source "MBTempContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V
    .locals 0

    .line 985
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/a/a/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$1;)V
    .locals 0

    .line 985
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 4

    .line 988
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/a/a/f;->a(ILjava/lang/Object;)V

    .line 990
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->e(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Z

    move-result v0

    const-string v1, "NotifyListener"

    if-eqz v0, :cond_1

    .line 992
    :try_start_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 993
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 994
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 995
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 996
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    const-string v3, "Alert_window_status"

    invoke-virtual {v2, v3}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;I)I

    .line 997
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    const-string v3, "complete_info"

    invoke-virtual {v2, v3}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->c(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    :cond_0
    goto :goto_0

    .line 1000
    :catch_0
    move-exception v0

    .line 1001
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 1042
    :sswitch_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z

    .line 1043
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsancom/mbridge/msdk/video/bt/module/b/h;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->i(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->j(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->a(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z

    goto/16 :goto_2

    .line 1018
    :sswitch_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z

    .line 1019
    goto/16 :goto_2

    .line 1039
    :sswitch_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/mbridge/msdk/video/signal/c;->d()V

    .line 1040
    goto/16 :goto_2

    .line 1007
    :sswitch_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->a(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z

    .line 1008
    nop

    .line 1009
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->d(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1010
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->d(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v0

    .line 1012
    :cond_2
    if-nez v0, :cond_3

    .line 1013
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsancom/mbridge/msdk/video/bt/module/b/h;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a()V

    .line 1015
    :cond_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->d(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p2

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->g(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lccsancom/mbridge/msdk/video/bt/module/b/f;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 1016
    goto :goto_2

    .line 1023
    :sswitch_4
    const/16 v2, 0xc

    if-ne p1, v2, :cond_5

    .line 1024
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsancom/mbridge/msdk/video/bt/module/b/h;

    move-result-object p1

    const-string v2, "play error"

    invoke-interface {p1, v2}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(Ljava/lang/String;)V

    .line 1025
    const-string p1, "Play error but has no message."

    .line 1027
    :try_start_1
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1028
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1032
    :cond_4
    goto :goto_1

    .line 1030
    :catchall_0
    move-exception p2

    .line 1031
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :goto_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->d(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->h(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2, p1}, Lccsancom/mbridge/msdk/video/bt/module/b/f;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    :cond_5
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/video/signal/i;->videoOperate(I)V

    .line 1036
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$e;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->a(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z

    .line 1037
    nop

    .line 1047
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0xc -> :sswitch_4
        0x10 -> :sswitch_2
        0x11 -> :sswitch_1
        0x79 -> :sswitch_0
    .end sparse-switch
.end method
