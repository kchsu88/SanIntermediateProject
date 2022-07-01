.class public Lccsancom/vungle/warren/utility/ExternalRouter;
.super Ljava/lang/Object;
.source "ExternalRouter.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lccsancom/vungle/warren/utility/ExternalRouter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/utility/ExternalRouter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static launch(Ljava/lang/String;Lccsanandroid/content/Context;Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)Z
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "leftApplicationCallback"    # Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;

    .line 16
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    :try_start_0
    invoke-static {p0, v1}, Lccsanandroid/content/Intent;->parseUri(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 21
    .local v0, "i":Lccsanandroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    .line 22
    invoke-static {p1, v0, p2}, Lccsancom/vungle/warren/utility/ActivityManager;->startWhenForeground(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    const/4 v1, 0x1

    return v1

    .line 24
    .end local v0    # "i":Lccsanandroid/content/Intent;
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lccsancom/vungle/warren/utility/ExternalRouter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while opening url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .end local v0    # "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot open url "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return v1

    .line 17
    :cond_1
    :goto_0
    return v1
.end method
