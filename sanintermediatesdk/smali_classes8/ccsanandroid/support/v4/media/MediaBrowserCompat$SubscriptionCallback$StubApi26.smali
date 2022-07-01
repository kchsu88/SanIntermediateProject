.class Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi26;
.super Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;
.source "MediaBrowserCompat.java"

# interfaces
.implements Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi26"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;


# direct methods
.method constructor <init>(Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 0

    .line 821
    iput-object p1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi26;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {p0, p1}, Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;-><init>(Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    .line 822
    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p3, "options"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;",
            "Lccsanandroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 827
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi26;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    .line 828
    invoke-static {p2}, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 827
    invoke-virtual {v0, p1, v1, p3}, Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Lccsanandroid/os/Bundle;)V

    .line 829
    return-void
.end method

.method public onError(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Lccsanandroid/os/Bundle;

    .line 833
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi26;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onError(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 834
    return-void
.end method
