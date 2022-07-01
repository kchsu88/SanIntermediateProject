.class public Lccsancom/mbridge/msdk/out/MBBannerView;
.super Lccsanandroid/widget/RelativeLayout;
.source "MBBannerView.java"


# instance fields
.field private bidToken:Ljava/lang/String;

.field private controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

.field private hadAttached:Z

.field private isVisible:Z

.field private mBannerAdListener:Lccsancom/mbridge/msdk/out/BannerAdListener;

.field private mBridgeIds:Lccsancom/mbridge/msdk/out/MBridgeIds;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/out/MBBannerView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/out/MBBannerView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 17
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->hadAttached:Z

    .line 19
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->isVisible:Z

    .line 33
    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/out/MBBannerView;)Lccsancom/mbridge/msdk/mbbanner/a/a;
    .locals 0

    .line 13
    iget-object p0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    return-object p0
.end method

.method private delayedNotify()V
    .locals 3

    .line 164
    new-instance v0, Lccsancom/mbridge/msdk/out/MBBannerView$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/out/MBBannerView$1;-><init>(Lccsancom/mbridge/msdk/out/MBBannerView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/mbridge/msdk/out/MBBannerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    return-void
.end method

.method private updateAttachedState(Z)V
    .locals 1

    .line 131
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->hadAttached:Z

    .line 132
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->b(Z)V

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 49
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public init(Lccsancom/mbridge/msdk/out/BannerSize;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 36
    new-instance v0, Lccsancom/mbridge/msdk/out/MBridgeIds;

    invoke-direct {v0, p2, p3}, Lccsancom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->mBridgeIds:Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 37
    invoke-static {p3}, Lccsancom/mbridge/msdk/foundation/tools/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    invoke-static {p3, v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lccsancom/mbridge/msdk/mbbanner/a/a;-><init>(Lccsancom/mbridge/msdk/out/MBBannerView;Lccsancom/mbridge/msdk/out/BannerSize;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    .line 42
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->isVisible:Z

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->c(Z)V

    .line 43
    iget-object p1, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    iget-boolean p2, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->hadAttached:Z

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/mbbanner/a/a;->b(Z)V

    .line 44
    return-void
.end method

.method public load()V
    .locals 3

    .line 71
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    if-eqz v0, :cond_0

    .line 72
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->hadAttached:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->b(Z)V

    .line 73
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->mBannerAdListener:Lccsancom/mbridge/msdk/out/BannerAdListener;

    if-eqz v0, :cond_1

    .line 76
    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->mBridgeIds:Lccsancom/mbridge/msdk/out/MBridgeIds;

    const-string v2, "banner controler init error\uff0cplease check it"

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/out/BannerAdListener;->onLoadFailed(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V

    .line 79
    :cond_1
    :goto_0
    return-void
.end method

.method public loadFromBid(Ljava/lang/String;)V
    .locals 2

    .line 82
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->bidToken:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    if-eqz v0, :cond_1

    .line 84
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->hadAttached:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->b(Z)V

    .line 86
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(I)V

    .line 87
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->mBannerAdListener:Lccsancom/mbridge/msdk/out/BannerAdListener;

    if-eqz p1, :cond_2

    .line 90
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->mBridgeIds:Lccsancom/mbridge/msdk/out/MBridgeIds;

    const-string v1, "banner token is null or empty\uff0cplease check it"

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/out/BannerAdListener;->onLoadFailed(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->mBannerAdListener:Lccsancom/mbridge/msdk/out/BannerAdListener;

    if-eqz p1, :cond_2

    .line 95
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->mBridgeIds:Lccsancom/mbridge/msdk/out/MBridgeIds;

    const-string v1, "banner controler init error\uff0cplease check it"

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/out/BannerAdListener;->onLoadFailed(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V

    .line 98
    :cond_2
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 120
    invoke-super {p0}, Lccsanandroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 121
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/out/MBBannerView;->updateAttachedState(Z)V

    .line 122
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 126
    invoke-super {p0}, Lccsanandroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/out/MBBannerView;->updateAttachedState(Z)V

    .line 128
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 183
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->bidToken:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->d()V

    .line 186
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 189
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->bidToken:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->e()V

    .line 192
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 177
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(IIII)V

    .line 180
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Lccsanandroid/view/View;I)V
    .locals 1

    .line 152
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/RelativeLayout;->onVisibilityChanged(Lccsanandroid/view/View;I)V

    .line 153
    const/4 p1, 0x0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->isVisible:Z

    .line 154
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    if-eqz v0, :cond_2

    .line 155
    if-nez p2, :cond_1

    .line 156
    invoke-direct {p0}, Lccsancom/mbridge/msdk/out/MBBannerView;->delayedNotify()V

    goto :goto_1

    .line 158
    :cond_1
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->c(Z)V

    .line 161
    :cond_2
    :goto_1
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    .line 139
    invoke-super {p0, p1}, Lccsanandroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 140
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->isVisible:Z

    .line 141
    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    if-eqz v1, :cond_2

    .line 142
    if-nez p1, :cond_1

    .line 143
    invoke-direct {p0}, Lccsancom/mbridge/msdk/out/MBBannerView;->delayedNotify()V

    goto :goto_1

    .line 145
    :cond_1
    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->c(Z)V

    .line 148
    :cond_2
    :goto_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 108
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->mBannerAdListener:Lccsancom/mbridge/msdk/out/BannerAdListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 109
    iput-object v1, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->mBannerAdListener:Lccsancom/mbridge/msdk/out/BannerAdListener;

    .line 111
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/out/BannerAdListener;)V

    .line 113
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->b()V

    .line 115
    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/out/MBBannerView;->removeAllViews()V

    .line 116
    return-void
.end method

.method public setAllowShowCloseBtn(Z)V
    .locals 1

    .line 65
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Z)V

    .line 68
    :cond_0
    return-void
.end method

.method public setBannerAdListener(Lccsancom/mbridge/msdk/out/BannerAdListener;)V
    .locals 1

    .line 101
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->mBannerAdListener:Lccsancom/mbridge/msdk/out/BannerAdListener;

    .line 102
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/out/BannerAdListener;)V

    .line 105
    :cond_0
    return-void
.end method

.method public setRefreshTime(I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 60
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(I)V

    .line 62
    :cond_0
    return-void
.end method

.method public updateBannerSize(Lccsancom/mbridge/msdk/out/BannerSize;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBannerView;->controller:Lccsancom/mbridge/msdk/mbbanner/a/a;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/out/BannerSize;)V

    .line 56
    :cond_0
    return-void
.end method
