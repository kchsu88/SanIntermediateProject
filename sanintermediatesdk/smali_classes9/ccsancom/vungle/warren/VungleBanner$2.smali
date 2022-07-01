.class Lccsancom/vungle/warren/VungleBanner$2;
.super Ljava/lang/Object;
.source "VungleBanner.java"

# interfaces
.implements Lccsancom/vungle/warren/LoadAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/VungleBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/VungleBanner;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/VungleBanner;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/VungleBanner;

    .line 242
    iput-object p1, p0, Lccsancom/vungle/warren/VungleBanner$2;->this$0:Lccsancom/vungle/warren/VungleBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoad(Ljava/lang/String;)V
    .locals 4
    .param p1, "placementId"    # Ljava/lang/String;

    .line 245
    invoke-static {}, Lccsancom/vungle/warren/VungleBanner;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Loaded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lccsancom/vungle/warren/VungleBanner$2;->this$0:Lccsancom/vungle/warren/VungleBanner;

    invoke-static {v0}, Lccsancom/vungle/warren/VungleBanner;->access$100(Lccsancom/vungle/warren/VungleBanner;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/vungle/warren/VungleBanner$2;->this$0:Lccsancom/vungle/warren/VungleBanner;

    invoke-static {v0}, Lccsancom/vungle/warren/VungleBanner;->access$200(Lccsancom/vungle/warren/VungleBanner;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lccsancom/vungle/warren/VungleBanner$2;->this$0:Lccsancom/vungle/warren/VungleBanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/vungle/warren/VungleBanner;->access$102(Lccsancom/vungle/warren/VungleBanner;Z)Z

    .line 248
    iget-object v0, p0, Lccsancom/vungle/warren/VungleBanner$2;->this$0:Lccsancom/vungle/warren/VungleBanner;

    invoke-static {v0, v1}, Lccsancom/vungle/warren/VungleBanner;->access$300(Lccsancom/vungle/warren/VungleBanner;Z)V

    .line 249
    iget-object v0, p0, Lccsancom/vungle/warren/VungleBanner$2;->this$0:Lccsancom/vungle/warren/VungleBanner;

    invoke-static {v0}, Lccsancom/vungle/warren/VungleBanner;->access$400(Lccsancom/vungle/warren/VungleBanner;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lccsancom/vungle/warren/AdMarkup;

    new-instance v2, Lccsancom/vungle/warren/AdConfig;

    iget-object v3, p0, Lccsancom/vungle/warren/VungleBanner$2;->this$0:Lccsancom/vungle/warren/VungleBanner;

    .line 250
    invoke-static {v3}, Lccsancom/vungle/warren/VungleBanner;->access$500(Lccsancom/vungle/warren/VungleBanner;)Lccsancom/vungle/warren/BannerAdConfig;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsancom/vungle/warren/AdConfig;-><init>(Lccsancom/vungle/warren/BaseAdConfig;)V

    iget-object v3, p0, Lccsancom/vungle/warren/VungleBanner$2;->this$0:Lccsancom/vungle/warren/VungleBanner;

    invoke-static {v3}, Lccsancom/vungle/warren/VungleBanner;->access$600(Lccsancom/vungle/warren/VungleBanner;)Lccsancom/vungle/warren/PlayAdCallback;

    move-result-object v3

    .line 249
    invoke-static {v0, v1, v2, v3}, Lccsancom/vungle/warren/Vungle;->getNativeAdInternal(Ljava/lang/String;Lccsancom/vungle/warren/AdMarkup;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/PlayAdCallback;)Lccsancom/vungle/warren/ui/view/VungleNativeView;

    move-result-object v0

    .line 251
    .local v0, "ad":Lccsancom/vungle/warren/ui/view/VungleNativeView;
    if-eqz v0, :cond_0

    .line 252
    iget-object v1, p0, Lccsancom/vungle/warren/VungleBanner$2;->this$0:Lccsancom/vungle/warren/VungleBanner;

    invoke-static {v1, v0}, Lccsancom/vungle/warren/VungleBanner;->access$702(Lccsancom/vungle/warren/VungleBanner;Lccsancom/vungle/warren/ui/view/VungleNativeView;)Lccsancom/vungle/warren/ui/view/VungleNativeView;

    .line 253
    iget-object v1, p0, Lccsancom/vungle/warren/VungleBanner$2;->this$0:Lccsancom/vungle/warren/VungleBanner;

    invoke-virtual {v1}, Lccsancom/vungle/warren/VungleBanner;->renderAd()V

    goto :goto_0

    .line 255
    :cond_0
    iget-object v1, p0, Lccsancom/vungle/warren/VungleBanner$2;->this$0:Lccsancom/vungle/warren/VungleBanner;

    invoke-static {v1}, Lccsancom/vungle/warren/VungleBanner;->access$400(Lccsancom/vungle/warren/VungleBanner;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lccsancom/vungle/warren/VungleBanner$2;->onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lccsancom/vungle/warren/VungleBanner;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#loadAdCallback; onAdLoad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VungleNativeView is null"

    invoke-static {v1, v2}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .end local v0    # "ad":Lccsancom/vungle/warren/ui/view/VungleNativeView;
    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V
    .locals 3
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "exception"    # Lccsancom/vungle/warren/error/VungleException;

    .line 263
    invoke-static {}, Lccsancom/vungle/warren/VungleBanner;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Load Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lccsancom/vungle/warren/VungleBanner$2;->this$0:Lccsancom/vungle/warren/VungleBanner;

    invoke-virtual {v0}, Lccsancom/vungle/warren/VungleBanner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/vungle/warren/VungleBanner$2;->this$0:Lccsancom/vungle/warren/VungleBanner;

    invoke-static {v0}, Lccsancom/vungle/warren/VungleBanner;->access$200(Lccsancom/vungle/warren/VungleBanner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lccsancom/vungle/warren/VungleBanner$2;->this$0:Lccsancom/vungle/warren/VungleBanner;

    invoke-static {v0}, Lccsancom/vungle/warren/VungleBanner;->access$800(Lccsancom/vungle/warren/VungleBanner;)Lccsancom/vungle/warren/utility/RefreshHandler;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/utility/RefreshHandler;->start()V

    .line 267
    :cond_0
    return-void
.end method
