.class Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;
.super Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Lccsanandroidx/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaBrowserServiceImplApi23"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Lccsanandroidx/media/MediaBrowserServiceCompat;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/media/MediaBrowserServiceCompat;

    .line 479
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 483
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    invoke-static {v0, p0}, Lccsanandroidx/media/MediaBrowserServiceCompatApi23;->createService(Lccsanandroid/content/Context;Lccsanandroidx/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->mServiceObj:Ljava/lang/Object;

    .line 485
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0}, Lccsanandroidx/media/MediaBrowserServiceCompatApi21;->onCreate(Ljava/lang/Object;)V

    .line 486
    return-void
.end method

.method public onLoadItem(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper<",
            "Lccsanandroid/os/Parcel;",
            ">;)V"
        }
    .end annotation

    .line 491
    .local p2, "resultWrapper":Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;, "Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper<Lccsanandroid/os/Parcel;>;"
    new-instance v0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;

    invoke-direct {v0, p0, p1, p2}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;Ljava/lang/Object;Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V

    .line 509
    .local v0, "result":Lccsanandroidx/media/MediaBrowserServiceCompat$Result;, "Lccsanandroidx/media/MediaBrowserServiceCompat$Result<Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {v1, p1, v0}, Lccsanandroidx/media/MediaBrowserServiceCompat;->onLoadItem(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 510
    return-void
.end method
