.class public final Lccsancom/mbridge/msdk/video/dynview/g/a;
.super Ljava/lang/Object;
.source "MBridgeUI.java"


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/util/List;Lccsancom/mbridge/msdk/video/dynview/d/c;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Lccsancom/mbridge/msdk/video/dynview/d/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lccsancom/mbridge/msdk/video/dynview/i/c;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/video/dynview/i/c;-><init>()V

    .line 1035
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->h(Lccsanandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 1036
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->g(Lccsanandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    .line 1037
    nop

    .line 1038
    const/4 v2, 0x1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1039
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2057
    nop

    .line 2058
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2059
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->b()I

    move-result v3

    goto :goto_0

    .line 2061
    :cond_0
    const/4 v3, 0x1

    :goto_0
    nop

    .line 1039
    goto :goto_1

    .line 1042
    :cond_1
    const/4 v3, 0x1

    :goto_1
    const-string v4, "mbridge_same_choice_one_layout_landscape"

    const-string v5, "mbridge_same_choice_one_layout_portrait"

    packed-switch v3, :pswitch_data_0

    .line 1050
    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/h/b;->a(Lccsanandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1051
    nop

    .line 1052
    const/4 v3, 0x2

    goto :goto_2

    .line 1047
    :pswitch_0
    nop

    .line 1048
    goto :goto_2

    .line 1044
    :pswitch_1
    nop

    .line 1045
    move-object v4, v5

    goto :goto_2

    .line 1054
    :cond_2
    nop

    .line 1055
    move-object v4, v5

    const/4 v3, 0x1

    .line 2149
    :goto_2
    new-instance v5, Lccsancom/mbridge/msdk/video/dynview/b$a;

    invoke-direct {v5}, Lccsancom/mbridge/msdk/video/dynview/b$a;-><init>()V

    .line 1060
    nop

    .line 1061
    invoke-virtual {v5, p1}, Lccsancom/mbridge/msdk/video/dynview/b$a;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/video/dynview/b$b;

    move-result-object p1

    .line 1062
    invoke-interface {p1, v4}, Lccsancom/mbridge/msdk/video/dynview/b$b;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/video/dynview/b$b;

    move-result-object p1

    .line 1063
    invoke-interface {p1, v2}, Lccsancom/mbridge/msdk/video/dynview/b$b;->a(I)Lccsancom/mbridge/msdk/video/dynview/b$b;

    move-result-object p1

    .line 1064
    invoke-interface {p1, v1}, Lccsancom/mbridge/msdk/video/dynview/b$b;->a(F)Lccsancom/mbridge/msdk/video/dynview/b$b;

    move-result-object p1

    .line 1065
    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/video/dynview/b$b;->b(F)Lccsancom/mbridge/msdk/video/dynview/b$b;

    move-result-object p1

    .line 1066
    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/video/dynview/b$b;->a(Ljava/util/List;)Lccsancom/mbridge/msdk/video/dynview/b$b;

    move-result-object p1

    .line 1067
    invoke-interface {p1, v3}, Lccsancom/mbridge/msdk/video/dynview/b$b;->b(I)Lccsancom/mbridge/msdk/video/dynview/b$b;

    move-result-object p1

    .line 1068
    invoke-interface {p1}, Lccsancom/mbridge/msdk/video/dynview/b$b;->a()Lccsancom/mbridge/msdk/video/dynview/b;

    move-result-object p1

    .line 1069
    nop

    .line 29
    nop

    .line 30
    invoke-direct {p0, p1, p3, p4}, Lccsancom/mbridge/msdk/video/dynview/g/a;->a(Lccsancom/mbridge/msdk/video/dynview/b;Lccsancom/mbridge/msdk/video/dynview/d/c;Ljava/util/Map;)V

    .line 31
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/video/dynview/b;Lccsancom/mbridge/msdk/video/dynview/d/c;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/video/dynview/b;",
            "Lccsancom/mbridge/msdk/video/dynview/d/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/video/dynview/g/a;->a(Lccsancom/mbridge/msdk/video/dynview/b;Lccsancom/mbridge/msdk/video/dynview/d/c;Ljava/util/Map;)V

    .line 35
    return-void
.end method

.method private a(Lccsancom/mbridge/msdk/video/dynview/b;Lccsancom/mbridge/msdk/video/dynview/d/c;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/video/dynview/b;",
            "Lccsancom/mbridge/msdk/video/dynview/d/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 50
    if-nez p2, :cond_0

    .line 51
    return-void

    .line 53
    :cond_0
    if-nez p1, :cond_1

    .line 54
    sget-object p1, Lccsancom/mbridge/msdk/video/dynview/c/a;->a:Lccsancom/mbridge/msdk/video/dynview/c/a;

    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/video/dynview/d/c;->a(Lccsancom/mbridge/msdk/video/dynview/c/a;)V

    .line 55
    return-void

    .line 57
    :cond_1
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/dynview/b;->a()Lccsanandroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    .line 58
    sget-object p1, Lccsancom/mbridge/msdk/video/dynview/c/a;->b:Lccsancom/mbridge/msdk/video/dynview/c/a;

    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/video/dynview/d/c;->a(Lccsancom/mbridge/msdk/video/dynview/c/a;)V

    .line 59
    return-void

    .line 61
    :cond_2
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/dynview/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    sget-object p1, Lccsancom/mbridge/msdk/video/dynview/c/a;->c:Lccsancom/mbridge/msdk/video/dynview/c/a;

    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/video/dynview/d/c;->a(Lccsancom/mbridge/msdk/video/dynview/c/a;)V

    .line 63
    return-void

    .line 65
    :cond_3
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/dynview/b;->a()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/dynview/b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 66
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/dynview/b;->a()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v0

    .line 68
    invoke-static {}, Lccsancom/mbridge/msdk/video/dynview/b/b;->a()Lccsancom/mbridge/msdk/video/dynview/b/b;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p3}, Lccsancom/mbridge/msdk/video/dynview/b/b;->a(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/video/dynview/b;Ljava/util/Map;)V

    .line 71
    invoke-static {}, Lccsancom/mbridge/msdk/video/dynview/b/a;->a()Lccsancom/mbridge/msdk/video/dynview/b/a;

    move-result-object v1

    new-instance v2, Lccsancom/mbridge/msdk/video/dynview/g/a$1;

    invoke-direct {v2, p0, p2, v0}, Lccsancom/mbridge/msdk/video/dynview/g/a$1;-><init>(Lccsancom/mbridge/msdk/video/dynview/g/a;Lccsancom/mbridge/msdk/video/dynview/d/c;Lccsanandroid/view/View;)V

    invoke-virtual {v1, v0, p1, p3, v2}, Lccsancom/mbridge/msdk/video/dynview/b/a;->a(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/video/dynview/b;Ljava/util/Map;Lccsancom/mbridge/msdk/video/dynview/d/b;)V

    .line 83
    return-void
.end method
