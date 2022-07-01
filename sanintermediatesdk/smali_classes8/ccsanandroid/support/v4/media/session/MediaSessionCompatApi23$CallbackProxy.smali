.class Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;
.super Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;
.source "MediaSessionCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$Callback;",
        ">",
        "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy<TT;>;"
    .local p1, "callback":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$Callback;, "TT;"
    invoke-direct {p0, p1}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;-><init>(Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onPlayFromUri(Lccsanandroid/net/Uri;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 43
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy<TT;>;"
    invoke-static {p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Lccsanandroid/os/Bundle;)V

    .line 44
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;->mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$Callback;

    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$Callback;->onPlayFromUri(Lccsanandroid/net/Uri;Lccsanandroid/os/Bundle;)V

    .line 45
    return-void
.end method
