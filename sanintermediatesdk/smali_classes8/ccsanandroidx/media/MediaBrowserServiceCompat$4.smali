.class Lccsanandroidx/media/MediaBrowserServiceCompat$4;
.super Lccsanandroidx/media/MediaBrowserServiceCompat$Result;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat;->performCustomAction(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Lccsanandroid/support/v4/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/media/MediaBrowserServiceCompat$Result<",
        "Lccsanandroid/os/Bundle;",
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

    .line 1689
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$4;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iput-object p3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$4;->val$receiver:Lccsanandroid/support/v4/os/ResultReceiver;

    invoke-direct {p0, p2}, Lccsanandroidx/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onErrorSent(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Lccsanandroid/os/Bundle;

    .line 1702
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$4;->val$receiver:Lccsanandroid/support/v4/os/ResultReceiver;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lccsanandroid/support/v4/os/ResultReceiver;->send(ILccsanandroid/os/Bundle;)V

    .line 1703
    return-void
.end method

.method onProgressUpdateSent(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Lccsanandroid/os/Bundle;

    .line 1697
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$4;->val$receiver:Lccsanandroid/support/v4/os/ResultReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lccsanandroid/support/v4/os/ResultReceiver;->send(ILccsanandroid/os/Bundle;)V

    .line 1698
    return-void
.end method

.method onResultSent(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "result"    # Lccsanandroid/os/Bundle;

    .line 1692
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$4;->val$receiver:Lccsanandroid/support/v4/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lccsanandroid/support/v4/os/ResultReceiver;->send(ILccsanandroid/os/Bundle;)V

    .line 1693
    return-void
.end method

.method bridge synthetic onResultSent(Ljava/lang/Object;)V
    .locals 0

    .line 1689
    check-cast p1, Lccsanandroid/os/Bundle;

    invoke-virtual {p0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompat$4;->onResultSent(Lccsanandroid/os/Bundle;)V

    return-void
.end method
