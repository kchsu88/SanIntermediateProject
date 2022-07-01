.class public Lccsancom/vungle/warren/ui/view/VungleWebClient;
.super Lccsanandroid/webkit/WebViewClient;
.source "VungleWebClient.java"

# interfaces
.implements Lccsancom/vungle/warren/ui/view/WebViewAPI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/ui/view/VungleWebClient$VungleWebViewRenderProcessClient;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private MRAIDDelegate:Lccsancom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;

.field private advertisement:Lccsancom/vungle/warren/model/Advertisement;

.field private collectConsent:Z

.field private errorHandler:Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;

.field private gdprAccept:Ljava/lang/String;

.field private gdprBody:Ljava/lang/String;

.field private gdprDeny:Ljava/lang/String;

.field private gdprTitle:Ljava/lang/String;

.field private isViewable:Ljava/lang/Boolean;

.field private loadedWebView:Lccsanandroid/webkit/WebView;

.field private placement:Lccsancom/vungle/warren/model/Placement;

.field private ready:Z

.field private webViewObserver:Lccsancom/vungle/warren/omsdk/WebViewObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lccsancom/vungle/warren/ui/view/VungleWebClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;)V
    .locals 0
    .param p1, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;
    .param p2, "placement"    # Lccsancom/vungle/warren/model/Placement;

    .line 76
    invoke-direct {p0}, Lccsanandroid/webkit/WebViewClient;-><init>()V

    .line 77
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    .line 78
    iput-object p2, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->placement:Lccsancom/vungle/warren/model/Placement;

    .line 79
    return-void
.end method

.method private handleWebViewError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 316
    invoke-direct {p0, p2}, Lccsancom/vungle/warren/ui/view/VungleWebClient;->isCriticalAsset(Ljava/lang/String;)Z

    move-result v0

    .line 317
    .local v0, "criticalError":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "errorDesc":Ljava/lang/String;
    iget-object v2, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->errorHandler:Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;

    if-eqz v2, :cond_0

    .line 321
    invoke-interface {v2, v1, v0}, Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;->onReceivedError(Ljava/lang/String;Z)V

    .line 323
    :cond_0
    return-void
.end method

.method private isCriticalAsset(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 327
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Advertisement;->getDownloadableUrls()Ljava/util/Map;

    move-result-object v0

    .line 329
    .local v0, "assets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 331
    .end local v0    # "assets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private runJavascriptOnWebView(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "webView"    # Lccsanandroid/webkit/WebView;
    .param p2, "injectJs"    # Ljava/lang/String;

    .line 350
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 351
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lccsanandroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Lccsanandroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 355
    :goto_0
    return-void
.end method


# virtual methods
.method public notifyPropertiesChange(Z)V
    .locals 8
    .param p1, "skipCmdQueue"    # Z

    .line 205
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->loadedWebView:Lccsanandroid/webkit/WebView;

    if-eqz v0, :cond_3

    .line 207
    new-instance v0, Lccsancom/google/gson/JsonObject;

    invoke-direct {v0}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 209
    .local v0, "screenJson":Lccsancom/google/gson/JsonObject;
    new-instance v1, Lccsancom/google/gson/JsonObject;

    invoke-direct {v1}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 210
    .local v1, "size":Lccsancom/google/gson/JsonObject;
    iget-object v2, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->loadedWebView:Lccsanandroid/webkit/WebView;

    invoke-virtual {v2}, Lccsanandroid/webkit/WebView;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "width"

    invoke-virtual {v1, v3, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 211
    iget-object v2, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->loadedWebView:Lccsanandroid/webkit/WebView;

    invoke-virtual {v2}, Lccsanandroid/webkit/WebView;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "height"

    invoke-virtual {v1, v4, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 213
    new-instance v2, Lccsancom/google/gson/JsonObject;

    invoke-direct {v2}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 214
    .local v2, "position":Lccsancom/google/gson/JsonObject;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v2, v7, v6}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 215
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "y"

    invoke-virtual {v2, v7, v6}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 216
    iget-object v6, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->loadedWebView:Lccsanandroid/webkit/WebView;

    invoke-virtual {v6}, Lccsanandroid/webkit/WebView;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 217
    iget-object v3, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->loadedWebView:Lccsanandroid/webkit/WebView;

    invoke-virtual {v3}, Lccsanandroid/webkit/WebView;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 219
    new-instance v3, Lccsancom/google/gson/JsonObject;

    invoke-direct {v3}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 220
    .local v3, "supports":Lccsancom/google/gson/JsonObject;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v6, "sms"

    invoke-virtual {v3, v6, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 221
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v6, "tel"

    invoke-virtual {v3, v6, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 222
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v6, "calendar"

    invoke-virtual {v3, v6, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 223
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v6, "storePicture"

    invoke-virtual {v3, v6, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 224
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v6, "inlineVideo"

    invoke-virtual {v3, v6, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 226
    const-string v4, "maxSize"

    invoke-virtual {v0, v4, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 227
    const-string v4, "screenSize"

    invoke-virtual {v0, v4, v1}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 228
    const-string v4, "defaultPosition"

    invoke-virtual {v0, v4, v2}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 229
    const-string v4, "currentPosition"

    invoke-virtual {v0, v4, v2}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 230
    const-string v4, "supports"

    invoke-virtual {v0, v4, v3}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 231
    iget-object v4, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Advertisement;->getTemplateType()Ljava/lang/String;

    move-result-object v4

    const-string v6, "placementType"

    invoke-virtual {v0, v6, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v4, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->isViewable:Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 233
    const-string v6, "isViewable"

    invoke-virtual {v0, v6, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 235
    :cond_0
    const-string v4, "os"

    const-string v6, "android"

    invoke-virtual {v0, v4, v6}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget v4, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "osVersion"

    invoke-virtual {v0, v6, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v4, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v6, "incentivized"

    invoke-virtual {v0, v6, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 238
    iget-object v4, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    iget-object v6, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v6}, Lccsancom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v6

    invoke-virtual {v4, v6}, Lccsancom/vungle/warren/model/Advertisement;->getShowCloseDelay(Z)I

    move-result v4

    const/4 v6, 0x1

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "enableBackImmediately"

    invoke-virtual {v0, v7, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 239
    const-string v4, "version"

    const-string v7, "1.0"

    invoke-virtual {v0, v4, v7}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-boolean v4, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->collectConsent:Z

    const-string v7, "consentRequired"

    if-eqz v4, :cond_2

    .line 243
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 244
    iget-object v4, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->gdprTitle:Ljava/lang/String;

    const-string v5, "consentTitleText"

    invoke-virtual {v0, v5, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v4, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->gdprBody:Ljava/lang/String;

    const-string v5, "consentBodyText"

    invoke-virtual {v0, v5, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v4, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->gdprAccept:Ljava/lang/String;

    const-string v5, "consentAcceptButtonText"

    invoke-virtual {v0, v5, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v4, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->gdprDeny:Ljava/lang/String;

    const-string v5, "consentDenyButtonText"

    invoke-virtual {v0, v5, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 249
    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 251
    :goto_1
    const-string v4, "sdkVersion"

    const-string v5, "6.10.2"

    invoke-virtual {v0, v4, v5}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v4, Lccsancom/vungle/warren/ui/view/VungleWebClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadJsjavascript:window.vungle.mraidBridge.notifyPropertiesChange("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "window.vungle.mraidBridge.notifyPropertiesChange("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "injectJs":Ljava/lang/String;
    iget-object v5, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->loadedWebView:Lccsanandroid/webkit/WebView;

    invoke-direct {p0, v5, v4}, Lccsancom/vungle/warren/ui/view/VungleWebClient;->runJavascriptOnWebView(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 259
    .end local v0    # "screenJson":Lccsancom/google/gson/JsonObject;
    .end local v1    # "size":Lccsancom/google/gson/JsonObject;
    .end local v2    # "position":Lccsancom/google/gson/JsonObject;
    .end local v3    # "supports":Lccsancom/google/gson/JsonObject;
    .end local v4    # "injectJs":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public onPageFinished(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "webView"    # Lccsanandroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 169
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->onPageFinished(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown Client Type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :pswitch_0
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->loadedWebView:Lccsanandroid/webkit/WebView;

    .line 181
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebView;->setVisibility(I)V

    .line 182
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/ui/view/VungleWebClient;->notifyPropertiesChange(Z)V

    .line 183
    goto :goto_0

    .line 174
    :pswitch_1
    const-string v0, "function actionClicked(action){Android.performAction(action);};"

    .line 177
    .local v0, "inject":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lccsancom/vungle/warren/ui/view/VungleWebClient;->runJavascriptOnWebView(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 178
    nop

    .line 189
    .end local v0    # "inject":Ljava/lang/String;
    :goto_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 190
    new-instance v0, Lccsancom/vungle/warren/ui/view/VungleWebClient$VungleWebViewRenderProcessClient;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->errorHandler:Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/ui/view/VungleWebClient$VungleWebViewRenderProcessClient;-><init>(Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;)V

    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebView;->setWebViewRenderProcessClient(Lccsanandroid/webkit/WebViewRenderProcessClient;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->webViewObserver:Lccsancom/vungle/warren/omsdk/WebViewObserver;

    if-eqz v0, :cond_1

    .line 194
    invoke-interface {v0, p1}, Lccsancom/vungle/warren/omsdk/WebViewObserver;->onPageFinished(Lccsanandroid/webkit/WebView;)V

    .line 196
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReceivedError(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lccsanandroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .line 287
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/webkit/WebViewClient;->onReceivedError(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 288
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 289
    sget-object v0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error desc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error for URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0, p3, p4}, Lccsancom/vungle/warren/ui/view/VungleWebClient;->handleWebViewError(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_0
    return-void
.end method

.method public onReceivedError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;Lccsanandroid/webkit/WebResourceError;)V
    .locals 3
    .param p1, "view"    # Lccsanandroid/webkit/WebView;
    .param p2, "request"    # Lccsanandroid/webkit/WebResourceRequest;
    .param p3, "error"    # Lccsanandroid/webkit/WebResourceError;

    .line 307
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/webkit/WebViewClient;->onReceivedError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;Lccsanandroid/webkit/WebResourceError;)V

    .line 308
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 309
    sget-object v0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error desc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lccsanandroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error for URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lccsanandroid/webkit/WebResourceRequest;->getUrl()Lccsanandroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p3}, Lccsanandroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lccsanandroid/webkit/WebResourceRequest;->getUrl()Lccsanandroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lccsancom/vungle/warren/ui/view/VungleWebClient;->handleWebViewError(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_0
    return-void
.end method

.method public onReceivedHttpError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;Lccsanandroid/webkit/WebResourceResponse;)V
    .locals 3
    .param p1, "view"    # Lccsanandroid/webkit/WebView;
    .param p2, "request"    # Lccsanandroid/webkit/WebResourceRequest;
    .param p3, "errorResponse"    # Lccsanandroid/webkit/WebResourceResponse;

    .line 297
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/webkit/WebViewClient;->onReceivedHttpError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;Lccsanandroid/webkit/WebResourceResponse;)V

    .line 298
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 299
    sget-object v0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error desc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lccsanandroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error for URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lccsanandroid/webkit/WebResourceRequest;->getUrl()Lccsanandroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p3}, Lccsanandroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lccsanandroid/webkit/WebResourceRequest;->getUrl()Lccsanandroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lccsancom/vungle/warren/ui/view/VungleWebClient;->handleWebViewError(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/RenderProcessGoneDetail;)Z
    .locals 3
    .param p1, "view"    # Lccsanandroid/webkit/WebView;
    .param p2, "detail"    # Lccsanandroid/webkit/RenderProcessGoneDetail;

    .line 337
    sget-object v0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRenderProcessGone url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",  did crash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {p2}, Lccsanandroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->loadedWebView:Lccsanandroid/webkit/WebView;

    .line 343
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->errorHandler:Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p2}, Lccsanandroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;->onWebRenderingProcessGone(Lccsanandroid/webkit/WebView;Z)Z

    move-result v0

    return v0

    .line 346
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->onRenderProcessGone(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/RenderProcessGoneDetail;)Z

    move-result v0

    return v0
.end method

.method public setAdVisibility(Z)V
    .locals 1
    .param p1, "isViewable"    # Z

    .line 269
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->isViewable:Ljava/lang/Boolean;

    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/ui/view/VungleWebClient;->notifyPropertiesChange(Z)V

    .line 271
    return-void
.end method

.method public setConsentStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "collectedConsent"    # Z
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "accept"    # Ljava/lang/String;
    .param p5, "deny"    # Ljava/lang/String;

    .line 97
    iput-boolean p1, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->collectConsent:Z

    .line 98
    iput-object p2, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->gdprTitle:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->gdprBody:Ljava/lang/String;

    .line 100
    iput-object p4, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->gdprAccept:Ljava/lang/String;

    .line 101
    iput-object p5, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->gdprDeny:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setErrorHandler(Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;)V
    .locals 0
    .param p1, "errorHandler"    # Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;

    .line 275
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->errorHandler:Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;

    .line 276
    return-void
.end method

.method public setMRAIDDelegate(Lccsancom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;)V
    .locals 0
    .param p1, "MRAIDDelegate"    # Lccsancom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;

    .line 112
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->MRAIDDelegate:Lccsancom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;

    .line 113
    return-void
.end method

.method public setWebViewObserver(Lccsancom/vungle/warren/omsdk/WebViewObserver;)V
    .locals 0
    .param p1, "webViewObserver"    # Lccsancom/vungle/warren/omsdk/WebViewObserver;

    .line 280
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->webViewObserver:Lccsancom/vungle/warren/omsdk/WebViewObserver;

    .line 281
    return-void
.end method

.method public shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Lccsanandroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 117
    sget-object v0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID Command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 119
    const-string v1, "Invalid URL "

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v2

    .line 122
    :cond_0
    invoke-static {p2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v1

    .line 123
    .local v1, "uri":Lccsanandroid/net/Uri;
    invoke-virtual {v1}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 124
    invoke-virtual {v1}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "scheme":Ljava/lang/String;
    const-string v4, "mraid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 127
    invoke-virtual {v1}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "command":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 129
    const-string v2, "propertiesChangeCompleted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->ready:Z

    if-nez v2, :cond_1

    .line 131
    iget-object v2, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v2}, Lccsancom/vungle/warren/model/Advertisement;->createMRAIDArgs()Lccsancom/google/gson/JsonObject;

    move-result-object v2

    .line 132
    .local v2, "mraidArgs":Lccsancom/google/gson/JsonObject;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "window.vungle.mraidBridge.notifyReadyEvent("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "injectJs":Ljava/lang/String;
    invoke-direct {p0, p1, v4}, Lccsancom/vungle/warren/ui/view/VungleWebClient;->runJavascriptOnWebView(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 134
    iput-boolean v5, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->ready:Z

    .line 135
    .end local v2    # "mraidArgs":Lccsancom/google/gson/JsonObject;
    .end local v4    # "injectJs":Ljava/lang/String;
    goto :goto_1

    .line 138
    :cond_1
    iget-object v2, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->MRAIDDelegate:Lccsancom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;

    if-eqz v2, :cond_3

    .line 139
    new-instance v2, Lccsancom/google/gson/JsonObject;

    invoke-direct {v2}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 140
    .local v2, "args":Lccsancom/google/gson/JsonObject;
    invoke-virtual {v1}, Lccsanandroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 141
    .local v6, "param":Ljava/lang/String;
    invoke-virtual {v1, v6}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v6    # "param":Ljava/lang/String;
    goto :goto_0

    .line 143
    :cond_2
    iget-object v4, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->MRAIDDelegate:Lccsancom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;

    invoke-interface {v4, v0, v2}, Lccsancom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;->processCommand(Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 144
    const-string v4, "window.vungle.mraidBridge.notifyCommandComplete()"

    .line 145
    .restart local v4    # "injectJs":Ljava/lang/String;
    invoke-direct {p0, p1, v4}, Lccsancom/vungle/warren/ui/view/VungleWebClient;->runJavascriptOnWebView(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 149
    .end local v2    # "args":Lccsancom/google/gson/JsonObject;
    .end local v4    # "injectJs":Ljava/lang/String;
    :cond_3
    :goto_1
    return v5

    .line 151
    :cond_4
    return v2

    .line 153
    .end local v0    # "command":Ljava/lang/String;
    :cond_5
    const-string v4, "http"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "https"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 154
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Open URL"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->MRAIDDelegate:Lccsancom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;

    if-eqz v0, :cond_7

    .line 156
    new-instance v0, Lccsancom/google/gson/JsonObject;

    invoke-direct {v0}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 157
    .local v0, "args":Lccsancom/google/gson/JsonObject;
    const-string v2, "url"

    invoke-virtual {v0, v2, p2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->MRAIDDelegate:Lccsancom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;

    const-string v4, "openNonMraid"

    invoke-interface {v2, v4, v0}, Lccsancom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;->processCommand(Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Z

    .line 160
    .end local v0    # "args":Lccsancom/google/gson/JsonObject;
    :cond_7
    return v5

    .line 164
    .end local v3    # "scheme":Ljava/lang/String;
    :cond_8
    return v2
.end method
