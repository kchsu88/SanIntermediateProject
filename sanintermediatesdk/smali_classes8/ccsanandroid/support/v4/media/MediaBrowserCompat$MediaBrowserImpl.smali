.class interface abstract Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MediaBrowserImpl"
.end annotation


# virtual methods
.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract getExtras()Lccsanandroid/os/Bundle;
.end method

.method public abstract getItem(Ljava/lang/String;Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
.end method

.method public abstract getNotifyChildrenChangedOptions()Lccsanandroid/os/Bundle;
.end method

.method public abstract getRoot()Ljava/lang/String;
.end method

.method public abstract getServiceComponent()Lccsanandroid/content/ComponentName;
.end method

.method public abstract getSessionToken()Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract search(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchCallback;)V
.end method

.method public abstract sendCustomAction(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/support/v4/media/MediaBrowserCompat$CustomActionCallback;)V
.end method

.method public abstract subscribe(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
.end method

.method public abstract unsubscribe(Ljava/lang/String;Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
.end method
