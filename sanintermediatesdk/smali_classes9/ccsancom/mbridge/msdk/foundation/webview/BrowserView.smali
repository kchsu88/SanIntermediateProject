.class public Lccsancom/mbridge/msdk/foundation/webview/BrowserView;
.super Lccsanandroid/widget/LinearLayout;
.source "BrowserView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;,
        Lccsancom/mbridge/msdk/foundation/webview/BrowserView$MBDownloadListener;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;

.field private c:Lccsanandroid/webkit/WebView;

.field private d:Lccsancom/mbridge/msdk/foundation/webview/ToolBar;

.field private e:Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;

.field private f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 47
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 53
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->init()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 41
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 42
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->init()V

    .line 43
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsanandroid/webkit/WebView;
    .locals 0

    .line 26
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->c:Lccsanandroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsancom/mbridge/msdk/foundation/webview/ToolBar;
    .locals 0

    .line 26
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->d:Lccsancom/mbridge/msdk/foundation/webview/ToolBar;

    return-object p0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;
    .locals 0

    .line 26
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->e:Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;

    return-object p0
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;
    .locals 0

    .line 26
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->b:Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 258
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->c:Lccsanandroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->stopLoading()V

    .line 260
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->c:Lccsanandroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebView;->setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V

    .line 261
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->c:Lccsanandroid/webkit/WebView;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->destroy()V

    .line 262
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->removeAllViews()V

    .line 264
    :cond_0
    return-void
.end method

.method public init()V
    .locals 5

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->setOrientation(I)V

    .line 73
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->setGravity(I)V

    .line 75
    nop

    .line 1118
    new-instance v1, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;-><init>(Lccsanandroid/content/Context;)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->b:Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;

    .line 1119
    new-instance v2, Lccsanandroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1122
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->c:Lccsanandroid/webkit/WebView;

    if-nez v1, :cond_1

    .line 1123
    nop

    .line 1145
    new-instance v1, Lccsanandroid/webkit/WebView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/webkit/WebView;-><init>(Lccsanandroid/content/Context;)V

    .line 1146
    invoke-virtual {v1}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lccsanandroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1147
    invoke-virtual {v1}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Lccsanandroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1148
    new-instance v2, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$MBDownloadListener;

    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v2, v4}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$MBDownloadListener;-><init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 1150
    invoke-virtual {v1, v2}, Lccsanandroid/webkit/WebView;->setDownloadListener(Lccsanandroid/webkit/DownloadListener;)V

    .line 1152
    new-instance v2, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$2;

    invoke-direct {v2, p0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$2;-><init>(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)V

    invoke-virtual {v1, v2}, Lccsanandroid/webkit/WebView;->setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V

    .line 1182
    nop

    .line 1183
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->g()I

    move-result v2

    const/16 v4, 0xa

    if-gt v2, v4, :cond_0

    .line 1184
    new-instance v2, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$3;

    invoke-direct {v2, p0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$3;-><init>(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)V

    goto :goto_0

    .line 1213
    :cond_0
    new-instance v2, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$4;

    invoke-direct {v2, p0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$4;-><init>(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)V

    .line 1228
    :goto_0
    invoke-virtual {v1, v2}, Lccsanandroid/webkit/WebView;->setWebChromeClient(Lccsanandroid/webkit/WebChromeClient;)V

    .line 1230
    nop

    .line 1123
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->c:Lccsanandroid/webkit/WebView;

    .line 1125
    :cond_1
    new-instance v1, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1126
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lccsanandroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1127
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->c:Lccsanandroid/webkit/WebView;

    invoke-virtual {v2, v1}, Lccsanandroid/webkit/WebView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1130
    goto :goto_1

    .line 1128
    :catchall_0
    move-exception v1

    .line 1129
    const-string v2, "BrowserView"

    const-string v4, "webview is error"

    invoke-static {v2, v4, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1132
    :goto_1
    new-instance v1, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;-><init>(Lccsanandroid/content/Context;)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->d:Lccsancom/mbridge/msdk/foundation/webview/ToolBar;

    .line 1133
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v1

    .line 1134
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->d:Lccsancom/mbridge/msdk/foundation/webview/ToolBar;

    new-instance v4, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v1}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1135
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->d:Lccsancom/mbridge/msdk/foundation/webview/ToolBar;

    invoke-virtual {v1, v3}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->setBackgroundColor(I)V

    .line 1137
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->b:Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->addView(Lccsanandroid/view/View;)V

    .line 1138
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->c:Lccsanandroid/webkit/WebView;

    if-eqz v1, :cond_2

    .line 1139
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->addView(Lccsanandroid/view/View;)V

    .line 1141
    :cond_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->d:Lccsancom/mbridge/msdk/foundation/webview/ToolBar;

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->addView(Lccsanandroid/view/View;)V

    .line 77
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->b:Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->initResource(Z)V

    .line 79
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->d:Lccsancom/mbridge/msdk/foundation/webview/ToolBar;

    const-string v1, "backward"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getItem(Ljava/lang/String;)Lccsanandroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setEnabled(Z)V

    .line 80
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->d:Lccsancom/mbridge/msdk/foundation/webview/ToolBar;

    const-string v2, "forward"

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getItem(Ljava/lang/String;)Lccsanandroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setEnabled(Z)V

    .line 82
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->d:Lccsancom/mbridge/msdk/foundation/webview/ToolBar;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;-><init>(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->setOnItemClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->c:Lccsanandroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, p1}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method

.method public setListener(Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->e:Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;

    .line 58
    return-void
.end method

.method public setWebView(Lccsanandroid/webkit/WebView;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->c:Lccsanandroid/webkit/WebView;

    .line 68
    return-void
.end method
