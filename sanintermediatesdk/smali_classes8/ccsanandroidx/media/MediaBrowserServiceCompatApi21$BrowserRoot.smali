.class Lccsanandroidx/media/MediaBrowserServiceCompatApi21$BrowserRoot;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/media/MediaBrowserServiceCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BrowserRoot"
.end annotation


# instance fields
.field final mExtras:Lccsanandroid/os/Bundle;

.field final mRootId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$BrowserRoot;->mRootId:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$BrowserRoot;->mExtras:Lccsanandroid/os/Bundle;

    .line 108
    return-void
.end method
