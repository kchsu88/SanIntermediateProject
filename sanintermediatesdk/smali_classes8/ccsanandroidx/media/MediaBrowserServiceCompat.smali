.class public abstract Lccsanandroidx/media/MediaBrowserServiceCompat;
.super Lccsanandroid/app/Service;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/media/MediaBrowserServiceCompat$BrowserRoot;,
        Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;,
        Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;,
        Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;,
        Lccsanandroidx/media/MediaBrowserServiceCompat$Result;,
        Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;,
        Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;,
        Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;,
        Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;,
        Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;,
        Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;,
        Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;,
        Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final EPSILON:F = 1.0E-5f

.field public static final KEY_MEDIA_ITEM:Ljava/lang/String; = "media_item"

.field public static final KEY_SEARCH_RESULTS:Ljava/lang/String; = "search_results"

.field public static final RESULT_ERROR:I = -0x1

.field static final RESULT_FLAG_ON_LOAD_ITEM_NOT_IMPLEMENTED:I = 0x2

.field static final RESULT_FLAG_ON_SEARCH_NOT_IMPLEMENTED:I = 0x4

.field static final RESULT_FLAG_OPTION_NOT_HANDLED:I = 0x1

.field public static final RESULT_OK:I = 0x0

.field public static final RESULT_PROGRESS_UPDATE:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.browse.MediaBrowserService"

.field static final TAG:Ljava/lang/String; = "MBServiceCompat"


# instance fields
.field final mConnections:Lccsanandroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/ArrayMap<",
            "Lccsanandroid/os/IBinder;",
            "Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

.field final mHandler:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;

.field private mImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

.field mSession:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 124
    const-string v0, "MBServiceCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Lccsanandroid/app/Service;-><init>()V

    .line 180
    new-instance v0, Lccsanandroidx/collection/ArrayMap;

    invoke-direct {v0}, Lccsanandroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mConnections:Lccsanandroidx/collection/ArrayMap;

    .line 182
    new-instance v0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    invoke-direct {v0, p0}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mHandler:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    .line 1721
    return-void
.end method


# virtual methods
.method addSubscription(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Lccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connection"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;
    .param p3, "token"    # Lccsanandroid/os/IBinder;
    .param p4, "options"    # Lccsanandroid/os/Bundle;

    .line 1515
    iget-object v0, p2, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1516
    .local v0, "callbackList":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/util/Pair<Lccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;>;>;"
    if-nez v0, :cond_0

    .line 1517
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1519
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/core/util/Pair;

    .line 1520
    .local v2, "callback":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;>;"
    iget-object v3, v2, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-ne p3, v3, :cond_1

    iget-object v3, v2, Lccsanandroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lccsanandroid/os/Bundle;

    .line 1521
    invoke-static {p4, v3}, Lccsanandroidx/media/MediaBrowserCompatUtils;->areSameOptions(Lccsanandroid/os/Bundle;Lccsanandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1522
    return-void

    .line 1524
    .end local v2    # "callback":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;>;"
    :cond_1
    goto :goto_0

    .line 1525
    :cond_2
    new-instance v1, Lccsanandroidx/core/util/Pair;

    invoke-direct {v1, p3, p4}, Lccsanandroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1526
    iget-object v1, p2, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p4, v1}, Lccsanandroidx/media/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Lccsanandroid/os/Bundle;Lccsanandroid/os/Bundle;)V

    .line 1530
    iput-object p2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1531
    invoke-virtual {p0, p1, p4}, Lccsanandroidx/media/MediaBrowserServiceCompat;->onSubscribe(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 1532
    iput-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1533
    return-void
.end method

.method applyOptions(Ljava/util/List;Lccsanandroid/os/Bundle;)Ljava/util/List;
    .locals 5
    .param p2, "options"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Lccsanandroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .line 1614
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    if-nez p1, :cond_0

    .line 1615
    const/4 v0, 0x0

    return-object v0

    .line 1617
    :cond_0
    const-string v0, "android.media.browse.extra.PAGE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1618
    .local v0, "page":I
    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p2, v2, v1}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1619
    .local v2, "pageSize":I
    if-ne v0, v1, :cond_1

    if-ne v2, v1, :cond_1

    .line 1620
    return-object p1

    .line 1622
    :cond_1
    mul-int v1, v2, v0

    .line 1623
    .local v1, "fromIndex":I
    add-int v3, v1, v2

    .line 1624
    .local v3, "toIndex":I
    if-ltz v0, :cond_4

    const/4 v4, 0x1

    if-lt v2, v4, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    goto :goto_0

    .line 1627
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 1628
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1630
    :cond_3
    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 1625
    :cond_4
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public attachToBaseContext(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Lccsanandroid/content/Context;

    .line 1165
    invoke-virtual {p0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompat;->attachBaseContext(Lccsanandroid/content/Context;)V

    .line 1166
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1192
    return-void
.end method

.method public final getBrowserRootHints()Lccsanandroid/os/Bundle;
    .locals 1

    .line 1412
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->getBrowserRootHints()Lccsanandroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentBrowserInfo()Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;
    .locals 1

    .line 1423
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->getCurrentBrowserInfo()Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 1393
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mSession:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method isValidPackage(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1495
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1496
    return v0

    .line 1498
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/media/MediaBrowserServiceCompat;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v1

    .line 1499
    .local v1, "pm":Lccsanandroid/content/pm/PackageManager;
    invoke-virtual {v1, p2}, Lccsanandroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 1500
    .local v2, "packages":[Ljava/lang/String;
    array-length v3, v2

    .line 1501
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1502
    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1503
    const/4 v0, 0x1

    return v0

    .line 1501
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1506
    .end local v4    # "i":I
    :cond_2
    return v0
.end method

.method public notifyChildrenChanged(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "remoteUserInfo"    # Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "options"    # Lccsanandroid/os/Bundle;

    .line 1478
    if-eqz p1, :cond_2

    .line 1482
    if-eqz p2, :cond_1

    .line 1485
    if-eqz p3, :cond_0

    .line 1488
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0, p1, p2, p3}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->notifyChildrenChanged(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 1489
    return-void

    .line 1486
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "options cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1483
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1479
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "remoteUserInfo cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyChildrenChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;

    .line 1435
    if-eqz p1, :cond_0

    .line 1438
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->notifyChildrenChanged(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 1439
    return-void

    .line 1436
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyChildrenChanged(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Lccsanandroid/os/Bundle;

    .line 1453
    if-eqz p1, :cond_1

    .line 1456
    if-eqz p2, :cond_0

    .line 1459
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0, p1, p2}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->notifyChildrenChanged(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 1460
    return-void

    .line 1457
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "options cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1454
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBind(Lccsanandroid/content/Intent;)Lccsanandroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Lccsanandroid/content/Intent;

    .line 1187
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->onBind(Lccsanandroid/content/Intent;)Lccsanandroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 1170
    invoke-super {p0}, Lccsanandroid/app/Service;->onCreate()V

    .line 1171
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 1172
    new-instance v0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;

    invoke-direct {v0, p0}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    goto :goto_0

    .line 1173
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 1174
    new-instance v0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;

    invoke-direct {v0, p0}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    goto :goto_0

    .line 1175
    :cond_1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 1176
    new-instance v0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;

    invoke-direct {v0, p0}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    goto :goto_0

    .line 1177
    :cond_2
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 1178
    new-instance v0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    invoke-direct {v0, p0}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    goto :goto_0

    .line 1180
    :cond_3
    new-instance v0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    invoke-direct {v0, p0}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    .line 1182
    :goto_0
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->onCreate()V

    .line 1183
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsanandroid/os/Bundle;",
            "Lccsanandroidx/media/MediaBrowserServiceCompat$Result<",
            "Lccsanandroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1366
    .local p3, "result":Lccsanandroidx/media/MediaBrowserServiceCompat$Result;, "Lccsanandroidx/media/MediaBrowserServiceCompat$Result<Lccsanandroid/os/Bundle;>;"
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lccsanandroidx/media/MediaBrowserServiceCompat$Result;->sendError(Lccsanandroid/os/Bundle;)V

    .line 1367
    return-void
.end method

.method public abstract onGetRoot(Ljava/lang/String;ILccsanandroid/os/Bundle;)Lccsanandroidx/media/MediaBrowserServiceCompat$BrowserRoot;
.end method

.method public abstract onLoadChildren(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompat$Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsanandroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public onLoadChildren(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompat$Result;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .param p3, "options"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsanandroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;",
            "Lccsanandroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1270
    .local p2, "result":Lccsanandroidx/media/MediaBrowserServiceCompat$Result;, "Lccsanandroidx/media/MediaBrowserServiceCompat$Result<Ljava/util/List<Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;>;>;"
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lccsanandroidx/media/MediaBrowserServiceCompat$Result;->setFlags(I)V

    .line 1271
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 1272
    return-void
.end method

.method public onLoadItem(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsanandroidx/media/MediaBrowserServiceCompat$Result<",
            "Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 1314
    .local p2, "result":Lccsanandroidx/media/MediaBrowserServiceCompat$Result;, "Lccsanandroidx/media/MediaBrowserServiceCompat$Result<Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lccsanandroidx/media/MediaBrowserServiceCompat$Result;->setFlags(I)V

    .line 1315
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lccsanandroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 1316
    return-void
.end method

.method public onSearch(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsanandroid/os/Bundle;",
            "Lccsanandroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 1341
    .local p3, "result":Lccsanandroidx/media/MediaBrowserServiceCompat$Result;, "Lccsanandroidx/media/MediaBrowserServiceCompat$Result<Ljava/util/List<Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;>;>;"
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Lccsanandroidx/media/MediaBrowserServiceCompat$Result;->setFlags(I)V

    .line 1342
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lccsanandroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 1343
    return-void
.end method

.method public onSubscribe(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "option"    # Lccsanandroid/os/Bundle;

    .line 1283
    return-void
.end method

.method public onUnsubscribe(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 1293
    return-void
.end method

.method performCustomAction(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Lccsanandroid/support/v4/os/ResultReceiver;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;
    .param p3, "connection"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;
    .param p4, "receiver"    # Lccsanandroid/support/v4/os/ResultReceiver;

    .line 1689
    new-instance v0, Lccsanandroidx/media/MediaBrowserServiceCompat$4;

    invoke-direct {v0, p0, p1, p4}, Lccsanandroidx/media/MediaBrowserServiceCompat$4;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat;Ljava/lang/Object;Lccsanandroid/support/v4/os/ResultReceiver;)V

    .line 1706
    .local v0, "result":Lccsanandroidx/media/MediaBrowserServiceCompat$Result;, "Lccsanandroidx/media/MediaBrowserServiceCompat$Result<Lccsanandroid/os/Bundle;>;"
    iput-object p3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1707
    invoke-virtual {p0, p1, p2, v0}, Lccsanandroidx/media/MediaBrowserServiceCompat;->onCustomAction(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 1708
    const/4 v1, 0x0

    iput-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1710
    invoke-virtual {v0}, Lccsanandroidx/media/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1715
    return-void

    .line 1711
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCustomAction must call detach() or sendResult() or sendError() before returning for action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method performLoadChildren(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Lccsanandroid/os/Bundle;Lccsanandroid/os/Bundle;)V
    .locals 8
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "connection"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;
    .param p3, "subscribeOptions"    # Lccsanandroid/os/Bundle;
    .param p4, "notifyChildrenChangedOptions"    # Lccsanandroid/os/Bundle;

    .line 1572
    new-instance v7, Lccsanandroidx/media/MediaBrowserServiceCompat$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lccsanandroidx/media/MediaBrowserServiceCompat$1;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat;Ljava/lang/Object;Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/os/Bundle;)V

    .line 1598
    .local v0, "result":Lccsanandroidx/media/MediaBrowserServiceCompat$Result;, "Lccsanandroidx/media/MediaBrowserServiceCompat$Result<Ljava/util/List<Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;>;>;"
    iput-object p2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1599
    if-nez p3, :cond_0

    .line 1600
    invoke-virtual {p0, p1, v0}, Lccsanandroidx/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompat$Result;)V

    goto :goto_0

    .line 1602
    :cond_0
    invoke-virtual {p0, p1, v0, p3}, Lccsanandroidx/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompat$Result;Lccsanandroid/os/Bundle;)V

    .line 1604
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1606
    invoke-virtual {v0}, Lccsanandroidx/media/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1610
    return-void

    .line 1607
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadChildren must call detach() or sendResult() before returning for package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method performLoadItem(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Lccsanandroid/support/v4/os/ResultReceiver;)V
    .locals 4
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "connection"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;
    .param p3, "receiver"    # Lccsanandroid/support/v4/os/ResultReceiver;

    .line 1635
    new-instance v0, Lccsanandroidx/media/MediaBrowserServiceCompat$2;

    invoke-direct {v0, p0, p1, p3}, Lccsanandroidx/media/MediaBrowserServiceCompat$2;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat;Ljava/lang/Object;Lccsanandroid/support/v4/os/ResultReceiver;)V

    .line 1649
    .local v0, "result":Lccsanandroidx/media/MediaBrowserServiceCompat$Result;, "Lccsanandroidx/media/MediaBrowserServiceCompat$Result<Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    iput-object p2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1650
    invoke-virtual {p0, p1, v0}, Lccsanandroidx/media/MediaBrowserServiceCompat;->onLoadItem(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 1651
    const/4 v1, 0x0

    iput-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1653
    invoke-virtual {v0}, Lccsanandroidx/media/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1657
    return-void

    .line 1654
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadItem must call detach() or sendResult() before returning for id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method performSearch(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Lccsanandroid/support/v4/os/ResultReceiver;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;
    .param p3, "connection"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;
    .param p4, "receiver"    # Lccsanandroid/support/v4/os/ResultReceiver;

    .line 1661
    new-instance v0, Lccsanandroidx/media/MediaBrowserServiceCompat$3;

    invoke-direct {v0, p0, p1, p4}, Lccsanandroidx/media/MediaBrowserServiceCompat$3;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat;Ljava/lang/Object;Lccsanandroid/support/v4/os/ResultReceiver;)V

    .line 1677
    .local v0, "result":Lccsanandroidx/media/MediaBrowserServiceCompat$Result;, "Lccsanandroidx/media/MediaBrowserServiceCompat$Result<Ljava/util/List<Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;>;>;"
    iput-object p3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1678
    invoke-virtual {p0, p1, p2, v0}, Lccsanandroidx/media/MediaBrowserServiceCompat;->onSearch(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 1679
    const/4 v1, 0x0

    iput-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1681
    invoke-virtual {v0}, Lccsanandroidx/media/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1685
    return-void

    .line 1682
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSearch must call detach() or sendResult() before returning for query="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method removeSubscription(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Lccsanandroid/os/IBinder;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connection"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;
    .param p3, "token"    # Lccsanandroid/os/IBinder;

    .line 1540
    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 1541
    :try_start_0
    iget-object v1, p2, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1559
    :goto_0
    iput-object p2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1560
    invoke-virtual {p0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompat;->onUnsubscribe(Ljava/lang/String;)V

    .line 1561
    iput-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    return v1

    .line 1543
    :cond_1
    const/4 v1, 0x0

    .line 1544
    .local v1, "removed":Z
    :try_start_1
    iget-object v2, p2, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1545
    .local v2, "callbackList":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/util/Pair<Lccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;>;>;"
    if-eqz v2, :cond_4

    .line 1546
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1547
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsanandroidx/core/util/Pair<Lccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1548
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroidx/core/util/Pair;

    iget-object v4, v4, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-ne p3, v4, :cond_2

    .line 1549
    const/4 v1, 0x1

    .line 1550
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1553
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 1554
    iget-object v4, p2, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1557
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsanandroidx/core/util/Pair<Lccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;>;>;"
    :cond_4
    nop

    .line 1559
    iput-object p2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1560
    invoke-virtual {p0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompat;->onUnsubscribe(Ljava/lang/String;)V

    .line 1561
    iput-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    return v1

    .line 1559
    .end local v1    # "removed":Z
    .end local v2    # "callbackList":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/util/Pair<Lccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;>;>;"
    :catchall_0
    move-exception v1

    iput-object p2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1560
    invoke-virtual {p0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompat;->onUnsubscribe(Ljava/lang/String;)V

    .line 1561
    iput-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public setSessionToken(Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 2
    .param p1, "token"    # Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1378
    if-eqz p1, :cond_1

    .line 1381
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mSession:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    if-nez v0, :cond_0

    .line 1384
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mSession:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1385
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->setSessionToken(Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 1386
    return-void

    .line 1382
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The session token has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1379
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session token may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
