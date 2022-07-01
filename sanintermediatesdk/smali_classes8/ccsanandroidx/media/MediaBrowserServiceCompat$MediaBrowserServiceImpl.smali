.class interface abstract Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MediaBrowserServiceImpl"
.end annotation


# virtual methods
.method public abstract getBrowserRootHints()Lccsanandroid/os/Bundle;
.end method

.method public abstract getCurrentBrowserInfo()Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;
.end method

.method public abstract notifyChildrenChanged(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Lccsanandroid/os/Bundle;)V
.end method

.method public abstract notifyChildrenChanged(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
.end method

.method public abstract onBind(Lccsanandroid/content/Intent;)Lccsanandroid/os/IBinder;
.end method

.method public abstract onCreate()V
.end method

.method public abstract setSessionToken(Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;)V
.end method
