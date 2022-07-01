.class public final Lccsancom/mbridge/msdk/video/bt/module/b/d;
.super Lccsancom/mbridge/msdk/video/bt/module/b/b;
.source "ProxyShowRewardListener.java"


# instance fields
.field private a:Lccsancom/mbridge/msdk/video/bt/module/b/h;

.field private b:Lccsancom/mbridge/msdk/videocommon/d/c;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lccsanandroid/content/Context;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;ZLccsancom/mbridge/msdk/videocommon/d/c;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/video/bt/module/b/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/bt/module/b/b;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->g:Z

    .line 27
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->h:Z

    .line 29
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->i:Z

    .line 32
    iput-object p5, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->a:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    .line 33
    iput-object p3, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->b:Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 34
    iput-object p7, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->c:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->d:Ljava/lang/String;

    .line 36
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->e:Z

    .line 37
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->f:Lccsanandroid/content/Context;

    .line 38
    nop

    .line 1043
    nop

    .line 1044
    nop

    .line 1045
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object p1

    .line 1046
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-wide/16 p5, 0x0

    if-nez p2, :cond_1

    .line 1047
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object p1

    .line 1048
    if-nez p1, :cond_0

    .line 1049
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object p1

    .line 1052
    :cond_0
    if-eqz p1, :cond_1

    .line 1053
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/a;->p()J

    move-result-wide p1

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    goto :goto_0

    .line 1056
    :cond_1
    move-wide p1, p5

    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object p7

    invoke-virtual {p7}, Lccsancom/mbridge/msdk/videocommon/d/b;->b()Lccsancom/mbridge/msdk/videocommon/d/a;

    move-result-object p7

    .line 1057
    if-eqz p7, :cond_2

    .line 1058
    invoke-virtual {p7}, Lccsancom/mbridge/msdk/videocommon/d/a;->d()J

    move-result-wide p5

    .line 1060
    :cond_2
    if-eqz p4, :cond_5

    .line 1061
    invoke-virtual {p4, p5, p6, p1, p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isSpareOffer(JJ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1062
    const/4 p1, 0x1

    invoke-virtual {p4, p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setSpareOfferFlag(I)V

    .line 1063
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/videocommon/d/c;->y()I

    move-result p2

    if-ne p2, p1, :cond_3

    .line 1064
    invoke-virtual {p4, p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V

    goto :goto_1

    .line 1066
    :cond_3
    invoke-virtual {p4, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V

    goto :goto_1

    .line 1069
    :cond_4
    invoke-virtual {p4, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setSpareOfferFlag(I)V

    .line 1070
    invoke-virtual {p4, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    :cond_5
    :goto_1
    goto :goto_2

    .line 1073
    :catch_0
    move-exception p1

    .line 39
    :goto_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 79
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/bt/module/b/b;->a()V

    .line 80
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->a:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->g:Z

    if-nez v1, :cond_0

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->g:Z

    .line 82
    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a()V

    .line 83
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->a:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    const/4 v1, 0x2

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->d:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 107
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/b/b;->a(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->a:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->h:Z

    if-nez v1, :cond_0

    .line 109
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->h:Z

    .line 110
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->a:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    const/4 v0, 0x4

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->d:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 134
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->a:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->a:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method

.method public final a(ZI)V
    .locals 2

    .line 99
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/b/b;->a(ZI)V

    .line 100
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->a:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->i:Z

    if-nez v1, :cond_0

    .line 101
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(ZI)V

    .line 103
    :cond_0
    return-void
.end method

.method public final a(ZLccsancom/mbridge/msdk/videocommon/b/c;)V
    .locals 4

    .line 89
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/b/b;->a(ZLccsancom/mbridge/msdk/videocommon/b/c;)V

    .line 90
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->a:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->i:Z

    if-nez v1, :cond_0

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->i:Z

    .line 92
    const/4 v1, 0x7

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->d:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->a:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(ZLccsancom/mbridge/msdk/videocommon/b/c;)V

    .line 95
    :cond_0
    return-void
.end method

.method public final a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 117
    invoke-super {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/video/bt/module/b/b;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->a:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 125
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->a:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/d;->a:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    const/4 v1, 0x6

    invoke-interface {v0, v1, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method
