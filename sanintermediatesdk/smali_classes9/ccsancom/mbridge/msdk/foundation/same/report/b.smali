.class public final Lccsancom/mbridge/msdk/foundation/same/report/b;
.super Ljava/lang/Object;
.source "PlayableReportUtils.java"


# static fields
.field private static a:Lccsanandroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/report/b;->a:Lccsanandroid/os/Handler;

    return-void
.end method

.method public static a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 19
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 22
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 23
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    new-instance v11, Lccsancom/mbridge/msdk/foundation/entity/m;

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    const/4 v4, 0x3

    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getKeyIaRst()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v3, "2000043"

    const-string v5, "0"

    const-string v6, ""

    move-object v2, v11

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v2 .. v10}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v11, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v11, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v11, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v11, p3}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result p1

    invoke-virtual {v11, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->b(I)V

    .line 30
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result p0

    if-eqz p0, :cond_2

    sget p0, Lccsancom/mbridge/msdk/foundation/entity/m;->a:I

    goto :goto_1

    :cond_2
    sget p0, Lccsancom/mbridge/msdk/foundation/entity/m;->b:I

    :goto_1
    invoke-virtual {v11, p0}, Lccsancom/mbridge/msdk/foundation/entity/m;->a(I)V

    .line 31
    invoke-static {v11, p2}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Lccsancom/mbridge/msdk/foundation/entity/m;Ljava/lang/String;)V

    .line 32
    return-void

    .line 20
    :cond_3
    :goto_2
    return-void
.end method

.method public static a(Lccsancom/mbridge/msdk/foundation/entity/m;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 47
    if-eqz p0, :cond_1

    .line 48
    const-string v0, "2000060"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 50
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->b(I)V

    .line 51
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/entity/m;->b(Lccsancom/mbridge/msdk/foundation/entity/m;)Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lccsancom/mbridge/msdk/foundation/entity/m;Ljava/lang/String;)V
    .locals 1

    .line 35
    if-eqz p0, :cond_1

    .line 36
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;)V

    .line 37
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/entity/m;->d(Lccsancom/mbridge/msdk/foundation/entity/m;)Ljava/lang/String;

    move-result-object p0

    .line 38
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 114
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/report/b;->a:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p0}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 76
    if-eqz p1, :cond_0

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 77
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/f/a;

    invoke-direct {p1, p0, p2}, Lccsancom/mbridge/msdk/foundation/same/f/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Ljava/lang/Runnable;)V

    .line 79
    :cond_0
    return-void
.end method

.method public static b(Lccsancom/mbridge/msdk/foundation/entity/m;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 82
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/entity/m;->g(Lccsancom/mbridge/msdk/foundation/entity/m;)Ljava/lang/String;

    move-result-object p0

    .line 83
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void
.end method

.method public static b(Lccsancom/mbridge/msdk/foundation/entity/m;Ljava/lang/String;)V
    .locals 1

    .line 61
    if-eqz p0, :cond_1

    .line 62
    const-string v0, "2000059"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->b(I)V

    .line 65
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;)V

    .line 66
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/entity/m;->c(Lccsancom/mbridge/msdk/foundation/entity/m;)Ljava/lang/String;

    move-result-object p0

    .line 67
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 73
    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Lccsancom/mbridge/msdk/foundation/entity/m;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 91
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Lccsancom/mbridge/msdk/foundation/entity/m;)Ljava/lang/String;

    move-result-object p0

    .line 92
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void
.end method

.method public static d(Lccsancom/mbridge/msdk/foundation/entity/m;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 100
    if-eqz p0, :cond_1

    .line 101
    const-string v0, "2000063"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 103
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->b(I)V

    .line 104
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/entity/m;->a(Lccsancom/mbridge/msdk/foundation/entity/m;)Ljava/lang/String;

    move-result-object p0

    .line 105
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 111
    :cond_1
    :goto_0
    return-void
.end method
