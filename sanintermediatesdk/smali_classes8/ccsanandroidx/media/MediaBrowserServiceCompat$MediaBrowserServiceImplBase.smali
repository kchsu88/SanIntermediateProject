.class Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaBrowserServiceImplBase"
.end annotation


# instance fields
.field private mMessenger:Lccsanandroid/os/Messenger;

.field final synthetic this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Lccsanandroidx/media/MediaBrowserServiceCompat;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/media/MediaBrowserServiceCompat;

    .line 195
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrowserRootHints()Lccsanandroid/os/Bundle;
    .locals 2

    .line 277
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->rootHints:Lccsanandroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lccsanandroid/os/Bundle;

    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v1, v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->rootHints:Lccsanandroid/os/Bundle;

    invoke-direct {v0, v1}, Lccsanandroid/os/Bundle;-><init>(Lccsanandroid/os/Bundle;)V

    :goto_0
    return-object v0

    .line 278
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be called inside of onLoadChildren, onLoadItem, onSearch, or onCustomAction methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentBrowserInfo()Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;
    .locals 2

    .line 286
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->browserInfo:Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;

    return-object v0

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be called inside of onLoadChildren, onLoadItem, onSearch, or onCustomAction methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyChildrenChanged(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "remoteUserInfo"    # Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "options"    # Lccsanandroid/os/Bundle;

    .line 247
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mHandler:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->post(Ljava/lang/Runnable;)Z

    .line 259
    return-void
.end method

.method public notifyChildrenChanged(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Lccsanandroid/os/Bundle;

    .line 233
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mHandler:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;

    invoke-direct {v1, p0, p1, p2}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->post(Ljava/lang/Runnable;)Z

    .line 242
    return-void
.end method

.method notifyChildrenChangedOnHandler(Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 5
    .param p1, "connection"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "options"    # Lccsanandroid/os/Bundle;

    .line 264
    iget-object v0, p1, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 265
    .local v0, "callbackList":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/util/Pair<Lccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;>;>;"
    if-eqz v0, :cond_1

    .line 266
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/core/util/Pair;

    .line 267
    .local v2, "callback":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;>;"
    iget-object v3, v2, Lccsanandroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lccsanandroid/os/Bundle;

    invoke-static {p3, v3}, Lccsanandroidx/media/MediaBrowserCompatUtils;->hasDuplicatedItems(Lccsanandroid/os/Bundle;Lccsanandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    iget-object v3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v4, v2, Lccsanandroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lccsanandroid/os/Bundle;

    invoke-virtual {v3, p2, p1, v4, p3}, Lccsanandroidx/media/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Lccsanandroid/os/Bundle;Lccsanandroid/os/Bundle;)V

    .line 270
    .end local v2    # "callback":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;>;"
    :cond_0
    goto :goto_0

    .line 273
    :cond_1
    return-void
.end method

.method public onBind(Lccsanandroid/content/Intent;)Lccsanandroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Lccsanandroid/content/Intent;

    .line 205
    invoke-virtual {p1}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.browse.MediaBrowserService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->mMessenger:Lccsanandroid/os/Messenger;

    invoke-virtual {v0}, Lccsanandroid/os/Messenger;->getBinder()Lccsanandroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 208
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 200
    new-instance v0, Lccsanandroid/os/Messenger;

    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Lccsanandroidx/media/MediaBrowserServiceCompat;->mHandler:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    invoke-direct {v0, v1}, Lccsanandroid/os/Messenger;-><init>(Lccsanandroid/os/Handler;)V

    iput-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->mMessenger:Lccsanandroid/os/Messenger;

    .line 201
    return-void
.end method

.method public setSessionToken(Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 2
    .param p1, "token"    # Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 213
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mHandler:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1;

    invoke-direct {v1, p0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;)V

    invoke-virtual {v0, v1}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->post(Ljava/lang/Runnable;)Z

    .line 229
    return-void
.end method
