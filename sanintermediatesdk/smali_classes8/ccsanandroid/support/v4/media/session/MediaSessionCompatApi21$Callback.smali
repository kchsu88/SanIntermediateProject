.class interface abstract Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21$Callback;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaSessionCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCommand(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/os/ResultReceiver;)V
.end method

.method public abstract onCustomAction(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
.end method

.method public abstract onFastForward()V
.end method

.method public abstract onMediaButtonEvent(Lccsanandroid/content/Intent;)Z
.end method

.method public abstract onPause()V
.end method

.method public abstract onPlay()V
.end method

.method public abstract onPlayFromMediaId(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
.end method

.method public abstract onPlayFromSearch(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
.end method

.method public abstract onRewind()V
.end method

.method public abstract onSeekTo(J)V
.end method

.method public abstract onSetRating(Ljava/lang/Object;)V
.end method

.method public abstract onSetRating(Ljava/lang/Object;Lccsanandroid/os/Bundle;)V
.end method

.method public abstract onSkipToNext()V
.end method

.method public abstract onSkipToPrevious()V
.end method

.method public abstract onSkipToQueueItem(J)V
.end method

.method public abstract onStop()V
.end method
