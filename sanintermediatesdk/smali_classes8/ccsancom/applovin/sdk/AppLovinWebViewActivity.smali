.class public Lccsancom/applovin/sdk/AppLovinWebViewActivity;
.super Lccsanandroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/sdk/AppLovinWebViewActivity$EventListener;
    }
.end annotation


# static fields
.field public static final EVENT_DISMISSED_VIA_BACK_BUTTON:Ljava/lang/String; = "dismissed_via_back_button"

.field public static final INTENT_EXTRA_KEY_IMMERSIVE_MODE_ON:Ljava/lang/String; = "immersive_mode_on"

.field public static final INTENT_EXTRA_KEY_SDK_KEY:Ljava/lang/String; = "sdk_key"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lccsanandroid/webkit/WebView;

.field private c:Lccsancom/applovin/sdk/AppLovinWebViewActivity$EventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lccsanandroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/sdk/AppLovinWebViewActivity;)Lccsancom/applovin/sdk/AppLovinWebViewActivity$EventListener;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->c:Lccsancom/applovin/sdk/AppLovinWebViewActivity$EventListener;

    return-object p0
.end method


# virtual methods
.method public loadUrl(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinWebViewActivity$EventListener;)V
    .locals 0

    iput-object p2, p0, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->c:Lccsancom/applovin/sdk/AppLovinWebViewActivity$EventListener;

    iget-object p2, p0, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->b:Lccsanandroid/webkit/WebView;

    if-nez p2, :cond_0

    iput-object p1, p0, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->c:Lccsancom/applovin/sdk/AppLovinWebViewActivity$EventListener;

    if-eqz v0, :cond_0

    const-string v1, "dismissed_via_back_button"

    invoke-interface {v0, v1}, Lccsancom/applovin/sdk/AppLovinWebViewActivity$EventListener;->onReceivedEvent(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Lccsanandroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onCreate(Lccsanandroid/os/Bundle;)V

    invoke-virtual {p0}, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "sdk_key"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AppLovinWebViewActivity"

    if-eqz v0, :cond_0

    const-string p1, "No SDK key specified"

    invoke-static {v1, p1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->finish()V

    return-void

    :cond_0
    new-instance v0, Lccsancom/applovin/sdk/AppLovinSdkSettings;

    invoke-virtual {p0}, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lccsancom/applovin/sdk/AppLovinSdkSettings;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {p0}, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lccsancom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdkSettings;Lccsanandroid/content/Context;)Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    iget-object p1, p1, Lccsancom/applovin/sdk/AppLovinSdk;->coreSdk:Lccsancom/applovin/impl/sdk/k;

    :try_start_0
    new-instance v0, Lccsanandroid/webkit/WebView;

    invoke-direct {v0, p0}, Lccsanandroid/webkit/WebView;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->b:Lccsanandroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->setContentView(Lccsanandroid/view/View;)V

    iget-object v0, p0, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->b:Lccsanandroid/webkit/WebView;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lccsanandroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->b:Lccsanandroid/webkit/WebView;

    invoke-virtual {v0, v2}, Lccsanandroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->b:Lccsanandroid/webkit/WebView;

    invoke-virtual {v0, v2}, Lccsanandroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->b:Lccsanandroid/webkit/WebView;

    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Lccsanandroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->b:Lccsanandroid/webkit/WebView;

    new-instance v2, Lccsancom/applovin/sdk/AppLovinWebViewActivity$1;

    invoke-direct {v2, p0, p1}, Lccsancom/applovin/sdk/AppLovinWebViewActivity$1;-><init>(Lccsancom/applovin/sdk/AppLovinWebViewActivity;Lccsancom/applovin/impl/sdk/k;)V

    invoke-virtual {v0, v2}, Lccsanandroid/webkit/WebView;->setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V

    invoke-virtual {p0}, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object p1

    const-string v0, "immersive_mode_on"

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    iget-object p1, p0, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->a:Ljava/lang/String;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->b:Lccsanandroid/webkit/WebView;

    iget-object v0, p0, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    const-string v2, "Failed to initialize WebView."

    invoke-virtual {p1, v1, v2, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
