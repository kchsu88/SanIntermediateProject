.class public Lccsancom/vungle/warren/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-class v0, Lccsancom/vungle/warren/Plugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/Plugin;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWrapperInfo(Lccsancom/vungle/warren/VungleApiClient$WrapperFramework;Ljava/lang/String;)V
    .locals 2
    .param p0, "wrapperFramework"    # Lccsancom/vungle/warren/VungleApiClient$WrapperFramework;
    .param p1, "wrapperFrameworkVersion"    # Ljava/lang/String;

    .line 15
    if-eqz p0, :cond_1

    sget-object v0, Lccsancom/vungle/warren/VungleApiClient$WrapperFramework;->none:Lccsancom/vungle/warren/VungleApiClient$WrapperFramework;

    if-eq p0, v0, :cond_1

    .line 16
    sput-object p0, Lccsancom/vungle/warren/VungleApiClient;->WRAPPER_FRAMEWORK_SELECTED:Lccsancom/vungle/warren/VungleApiClient$WrapperFramework;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsancom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/vungle/warren/VungleApiClient;->setHeaderUa(Ljava/lang/String;)V

    .line 18
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsancom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/vungle/warren/VungleApiClient;->setHeaderUa(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lccsancom/vungle/warren/Plugin;->TAG:Ljava/lang/String;

    const-string v1, "Wrapper framework version is empty"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 25
    :cond_1
    sget-object v0, Lccsancom/vungle/warren/Plugin;->TAG:Ljava/lang/String;

    const-string v1, "Wrapper is null or is not none"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :goto_0
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    sget-object v0, Lccsancom/vungle/warren/Plugin;->TAG:Ljava/lang/String;

    const-string v1, "VUNGLE WARNING: SDK already initialized, you should\'ve set wrapper info before"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_2
    return-void
.end method
