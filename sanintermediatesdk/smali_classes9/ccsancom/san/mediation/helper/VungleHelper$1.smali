.class final Lccsancom/san/mediation/helper/VungleHelper$1;
.super Ljava/lang/Object;
.source "VungleHelper.java"

# interfaces
.implements Lccsancom/vungle/warren/InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/helper/VungleHelper;->initialize(Lccsanandroid/content/Context;Lccsancom/san/ads/base/InitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoCacheAdAvailable(Ljava/lang/String;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#initialize onAutoCacheAdAvailable placementId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VungleHelper"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onError(Lccsancom/vungle/warren/error/VungleException;)V
    .locals 2
    .param p1, "exception"    # Lccsancom/vungle/warren/error/VungleException;

    .line 62
    invoke-virtual {p1}, Lccsancom/vungle/warren/error/VungleException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/san/mediation/helper/VungleHelper;->access$200(Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#initialize onError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VungleHelper"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 54
    const/4 v0, 0x1

    invoke-static {v0}, Lccsancom/san/mediation/helper/VungleHelper;->access$002(Z)Z

    .line 55
    invoke-static {}, Lccsancom/san/mediation/helper/VungleHelper;->access$100()V

    .line 56
    const-string v0, "VungleHelper"

    const-string v1, "#initialize onSuccess"

    invoke-static {v0, v1}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
