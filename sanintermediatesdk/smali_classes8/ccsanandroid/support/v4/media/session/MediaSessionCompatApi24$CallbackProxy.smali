.class Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;
.super Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;
.source "MediaSessionCompatApi24.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$Callback;",
        ">",
        "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy<TT;>;"
    .local p1, "callback":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$Callback;, "TT;"
    invoke-direct {p0, p1}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;-><init>(Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)V

    .line 59
    return-void
.end method


# virtual methods
.method public onPrepare()V
    .locals 1

    .line 63
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy<TT;>;"
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;->mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$Callback;

    invoke-interface {v0}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepare()V

    .line 64
    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 68
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy<TT;>;"
    invoke-static {p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Lccsanandroid/os/Bundle;)V

    .line 69
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;->mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$Callback;

    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepareFromMediaId(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 74
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy<TT;>;"
    invoke-static {p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Lccsanandroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;->mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$Callback;

    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepareFromSearch(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public onPrepareFromUri(Lccsanandroid/net/Uri;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 80
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy<TT;>;"
    invoke-static {p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Lccsanandroid/os/Bundle;)V

    .line 81
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;->mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$Callback;

    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepareFromUri(Lccsanandroid/net/Uri;Lccsanandroid/os/Bundle;)V

    .line 82
    return-void
.end method
