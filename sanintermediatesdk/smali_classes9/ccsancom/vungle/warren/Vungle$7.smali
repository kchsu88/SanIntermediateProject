.class Lccsancom/vungle/warren/Vungle$7;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/Vungle;->setIncentivizedFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$close:Ljava/lang/String;

.field final synthetic val$keepWatching:Ljava/lang/String;

.field final synthetic val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$userID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lccsancom/vungle/warren/Vungle$7;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    iput-object p2, p0, Lccsancom/vungle/warren/Vungle$7;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/vungle/warren/Vungle$7;->val$body:Ljava/lang/String;

    iput-object p4, p0, Lccsancom/vungle/warren/Vungle$7;->val$keepWatching:Ljava/lang/String;

    iput-object p5, p0, Lccsancom/vungle/warren/Vungle$7;->val$close:Ljava/lang/String;

    iput-object p6, p0, Lccsancom/vungle/warren/Vungle$7;->val$userID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 739
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->access$1500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vungle is not initialized"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    return-void

    .line 744
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$7;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    const-class v1, Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/persistence/Repository;

    .line 746
    .local v0, "repository":Lccsancom/vungle/warren/persistence/Repository;
    const-class v1, Lccsancom/vungle/warren/model/Cookie;

    const-string v2, "incentivizedTextSetByPub"

    invoke-virtual {v0, v2, v1}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/model/Cookie;

    .line 747
    .local v1, "incentivizedCookie":Lccsancom/vungle/warren/model/Cookie;
    if-nez v1, :cond_1

    .line 748
    new-instance v3, Lccsancom/vungle/warren/model/Cookie;

    invoke-direct {v3, v2}, Lccsancom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 751
    :cond_1
    iget-object v2, p0, Lccsancom/vungle/warren/Vungle$7;->val$title:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lccsancom/vungle/warren/Vungle$7;->val$title:Ljava/lang/String;

    .line 752
    .local v2, "titleText":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lccsancom/vungle/warren/Vungle$7;->val$body:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lccsancom/vungle/warren/Vungle$7;->val$body:Ljava/lang/String;

    .line 753
    .local v4, "bodyText":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lccsancom/vungle/warren/Vungle$7;->val$keepWatching:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v3

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lccsancom/vungle/warren/Vungle$7;->val$keepWatching:Ljava/lang/String;

    .line 754
    .local v5, "continueText":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lccsancom/vungle/warren/Vungle$7;->val$close:Ljava/lang/String;

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v3

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lccsancom/vungle/warren/Vungle$7;->val$close:Ljava/lang/String;

    .line 755
    .local v6, "closeText":Ljava/lang/String;
    :goto_3
    iget-object v7, p0, Lccsancom/vungle/warren/Vungle$7;->val$userID:Ljava/lang/String;

    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lccsancom/vungle/warren/Vungle$7;->val$userID:Ljava/lang/String;

    .line 757
    .local v3, "userIdStr":Ljava/lang/String;
    :goto_4
    const-string v7, "title"

    invoke-virtual {v1, v7, v2}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 758
    const-string v7, "body"

    invoke-virtual {v1, v7, v4}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 759
    const-string v7, "continue"

    invoke-virtual {v1, v7, v5}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 760
    const-string v7, "close"

    invoke-virtual {v1, v7, v6}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 761
    const-string v7, "userID"

    invoke-virtual {v1, v7, v3}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 764
    :try_start_0
    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    goto :goto_5

    .line 765
    :catch_0
    move-exception v7

    .line 766
    .local v7, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->access$1500()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Cannot save incentivized cookie"

    invoke-static {v8, v9, v7}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 768
    .end local v7    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :goto_5
    return-void
.end method
