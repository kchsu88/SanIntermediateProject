.class interface abstract Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ServiceCallbacks"
.end annotation


# virtual methods
.method public abstract asBinder()Lccsanandroid/os/IBinder;
.end method

.method public abstract onConnect(Ljava/lang/String;Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;Lccsanandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onConnectFailed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onLoadChildren(Ljava/lang/String;Ljava/util/List;Lccsanandroid/os/Bundle;Lccsanandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Lccsanandroid/os/Bundle;",
            "Lccsanandroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation
.end method
