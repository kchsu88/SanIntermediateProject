.class Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;
.super Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaBrowserServiceImplApi26"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Lccsanandroidx/media/MediaBrowserServiceCompat;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/media/MediaBrowserServiceCompat;

    .line 514
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public getBrowserRootHints()Lccsanandroid/os/Bundle;
    .locals 2

    .line 553
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->rootHints:Lccsanandroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lccsanandroid/os/Bundle;

    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v1, v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->rootHints:Lccsanandroid/os/Bundle;

    invoke-direct {v0, v1}, Lccsanandroid/os/Bundle;-><init>(Lccsanandroid/os/Bundle;)V

    :goto_0
    return-object v0

    .line 557
    :cond_1
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0}, Lccsanandroidx/media/MediaBrowserServiceCompatApi26;->getBrowserRootHints(Ljava/lang/Object;)Lccsanandroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method notifyChildrenChangedForFramework(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Lccsanandroid/os/Bundle;

    .line 562
    if-eqz p2, :cond_0

    .line 563
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lccsanandroidx/media/MediaBrowserServiceCompatApi26;->notifyChildrenChanged(Ljava/lang/Object;Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    goto :goto_0

    .line 566
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->notifyChildrenChangedForFramework(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 568
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 518
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    invoke-static {v0, p0}, Lccsanandroidx/media/MediaBrowserServiceCompatApi26;->createService(Lccsanandroid/content/Context;Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;->mServiceObj:Ljava/lang/Object;

    .line 520
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0}, Lccsanandroidx/media/MediaBrowserServiceCompatApi21;->onCreate(Ljava/lang/Object;)V

    .line 521
    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "resultWrapper"    # Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;
    .param p3, "options"    # Lccsanandroid/os/Bundle;

    .line 526
    new-instance v0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1;

    invoke-direct {v0, p0, p1, p2}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;Ljava/lang/Object;Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;)V

    .line 547
    .local v0, "result":Lccsanandroidx/media/MediaBrowserServiceCompat$Result;, "Lccsanandroidx/media/MediaBrowserServiceCompat$Result<Ljava/util/List<Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;>;>;"
    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {v1, p1, v0, p3}, Lccsanandroidx/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompat$Result;Lccsanandroid/os/Bundle;)V

    .line 548
    return-void
.end method
