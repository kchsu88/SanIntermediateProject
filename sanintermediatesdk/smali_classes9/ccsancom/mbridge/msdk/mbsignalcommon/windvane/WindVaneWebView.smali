.class public Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
.super Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;
.source "WindVaneWebView.java"


# instance fields
.field protected b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/k;

.field protected c:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/c;

.field protected d:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/f;

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/String;

.field private h:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:F

.field private l:F


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;-><init>(Lccsanandroid/content/Context;)V

    .line 24
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->j:Z

    .line 25
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->k:F

    .line 26
    iput p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->l:F

    .line 30
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 24
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->j:Z

    .line 25
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->k:F

    .line 26
    iput p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->l:F

    .line 34
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 24
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->j:Z

    .line 25
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->k:F

    .line 26
    iput p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->l:F

    .line 38
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->j:Z

    return p1
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .line 74
    invoke-super {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->a()V

    .line 75
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 76
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WindVane/3.0.2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/k;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/k;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/k;-><init>(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/k;

    .line 81
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/k;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewChromeClient(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/k;)V

    .line 83
    new-instance v0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/l;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/l;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->mWebViewClient:Lccsancom/mbridge/msdk/mbsignalcommon/base/b;

    .line 84
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->mWebViewClient:Lccsancom/mbridge/msdk/mbsignalcommon/base/b;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V

    .line 86
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->c:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/c;

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/i;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->a:Lccsanandroid/content/Context;

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/i;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->c:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/c;

    .line 88
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setSignalCommunication(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/c;)V

    .line 91
    :cond_1
    new-instance v0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/f;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->a:Lccsanandroid/content/Context;

    invoke-direct {v0, v1, p0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/f;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->d:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 93
    return-void
.end method

.method public clearWebView()V
    .locals 1

    .line 173
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->j:Z

    if-nez v0, :cond_0

    .line 174
    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getJsObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 59
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->d:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/f;

    if-nez v0, :cond_0

    .line 60
    const/4 p1, 0x0

    return-object p1

    .line 62
    :cond_0
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMraidObject()Ljava/lang/Object;
    .locals 1

    .line 125
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 117
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public getRid()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getSignalCommunication()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/c;
    .locals 1

    .line 46
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->c:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/c;

    return-object v0
.end method

.method public getWebViewListener()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;
    .locals 1

    .line 139
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->h:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;

    return-object v0
.end method

.method public isDestoryed()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->j:Z

    return v0
.end method

.method public onTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 7

    .line 192
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->mWebViewClient:Lccsancom/mbridge/msdk/mbsignalcommon/base/b;

    if-eqz v0, :cond_5

    .line 193
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->mWebViewClient:Lccsancom/mbridge/msdk/mbsignalcommon/base/b;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/b;->b()Lccsancom/mbridge/msdk/mbsignalcommon/base/a;

    move-result-object v0

    .line 194
    instance-of v0, v0, Lccsanandroid/content/IntentFilter;

    if-eqz v0, :cond_5

    .line 195
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 197
    const-string v1, "https://play.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 198
    if-eqz v0, :cond_5

    .line 199
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->k:F

    .line 201
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->l:F

    goto :goto_0

    .line 203
    :cond_0
    const/16 v0, 0x30

    .line 204
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->k:F

    sub-float/2addr v1, v2

    .line 205
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->l:F

    sub-float/2addr v2, v3

    .line 206
    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    cmpg-float v5, v1, v4

    if-gez v5, :cond_1

    mul-float v5, v1, v3

    int-to-float v6, v0

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_5

    :cond_1
    cmpl-float v5, v1, v4

    if-lez v5, :cond_2

    int-to-float v5, v0

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_5

    :cond_2
    cmpg-float v1, v2, v4

    if-gez v1, :cond_3

    mul-float v3, v3, v2

    int-to-float v1, v0

    cmpl-float v1, v3, v1

    if-gtz v1, :cond_5

    :cond_3
    cmpl-float v1, v2, v4

    if-lez v1, :cond_4

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-gtz v0, :cond_5

    .line 207
    :cond_4
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setClickable(Z)V

    .line 208
    const/4 p1, 0x1

    return p1

    .line 215
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public registerWindVanePlugin(Ljava/lang/Class;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->d:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/f;

    if-nez v0, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 70
    return-void
.end method

.method public release()V
    .locals 5

    .line 148
    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setVisibility(I)V

    .line 149
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->removeAllViews()V

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setDownloadListener(Lccsanandroid/webkit/DownloadListener;)V

    .line 151
    iput-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->e:Ljava/lang/Object;

    .line 153
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->m(Lccsanandroid/content/Context;)I

    move-result v0

    .line 154
    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->j:Z

    .line 156
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->destroy()V

    goto :goto_0

    .line 158
    :cond_0
    new-instance v1, Lccsanandroid/os/Handler;

    invoke-direct {v1}, Lccsanandroid/os/Handler;-><init>()V

    new-instance v2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView$1;

    invoke-direct {v2, p0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView$1;-><init>(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :goto_0
    goto :goto_1

    .line 167
    :catchall_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    :goto_1
    return-void
.end method

.method public setApiManagerContext(Lccsanandroid/content/Context;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->d:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/f;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Lccsanandroid/content/Context;)V

    .line 99
    :cond_0
    return-void
.end method

.method public setApiManagerJSFactory(Ljava/lang/Object;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->d:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/f;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Ljava/lang/Object;)V

    .line 105
    :cond_0
    return-void
.end method

.method public setCampaignId(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->g:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setMraidObject(Ljava/lang/Object;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->f:Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->e:Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public setRid(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->i:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setSignalCommunication(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/c;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->c:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/c;

    .line 42
    invoke-interface {p1, p0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/c;->a(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    .line 43
    return-void
.end method

.method public setWebViewChromeClient(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/k;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/k;

    .line 109
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebChromeClient(Lccsanandroid/webkit/WebChromeClient;)V

    .line 110
    return-void
.end method

.method public setWebViewListener(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;)V
    .locals 1

    .line 129
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->h:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;

    .line 130
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/k;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/k;->a(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->mWebViewClient:Lccsancom/mbridge/msdk/mbsignalcommon/base/b;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->mWebViewClient:Lccsancom/mbridge/msdk/mbsignalcommon/base/b;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/base/b;->a(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;)V

    .line 136
    :cond_1
    return-void
.end method

.method public setWebViewTransparent()V
    .locals 0

    .line 179
    invoke-super {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->setTransparent()V

    .line 180
    return-void
.end method
