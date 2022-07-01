.class Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;
.super Lccsanandroid/support/v4/os/ResultReceiver;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchResultReceiver"
.end annotation


# instance fields
.field private final mCallback:Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchCallback;

.field private final mExtras:Lccsanandroid/os/Bundle;

.field private final mQuery:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchCallback;Lccsanandroid/os/Handler;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;
    .param p3, "callback"    # Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchCallback;
    .param p4, "handler"    # Lccsanandroid/os/Handler;

    .line 2268
    invoke-direct {p0, p4}, Lccsanandroid/support/v4/os/ResultReceiver;-><init>(Lccsanandroid/os/Handler;)V

    .line 2269
    iput-object p1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;

    .line 2270
    iput-object p2, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mExtras:Lccsanandroid/os/Bundle;

    .line 2271
    iput-object p3, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mCallback:Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchCallback;

    .line 2272
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILccsanandroid/os/Bundle;)V
    .locals 6
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Lccsanandroid/os/Bundle;

    .line 2276
    invoke-static {p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Lccsanandroid/os/Bundle;)V

    .line 2277
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 2278
    const-string/jumbo v0, "search_results"

    invoke-virtual {p2, v0}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2282
    :cond_0
    invoke-virtual {p2, v0}, Lccsanandroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Lccsanandroid/os/Parcelable;

    move-result-object v0

    .line 2284
    .local v0, "items":[Lccsanandroid/os/Parcelable;
    const/4 v1, 0x0

    .line 2285
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    if-eqz v0, :cond_1

    .line 2286
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 2287
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 2288
    .local v4, "item":Lccsanandroid/os/Parcelable;
    move-object v5, v4

    check-cast v5, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2287
    .end local v4    # "item":Lccsanandroid/os/Parcelable;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2291
    :cond_1
    iget-object v2, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mCallback:Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchCallback;

    iget-object v3, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;

    iget-object v4, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mExtras:Lccsanandroid/os/Bundle;

    invoke-virtual {v2, v3, v4, v1}, Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchCallback;->onSearchResult(Ljava/lang/String;Lccsanandroid/os/Bundle;Ljava/util/List;)V

    .line 2292
    return-void

    .line 2279
    .end local v0    # "items":[Lccsanandroid/os/Parcelable;
    .end local v1    # "results":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    :cond_2
    :goto_1
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mCallback:Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchCallback;

    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;

    iget-object v2, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mExtras:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchCallback;->onError(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 2280
    return-void
.end method
