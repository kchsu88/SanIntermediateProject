.class public Lccsancom/mbridge/msdk/video/module/a/a/d;
.super Lccsancom/mbridge/msdk/video/module/a/a/k;
.source "ContainerViewStatisticsListener.java"


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/download/a;Lccsancom/mbridge/msdk/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;IZ)V
    .locals 0

    .line 18
    invoke-direct/range {p0 .. p8}, Lccsancom/mbridge/msdk/video/module/a/a/k;-><init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/download/a;Lccsancom/mbridge/msdk/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;IZ)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 6

    .line 23
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/a/a/k;->a(ILjava/lang/Object;)V

    .line 24
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/video/module/a/a/d;->a:Z

    if-eqz p2, :cond_2

    .line 25
    const/4 p2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 69
    :sswitch_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/a/a/d;->a()V

    goto/16 :goto_1

    .line 35
    :sswitch_1
    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/video/module/a/a/d;->a(I)V

    .line 36
    goto/16 :goto_1

    .line 31
    :sswitch_2
    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/video/module/a/a/d;->b(I)V

    .line 32
    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/video/module/a/a/d;->a(I)V

    .line 33
    goto/16 :goto_1

    .line 27
    :sswitch_3
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/a/a/d;->b(I)V

    .line 28
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/a/a/d;->a(I)V

    .line 29
    goto/16 :goto_1

    .line 60
    :sswitch_4
    goto/16 :goto_1

    .line 40
    :sswitch_5
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/d;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {p2, v0}, Lccsancom/mbridge/msdk/video/module/b/a;->d(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 41
    const/16 p2, 0x69

    if-eq p1, p2, :cond_2

    .line 42
    const/4 v4, 0x1

    .line 43
    const/4 v5, 0x0

    .line 45
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/a/a/d;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 47
    sget-object p2, Lccsancom/mbridge/msdk/foundation/same/a;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "=2"

    if-nez p2, :cond_0

    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lccsancom/mbridge/msdk/foundation/same/a;->h:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p2

    .line 51
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/a;->h:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lccsancom/mbridge/msdk/foundation/same/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lccsancom/mbridge/msdk/foundation/same/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    goto :goto_0

    .line 46
    :cond_1
    move-object v3, p1

    .line 55
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/d;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/d;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 56
    goto :goto_1

    .line 67
    :sswitch_6
    goto :goto_1

    .line 64
    :sswitch_7
    nop

    .line 75
    :cond_2
    :goto_1
    :sswitch_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_8
        0x65 -> :sswitch_7
        0x67 -> :sswitch_6
        0x69 -> :sswitch_5
        0x6a -> :sswitch_5
        0x6b -> :sswitch_4
        0x6d -> :sswitch_3
        0x6e -> :sswitch_2
        0x6f -> :sswitch_1
        0x71 -> :sswitch_5
        0x7a -> :sswitch_0
    .end sparse-switch
.end method
