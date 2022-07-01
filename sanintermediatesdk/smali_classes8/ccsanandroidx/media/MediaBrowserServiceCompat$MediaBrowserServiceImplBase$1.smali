.class Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->setSessionToken(Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

.field final synthetic val$token:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method constructor <init>(Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 0
    .param p1, "this$1"    # Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    .line 213
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iput-object p2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1;->val$token:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 216
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mConnections:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v0}, Lccsanandroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 217
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 220
    .local v1, "connection":Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;
    :try_start_0
    iget-object v2, v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iget-object v3, v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Lccsanandroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    invoke-virtual {v3}, Lccsanandroidx/media/MediaBrowserServiceCompat$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1;->val$token:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v5, v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Lccsanandroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    .line 221
    invoke-virtual {v5}, Lccsanandroidx/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v5

    .line 220
    invoke-interface {v2, v3, v4, v5}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;->onConnect(Ljava/lang/String;Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;Lccsanandroid/os/Bundle;)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_1

    .line 222
    :catch_0
    move-exception v2

    .line 223
    .local v2, "e":Lccsanandroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is no longer valid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MBServiceCompat"

    invoke-static {v4, v3}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 226
    .end local v1    # "connection":Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;
    .end local v2    # "e":Lccsanandroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 227
    :cond_0
    return-void
.end method
