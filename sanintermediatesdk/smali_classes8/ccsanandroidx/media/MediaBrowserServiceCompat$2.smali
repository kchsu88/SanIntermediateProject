.class Lccsanandroidx/media/MediaBrowserServiceCompat$2;
.super Lccsanandroidx/media/MediaBrowserServiceCompat$Result;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat;->performLoadItem(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Lccsanandroid/support/v4/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/media/MediaBrowserServiceCompat$Result<",
        "Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;"
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

    .line 1636
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$2;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iput-object p3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$2;->val$receiver:Lccsanandroid/support/v4/os/ResultReceiver;

    invoke-direct {p0, p2}, Lccsanandroidx/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onResultSent(Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .locals 3
    .param p1, "item"    # Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 1639
    invoke-virtual {p0}, Lccsanandroidx/media/MediaBrowserServiceCompat$2;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1640
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$2;->val$receiver:Lccsanandroid/support/v4/os/ResultReceiver;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/support/v4/os/ResultReceiver;->send(ILccsanandroid/os/Bundle;)V

    .line 1641
    return-void

    .line 1643
    :cond_0
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 1644
    .local v0, "bundle":Lccsanandroid/os/Bundle;
    const-string v1, "media_item"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 1645
    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$2;->val$receiver:Lccsanandroid/support/v4/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lccsanandroid/support/v4/os/ResultReceiver;->send(ILccsanandroid/os/Bundle;)V

    .line 1646
    return-void
.end method

.method bridge synthetic onResultSent(Ljava/lang/Object;)V
    .locals 0

    .line 1636
    check-cast p1, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompat$2;->onResultSent(Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    return-void
.end method
