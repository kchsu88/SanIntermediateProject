.class Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;
.implements Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaBrowserServiceImplApi21"
.end annotation


# instance fields
.field mMessenger:Lccsanandroid/os/Messenger;

.field final mRootExtrasList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field mServiceObj:Ljava/lang/Object;

.field final synthetic this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Lccsanandroidx/media/MediaBrowserServiceCompat;)V
    .locals 1
    .param p1, "this$0"    # Lccsanandroidx/media/MediaBrowserServiceCompat;

    .line 296
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mRootExtrasList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBrowserRootHints()Lccsanandroid/os/Bundle;
    .locals 2

    .line 457
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mMessenger:Lccsanandroid/os/Messenger;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 459
    return-object v1

    .line 461
    :cond_0
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    if-eqz v0, :cond_2

    .line 465
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->rootHints:Lccsanandroid/os/Bundle;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lccsanandroid/os/Bundle;

    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->rootHints:Lccsanandroid/os/Bundle;

    invoke-direct {v1, v0}, Lccsanandroid/os/Bundle;-><init>(Lccsanandroid/os/Bundle;)V

    :goto_0
    return-object v1

    .line 462
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentBrowserInfo()Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;
    .locals 2

    .line 470
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->browserInfo:Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;

    return-object v0

    .line 471
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyChildrenChanged(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "remoteUserInfo"    # Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "options"    # Lccsanandroid/os/Bundle;

    .line 344
    invoke-virtual {p0, p1, p2, p3}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->notifyChildrenChangedForCompat(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 345
    return-void
.end method

.method public notifyChildrenChanged(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Lccsanandroid/os/Bundle;

    .line 336
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->notifyChildrenChangedForFramework(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 337
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->notifyChildrenChangedForCompat(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 338
    return-void
.end method

.method notifyChildrenChangedForCompat(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "remoteUserInfo"    # Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "options"    # Lccsanandroid/os/Bundle;

    .line 429
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mHandler:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->post(Ljava/lang/Runnable;)Z

    .line 440
    return-void
.end method

.method notifyChildrenChangedForCompat(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Lccsanandroid/os/Bundle;

    .line 416
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mHandler:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$3;

    invoke-direct {v1, p0, p1, p2}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$3;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->post(Ljava/lang/Runnable;)Z

    .line 425
    return-void
.end method

.method notifyChildrenChangedForCompatOnHandler(Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 5
    .param p1, "connection"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "options"    # Lccsanandroid/os/Bundle;

    .line 445
    iget-object v0, p1, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 446
    .local v0, "callbackList":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/util/Pair<Lccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;>;>;"
    if-eqz v0, :cond_1

    .line 447
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/core/util/Pair;

    .line 448
    .local v2, "callback":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;>;"
    iget-object v3, v2, Lccsanandroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lccsanandroid/os/Bundle;

    invoke-static {p3, v3}, Lccsanandroidx/media/MediaBrowserCompatUtils;->hasDuplicatedItems(Lccsanandroid/os/Bundle;Lccsanandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 449
    iget-object v3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v4, v2, Lccsanandroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lccsanandroid/os/Bundle;

    invoke-virtual {v3, p2, p1, v4, p3}, Lccsanandroidx/media/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Lccsanandroid/os/Bundle;Lccsanandroid/os/Bundle;)V

    .line 451
    .end local v2    # "callback":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;>;"
    :cond_0
    goto :goto_0

    .line 453
    :cond_1
    return-void
.end method

.method notifyChildrenChangedForFramework(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Lccsanandroid/os/Bundle;

    .line 412
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompatApi21;->notifyChildrenChanged(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public onBind(Lccsanandroid/content/Intent;)Lccsanandroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Lccsanandroid/content/Intent;

    .line 311
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompatApi21;->onBind(Ljava/lang/Object;Lccsanandroid/content/Intent;)Lccsanandroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 304
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    invoke-static {v0, p0}, Lccsanandroidx/media/MediaBrowserServiceCompatApi21;->createService(Lccsanandroid/content/Context;Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mServiceObj:Ljava/lang/Object;

    .line 306
    invoke-static {v0}, Lccsanandroidx/media/MediaBrowserServiceCompatApi21;->onCreate(Ljava/lang/Object;)V

    .line 307
    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILccsanandroid/os/Bundle;)Lccsanandroidx/media/MediaBrowserServiceCompatApi21$BrowserRoot;
    .locals 11
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .param p2, "clientUid"    # I
    .param p3, "rootHints"    # Lccsanandroid/os/Bundle;

    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "rootExtras":Lccsanandroid/os/Bundle;
    const/4 v1, 0x0

    if-eqz p3, :cond_2

    const/4 v2, 0x0

    const-string v3, "extra_client_version"

    invoke-virtual {p3, v3, v2}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 352
    invoke-virtual {p3, v3}, Lccsanandroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 353
    new-instance v2, Lccsanandroid/os/Messenger;

    iget-object v3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v3, v3, Lccsanandroidx/media/MediaBrowserServiceCompat;->mHandler:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    invoke-direct {v2, v3}, Lccsanandroid/os/Messenger;-><init>(Lccsanandroid/os/Handler;)V

    iput-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mMessenger:Lccsanandroid/os/Messenger;

    .line 354
    new-instance v2, Lccsanandroid/os/Bundle;

    invoke-direct {v2}, Lccsanandroid/os/Bundle;-><init>()V

    move-object v0, v2

    .line 355
    const/4 v2, 0x2

    const-string v3, "extra_service_version"

    invoke-virtual {v0, v3, v2}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mMessenger:Lccsanandroid/os/Messenger;

    invoke-virtual {v2}, Lccsanandroid/os/Messenger;->getBinder()Lccsanandroid/os/IBinder;

    move-result-object v2

    const-string v3, "extra_messenger"

    invoke-static {v0, v3, v2}, Lccsanandroidx/core/app/BundleCompat;->putBinder(Lccsanandroid/os/Bundle;Ljava/lang/String;Lccsanandroid/os/IBinder;)V

    .line 357
    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Lccsanandroidx/media/MediaBrowserServiceCompat;->mSession:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v2, :cond_1

    .line 358
    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Lccsanandroidx/media/MediaBrowserServiceCompat;->mSession:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->getExtraBinder()Lccsanandroid/support/v4/media/session/IMediaSession;

    move-result-object v2

    .line 359
    .local v2, "extraBinder":Lccsanandroid/support/v4/media/session/IMediaSession;
    if-nez v2, :cond_0

    move-object v3, v1

    goto :goto_0

    .line 360
    :cond_0
    invoke-interface {v2}, Lccsanandroid/support/v4/media/session/IMediaSession;->asBinder()Lccsanandroid/os/IBinder;

    move-result-object v3

    .line 359
    :goto_0
    const-string v4, "extra_session_binder"

    invoke-static {v0, v4, v3}, Lccsanandroidx/core/app/BundleCompat;->putBinder(Lccsanandroid/os/Bundle;Ljava/lang/String;Lccsanandroid/os/IBinder;)V

    .line 361
    .end local v2    # "extraBinder":Lccsanandroid/support/v4/media/session/IMediaSession;
    goto :goto_1

    .line 362
    :cond_1
    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mRootExtrasList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_2
    :goto_1
    iget-object v9, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    new-instance v10, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    const/4 v5, -0x1

    const/4 v8, 0x0

    move-object v2, v10

    move-object v3, v9

    move-object v4, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILccsanandroid/os/Bundle;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    iput-object v10, v9, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 369
    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {v2, p1, p2, p3}, Lccsanandroidx/media/MediaBrowserServiceCompat;->onGetRoot(Ljava/lang/String;ILccsanandroid/os/Bundle;)Lccsanandroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    move-result-object v2

    .line 371
    .local v2, "root":Lccsanandroidx/media/MediaBrowserServiceCompat$BrowserRoot;
    iget-object v3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iput-object v1, v3, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 372
    if-nez v2, :cond_3

    .line 373
    return-object v1

    .line 375
    :cond_3
    if-nez v0, :cond_4

    .line 376
    invoke-virtual {v2}, Lccsanandroidx/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    .line 377
    :cond_4
    invoke-virtual {v2}, Lccsanandroidx/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 378
    invoke-virtual {v2}, Lccsanandroidx/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->putAll(Lccsanandroid/os/Bundle;)V

    .line 380
    :cond_5
    :goto_2
    new-instance v1, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$BrowserRoot;

    .line 381
    invoke-virtual {v2}, Lccsanandroidx/media/MediaBrowserServiceCompat$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$BrowserRoot;-><init>(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    return-object v1
.end method

.method public onLoadChildren(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper<",
            "Ljava/util/List<",
            "Lccsanandroid/os/Parcel;",
            ">;>;)V"
        }
    .end annotation

    .line 387
    .local p2, "resultWrapper":Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;, "Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper<Ljava/util/List<Lccsanandroid/os/Parcel;>;>;"
    new-instance v0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2;

    invoke-direct {v0, p0, p1, p2}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;Ljava/lang/Object;Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V

    .line 408
    .local v0, "result":Lccsanandroidx/media/MediaBrowserServiceCompat$Result;, "Lccsanandroidx/media/MediaBrowserServiceCompat$Result<Ljava/util/List<Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;>;>;"
    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {v1, p1, v0}, Lccsanandroidx/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 409
    return-void
.end method

.method public setSessionToken(Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 2
    .param p1, "token"    # Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 316
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mHandler:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;

    invoke-direct {v1, p0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;)V

    invoke-virtual {v0, v1}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    .line 332
    return-void
.end method
