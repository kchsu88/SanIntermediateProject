.class public final Lccsancom/mbridge/msdk/video/signal/factory/b;
.super Lccsancom/mbridge/msdk/video/signal/factory/a;
.source "JSFactory.java"


# instance fields
.field private h:Lccsanandroid/app/Activity;

.field private i:Lccsanandroid/webkit/WebView;

.field private j:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

.field private k:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

.field private l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private m:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

.field private n:Lccsancom/mbridge/msdk/video/signal/c$a;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsanandroid/app/Activity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/factory/a;-><init>()V

    .line 37
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->h:Lccsanandroid/app/Activity;

    .line 38
    return-void
.end method

.method public constructor <init>(Lccsanandroid/app/Activity;Lccsanandroid/webkit/WebView;Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/video/signal/c$a;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/factory/a;-><init>()V

    .line 55
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->h:Lccsanandroid/app/Activity;

    .line 56
    iput-object p2, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->i:Lccsanandroid/webkit/WebView;

    .line 57
    iput-object p3, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->j:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 58
    iput-object p4, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->k:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 59
    iput-object p5, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 60
    iput-object p6, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->n:Lccsancom/mbridge/msdk/video/signal/c$a;

    .line 61
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->getUnitId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->o:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;Lccsanandroid/webkit/WebView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/factory/a;-><init>()V

    .line 41
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->h:Lccsanandroid/app/Activity;

    .line 42
    iput-object p2, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->m:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 43
    iput-object p3, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->i:Lccsanandroid/webkit/WebView;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Lccsancom/mbridge/msdk/video/signal/a/j;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->b:Lccsancom/mbridge/msdk/video/signal/c;

    .line 155
    return-void
.end method

.method public final getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;
    .locals 2

    .line 66
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->i:Lccsanandroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 67
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/factory/a;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->a:Lccsancom/mbridge/msdk/video/signal/a;

    if-nez v0, :cond_1

    .line 70
    new-instance v0, Lccsancom/mbridge/msdk/video/signal/a/h;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->i:Lccsanandroid/webkit/WebView;

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/video/signal/a/h;-><init>(Lccsanandroid/webkit/WebView;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->a:Lccsancom/mbridge/msdk/video/signal/a;

    .line 72
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->a:Lccsancom/mbridge/msdk/video/signal/a;

    return-object v0
.end method

.method public final getIJSRewardVideoV1()Lccsancom/mbridge/msdk/video/signal/h;
    .locals 3

    .line 131
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->k:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->h:Lccsanandroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->f:Lccsancom/mbridge/msdk/video/signal/h;

    if-nez v0, :cond_1

    .line 135
    new-instance v0, Lccsancom/mbridge/msdk/video/signal/a/m;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->h:Lccsanandroid/app/Activity;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->k:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/video/signal/a/m;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->f:Lccsancom/mbridge/msdk/video/signal/h;

    .line 137
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->f:Lccsancom/mbridge/msdk/video/signal/h;

    return-object v0

    .line 132
    :cond_2
    :goto_0
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/factory/a;->getIJSRewardVideoV1()Lccsancom/mbridge/msdk/video/signal/h;

    move-result-object v0

    return-object v0
.end method

.method public final getJSBTModule()Lccsancom/mbridge/msdk/video/signal/b;
    .locals 3

    .line 143
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->h:Lccsanandroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->m:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->g:Lccsancom/mbridge/msdk/video/signal/b;

    if-nez v0, :cond_1

    .line 147
    new-instance v0, Lccsancom/mbridge/msdk/video/signal/a/i;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->h:Lccsanandroid/app/Activity;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->m:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/video/signal/a/i;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->g:Lccsancom/mbridge/msdk/video/signal/b;

    .line 149
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->g:Lccsancom/mbridge/msdk/video/signal/b;

    return-object v0

    .line 144
    :cond_2
    :goto_0
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/factory/a;->getJSBTModule()Lccsancom/mbridge/msdk/video/signal/b;

    move-result-object v0

    return-object v0
.end method

.method public final getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;
    .locals 3

    .line 90
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->h:Lccsanandroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->b:Lccsancom/mbridge/msdk/video/signal/c;

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Lccsancom/mbridge/msdk/video/signal/a/j;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->h:Lccsanandroid/app/Activity;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->l:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/video/signal/a/j;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->b:Lccsancom/mbridge/msdk/video/signal/c;

    .line 97
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->b:Lccsancom/mbridge/msdk/video/signal/c;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->h:Lccsanandroid/app/Activity;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/signal/c;->a(Lccsanandroid/app/Activity;)V

    .line 98
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->b:Lccsancom/mbridge/msdk/video/signal/c;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->o:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/signal/c;->a(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->b:Lccsancom/mbridge/msdk/video/signal/c;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->n:Lccsancom/mbridge/msdk/video/signal/c$a;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/signal/c;->a(Lccsancom/mbridge/msdk/video/signal/c$a;)V

    .line 101
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->b:Lccsancom/mbridge/msdk/video/signal/c;

    return-object v0

    .line 91
    :cond_2
    :goto_0
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/factory/a;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    return-object v0
.end method

.method public final getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;
    .locals 2

    .line 119
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->k:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-nez v0, :cond_0

    .line 120
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/factory/a;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v0

    return-object v0

    .line 122
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->e:Lccsancom/mbridge/msdk/video/signal/e;

    if-nez v0, :cond_1

    .line 123
    new-instance v0, Lccsancom/mbridge/msdk/video/signal/a/k;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->k:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/video/signal/a/k;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->e:Lccsancom/mbridge/msdk/video/signal/e;

    .line 125
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->e:Lccsancom/mbridge/msdk/video/signal/e;

    return-object v0
.end method

.method public final getJSNotifyProxy()Lccsancom/mbridge/msdk/video/signal/f;
    .locals 2

    .line 78
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->i:Lccsanandroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 79
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/factory/a;->getJSNotifyProxy()Lccsancom/mbridge/msdk/video/signal/f;

    move-result-object v0

    return-object v0

    .line 81
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->d:Lccsancom/mbridge/msdk/video/signal/f;

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Lccsancom/mbridge/msdk/video/signal/a/l;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->i:Lccsanandroid/webkit/WebView;

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/video/signal/a/l;-><init>(Lccsanandroid/webkit/WebView;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->d:Lccsancom/mbridge/msdk/video/signal/f;

    .line 84
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->d:Lccsancom/mbridge/msdk/video/signal/f;

    return-object v0
.end method

.method public final getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;
    .locals 2

    .line 107
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->j:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    if-nez v0, :cond_0

    .line 108
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/factory/a;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->c:Lccsancom/mbridge/msdk/video/signal/i;

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Lccsancom/mbridge/msdk/video/signal/a/n;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->j:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/video/signal/a/n;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->c:Lccsancom/mbridge/msdk/video/signal/i;

    .line 113
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/factory/b;->c:Lccsancom/mbridge/msdk/video/signal/i;

    return-object v0
.end method
