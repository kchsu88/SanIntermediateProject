.class public interface abstract Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/media/MediaBrowserServiceCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceCompatProxy"
.end annotation


# virtual methods
.method public abstract onGetRoot(Ljava/lang/String;ILccsanandroid/os/Bundle;)Lccsanandroidx/media/MediaBrowserServiceCompatApi21$BrowserRoot;
.end method

.method public abstract onLoadChildren(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper<",
            "Ljava/util/List<",
            "Lccsanandroid/os/Parcel;",
            ">;>;)V"
        }
    .end annotation
.end method
