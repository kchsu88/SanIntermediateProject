.class Lccsanandroidx/media/MediaBrowserServiceCompat$3;
.super Lccsanandroidx/media/MediaBrowserServiceCompat$Result;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat;->performSearch(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Lccsanandroid/support/v4/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/media/MediaBrowserServiceCompat$Result<",
        "Ljava/util/List<",
        "Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

.field final synthetic val$receiver:Lccsanandroid/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Lccsanandroidx/media/MediaBrowserServiceCompat;Ljava/lang/Object;Lccsanandroid/support/v4/os/ResultReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/media/MediaBrowserServiceCompat;
    .param p2, "debug"    # Ljava/lang/Object;

    .line 1662
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$3;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iput-object p3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$3;->val$receiver:Lccsanandroid/support/v4/os/ResultReceiver;

    invoke-direct {p0, p2}, Lccsanandroidx/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic onResultSent(Ljava/lang/Object;)V
    .locals 0

    .line 1662
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompat$3;->onResultSent(Ljava/util/List;)V

    return-void
.end method

.method onResultSent(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 1665
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    invoke-virtual {p0}, Lccsanandroidx/media/MediaBrowserServiceCompat$3;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1670
    :cond_0
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 1671
    .local v0, "bundle":Lccsanandroid/os/Bundle;
    const/4 v1, 0x0

    new-array v2, v1, [Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 1672
    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lccsanandroid/os/Parcelable;

    .line 1671
    const-string/jumbo v3, "search_results"

    invoke-virtual {v0, v3, v2}, Lccsanandroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Lccsanandroid/os/Parcelable;)V

    .line 1673
    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$3;->val$receiver:Lccsanandroid/support/v4/os/ResultReceiver;

    invoke-virtual {v2, v1, v0}, Lccsanandroid/support/v4/os/ResultReceiver;->send(ILccsanandroid/os/Bundle;)V

    .line 1674
    return-void

    .line 1667
    .end local v0    # "bundle":Lccsanandroid/os/Bundle;
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$3;->val$receiver:Lccsanandroid/support/v4/os/ResultReceiver;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/support/v4/os/ResultReceiver;->send(ILccsanandroid/os/Bundle;)V

    .line 1668
    return-void
.end method
