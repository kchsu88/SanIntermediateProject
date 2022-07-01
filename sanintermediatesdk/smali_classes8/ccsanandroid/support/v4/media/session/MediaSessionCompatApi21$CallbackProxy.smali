.class Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;
.super Lccsanandroid/media/session/MediaSession$Callback;
.source "MediaSessionCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;",
        ">",
        "Lccsanandroid/media/session/MediaSession$Callback;"
    }
.end annotation


# instance fields
.field protected final mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 178
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    .local p1, "callback":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;, "TT;"
    invoke-direct {p0}, Lccsanandroid/media/session/MediaSession$Callback;-><init>()V

    .line 179
    iput-object p1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    .line 180
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Lccsanandroid/os/Bundle;
    .param p3, "cb"    # Lccsanandroid/os/ResultReceiver;

    .line 184
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    invoke-static {p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Lccsanandroid/os/Bundle;)V

    .line 185
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1, p2, p3}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onCommand(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/os/ResultReceiver;)V

    .line 186
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 258
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    invoke-static {p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Lccsanandroid/os/Bundle;)V

    .line 259
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onCustomAction(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 260
    return-void
.end method

.method public onFastForward()V
    .locals 1

    .line 233
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onFastForward()V

    .line 234
    return-void
.end method

.method public onMediaButtonEvent(Lccsanandroid/content/Intent;)Z
    .locals 1
    .param p1, "mediaButtonIntent"    # Lccsanandroid/content/Intent;

    .line 190
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onMediaButtonEvent(Lccsanandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    invoke-super {p0, p1}, Lccsanandroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Lccsanandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onPause()V
    .locals 1

    .line 218
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onPause()V

    .line 219
    return-void
.end method

.method public onPlay()V
    .locals 1

    .line 196
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onPlay()V

    .line 197
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 201
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    invoke-static {p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Lccsanandroid/os/Bundle;)V

    .line 202
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onPlayFromMediaId(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 203
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "search"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 207
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    invoke-static {p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Lccsanandroid/os/Bundle;)V

    .line 208
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onPlayFromSearch(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 209
    return-void
.end method

.method public onRewind()V
    .locals 1

    .line 238
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onRewind()V

    .line 239
    return-void
.end method

.method public onSeekTo(J)V
    .locals 1
    .param p1, "pos"    # J

    .line 248
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onSeekTo(J)V

    .line 249
    return-void
.end method

.method public onSetRating(Lccsanandroid/media/Rating;)V
    .locals 1
    .param p1, "rating"    # Lccsanandroid/media/Rating;

    .line 253
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onSetRating(Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    .line 223
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onSkipToNext()V

    .line 224
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    .line 228
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onSkipToPrevious()V

    .line 229
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 1
    .param p1, "id"    # J

    .line 213
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onSkipToQueueItem(J)V

    .line 214
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 243
    .local p0, "this":Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onStop()V

    .line 244
    return-void
.end method
