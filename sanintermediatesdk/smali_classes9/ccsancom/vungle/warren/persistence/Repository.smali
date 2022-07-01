.class public Lccsancom/vungle/warren/persistence/Repository;
.super Ljava/lang/Object;
.source "Repository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/persistence/Repository$VungleDatabaseCreator;,
        Lccsancom/vungle/warren/persistence/Repository$SaveCallback;,
        Lccsancom/vungle/warren/persistence/Repository$LoadCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static final VERSION:I = 0x9


# instance fields
.field private adapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lccsancom/vungle/warren/persistence/DBAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final appCtx:Lccsanandroid/content/Context;

.field protected dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

.field private final designer:Lccsancom/vungle/warren/persistence/Designer;

.field private final ioExecutor:Ljava/util/concurrent/ExecutorService;

.field private final uiExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/persistence/Repository;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/persistence/Designer;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "designer"    # Lccsancom/vungle/warren/persistence/Designer;
    .param p3, "ioExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "uiExecutor"    # Ljava/util/concurrent/ExecutorService;

    .line 78
    const/16 v5, 0x9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/vungle/warren/persistence/Repository;-><init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/persistence/Designer;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/persistence/Designer;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;I)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "designer"    # Lccsancom/vungle/warren/persistence/Designer;
    .param p3, "ioExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "uiExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p5, "version"    # I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    .line 83
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->appCtx:Lccsanandroid/content/Context;

    .line 84
    iput-object p3, p0, Lccsancom/vungle/warren/persistence/Repository;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    .line 85
    iput-object p4, p0, Lccsancom/vungle/warren/persistence/Repository;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    .line 87
    new-instance v1, Lccsancom/vungle/warren/persistence/DatabaseHelper;

    new-instance v2, Lccsancom/vungle/warren/persistence/Repository$VungleDatabaseCreator;

    invoke-direct {v2, v0}, Lccsancom/vungle/warren/persistence/Repository$VungleDatabaseCreator;-><init>(Lccsanandroid/content/Context;)V

    invoke-direct {v1, p1, p5, v2}, Lccsancom/vungle/warren/persistence/DatabaseHelper;-><init>(Lccsanandroid/content/Context;ILccsancom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;)V

    iput-object v1, p0, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    .line 88
    iput-object p2, p0, Lccsancom/vungle/warren/persistence/Repository;->designer:Lccsancom/vungle/warren/persistence/Designer;

    .line 90
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/model/Placement;

    new-instance v2, Lccsancom/vungle/warren/model/PlacementDBAdapter;

    invoke-direct {v2}, Lccsancom/vungle/warren/model/PlacementDBAdapter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/model/Cookie;

    new-instance v2, Lccsancom/vungle/warren/model/CookieDBAdapter;

    invoke-direct {v2}, Lccsancom/vungle/warren/model/CookieDBAdapter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/model/Report;

    new-instance v2, Lccsancom/vungle/warren/model/ReportDBAdapter;

    invoke-direct {v2}, Lccsancom/vungle/warren/model/ReportDBAdapter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/model/Advertisement;

    new-instance v2, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;

    invoke-direct {v2}, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/model/AdAsset;

    new-instance v2, Lccsancom/vungle/warren/model/AdAssetDBAdapter;

    invoke-direct {v2}, Lccsancom/vungle/warren/model/AdAssetDBAdapter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/model/VisionData;

    new-instance v2, Lccsancom/vungle/warren/model/VisionDataDBAdapter;

    invoke-direct {v2}, Lccsancom/vungle/warren/model/VisionDataDBAdapter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/model/AnalyticUrl;

    new-instance v2, Lccsancom/vungle/warren/model/AnalyticUrlDBAdapter;

    invoke-direct {v2}, Lccsancom/vungle/warren/model/AnalyticUrlDBAdapter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/model/CacheBust;

    new-instance v2, Lccsancom/vungle/warren/model/CacheBustDBAdapter;

    invoke-direct {v2}, Lccsancom/vungle/warren/model/CacheBustDBAdapter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Class;

    .line 60
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/persistence/Repository;->loadModel(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/vungle/warren/persistence/Repository;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 60
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$1000(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/persistence/Repository;->deleteAdInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lccsancom/vungle/warren/persistence/Repository;)Lccsancom/vungle/warren/persistence/Designer;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 60
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->designer:Lccsancom/vungle/warren/persistence/Designer;

    return-object v0
.end method

.method static synthetic access$1200(Lccsancom/vungle/warren/persistence/Repository;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 60
    invoke-direct {p0}, Lccsancom/vungle/warren/persistence/Repository;->loadValidPlacementIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lccsancom/vungle/warren/persistence/Repository;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p1, "x1"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/persistence/Repository;->getAdsForPlacement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p1, "x1"    # Ljava/lang/Class;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/persistence/Repository;->deleteModel(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p1, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/persistence/Repository;->saveModel(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/model/Advertisement;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacementFromDB(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/model/Advertisement;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lccsancom/vungle/warren/persistence/Repository;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 60
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/persistence/Repository;->findValidAdvertisementsForPlacementFromDB(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p1, "x1"    # Ljava/lang/Class;

    .line 60
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/persistence/Repository;->loadAllModels(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Class;Lccsanandroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p1, "x1"    # Ljava/lang/Class;
    .param p2, "x2"    # Lccsanandroid/database/Cursor;

    .line 60
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/persistence/Repository;->extractModels(Ljava/lang/Class;Lccsanandroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p1, "x1"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/persistence/Repository;->loadAllAdAssetModels(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p1, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/persistence/Repository;->deleteModel(Ljava/lang/Object;)V

    return-void
.end method

.method private deleteAdInternal(Ljava/lang/String;)V
    .locals 3
    .param p1, "advertisementId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 662
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    return-void

    .line 666
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/persistence/Repository;->deleteAssetForAdId(Ljava/lang/String;)V

    .line 667
    const-class v0, Lccsancom/vungle/warren/model/Advertisement;

    invoke-direct {p0, v0, p1}, Lccsancom/vungle/warren/persistence/Repository;->deleteModel(Ljava/lang/Class;Ljava/lang/String;)V

    .line 670
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->designer:Lccsancom/vungle/warren/persistence/Designer;

    invoke-interface {v0, p1}, Lccsancom/vungle/warren/persistence/Designer;->deleteAssets(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    goto :goto_0

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lccsancom/vungle/warren/persistence/Repository;->TAG:Ljava/lang/String;

    const-string v2, "IOException "

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 674
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private deleteAssetForAdId(Ljava/lang/String;)V
    .locals 4
    .param p1, "adId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 638
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/model/AdAsset;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/persistence/DBAdapter;

    .line 639
    .local v0, "adapter":Lccsancom/vungle/warren/persistence/DBAdapter;
    new-instance v1, Lccsancom/vungle/warren/persistence/Query;

    invoke-interface {v0}, Lccsancom/vungle/warren/persistence/DBAdapter;->tableName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    .line 640
    .local v1, "query":Lccsancom/vungle/warren/persistence/Query;
    const-string v2, "ad_identifier=?"

    iput-object v2, v1, Lccsancom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    .line 641
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iput-object v2, v1, Lccsancom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 642
    iget-object v2, p0, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v2, v1}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->delete(Lccsancom/vungle/warren/persistence/Query;)V

    .line 643
    return-void
.end method

.method private deleteModel(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 630
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/persistence/DBAdapter;

    .line 631
    .local v0, "adapter":Lccsancom/vungle/warren/persistence/DBAdapter;, "Lccsancom/vungle/warren/persistence/DBAdapter<TT;>;"
    new-instance v1, Lccsancom/vungle/warren/persistence/Query;

    invoke-interface {v0}, Lccsancom/vungle/warren/persistence/DBAdapter;->tableName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    .line 632
    .local v1, "query":Lccsancom/vungle/warren/persistence/Query;
    const-string v2, "item_id=?"

    iput-object v2, v1, Lccsancom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    .line 633
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    iput-object v2, v1, Lccsancom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 634
    iget-object v2, p0, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v2, v1}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->delete(Lccsancom/vungle/warren/persistence/Query;)V

    .line 635
    return-void
.end method

.method private deleteModel(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 646
    .local p1, "model":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/persistence/DBAdapter;

    .line 647
    .local v0, "adapter":Lccsancom/vungle/warren/persistence/DBAdapter;, "Lccsancom/vungle/warren/persistence/DBAdapter<TT;>;"
    invoke-interface {v0, p1}, Lccsancom/vungle/warren/persistence/DBAdapter;->toContentValues(Ljava/lang/Object;)Lccsanandroid/content/ContentValues;

    move-result-object v1

    .line 648
    .local v1, "contentValues":Lccsanandroid/content/ContentValues;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "item_id"

    invoke-virtual {v1, v3}, Lccsanandroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lccsancom/vungle/warren/persistence/Repository;->deleteModel(Ljava/lang/Class;Ljava/lang/String;)V

    .line 649
    return-void
.end method

.method private extractModels(Ljava/lang/Class;Lccsanandroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .param p2, "cursor"    # Lccsanandroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lccsanandroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 129
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lccsanandroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :try_start_0
    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/persistence/DBAdapter;

    .line 138
    .local v1, "adapter":Lccsancom/vungle/warren/persistence/DBAdapter;, "Lccsancom/vungle/warren/persistence/DBAdapter<TT;>;"
    :goto_0
    invoke-interface {p2}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    new-instance v2, Lccsanandroid/content/ContentValues;

    invoke-direct {v2}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 140
    .local v2, "values":Lccsanandroid/content/ContentValues;
    invoke-static {p2, v2}, Lccsanandroid/database/DatabaseUtils;->cursorRowToContentValues(Lccsanandroid/database/Cursor;Lccsanandroid/content/ContentValues;)V

    .line 141
    invoke-interface {v1, v2}, Lccsancom/vungle/warren/persistence/DBAdapter;->fromContentValues(Lccsanandroid/content/ContentValues;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    nop

    .end local v2    # "values":Lccsanandroid/content/ContentValues;
    goto :goto_0

    .line 144
    .end local v1    # "adapter":Lccsancom/vungle/warren/persistence/DBAdapter;, "Lccsancom/vungle/warren/persistence/DBAdapter<TT;>;"
    :cond_1
    invoke-interface {p2}, Lccsanandroid/database/Cursor;->close()V

    .line 145
    nop

    .line 147
    return-object v0

    .line 144
    :catchall_0
    move-exception v1

    invoke-interface {p2}, Lccsanandroid/database/Cursor;->close()V

    .line 145
    throw v1

    .line 130
    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private findValidAdvertisementForPlacementFromDB(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/model/Advertisement;
    .locals 11
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;

    .line 377
    sget-object v0, Lccsancom/vungle/warren/persistence/Repository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Searching for valid advertisement for placement with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "event ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    new-instance v0, Lccsancom/vungle/warren/persistence/Query;

    const-string v1, "advertisement"

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, "query":Lccsancom/vungle/warren/persistence/Query;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    const-string v2, "placement_id = ? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v2, "(state = ? OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string v2, "state = ?) AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string v2, "expire_time > ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 389
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v2, 0x3e8

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    .line 390
    const-string v9, " AND item_id = ?"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    aput-object p1, v9, v8

    .line 393
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    .line 394
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v5

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v4

    aput-object p2, v9, v6

    move-object v2, v9

    .local v2, "args":[Ljava/lang/String;
    goto :goto_0

    .line 399
    .end local v2    # "args":[Ljava/lang/String;
    :cond_0
    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v8

    .line 401
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    .line 402
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v4

    move-object v2, v6

    .line 407
    .restart local v2    # "args":[Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lccsancom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    .line 409
    iput-object v2, v0, Lccsancom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 410
    const-string v3, "1"

    iput-object v3, v0, Lccsancom/vungle/warren/persistence/Query;->limit:Ljava/lang/String;

    .line 411
    iget-object v3, p0, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v3, v0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->query(Lccsancom/vungle/warren/persistence/Query;)Lccsanandroid/database/Cursor;

    move-result-object v3

    .line 413
    .local v3, "cursor":Lccsanandroid/database/Cursor;
    const/4 v4, 0x0

    .line 414
    .local v4, "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    iget-object v5, p0, Lccsancom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    const-class v6, Lccsancom/vungle/warren/model/Advertisement;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;

    .line 415
    .local v5, "adapter":Lccsancom/vungle/warren/model/AdvertisementDBAdapter;
    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 416
    new-instance v6, Lccsanandroid/content/ContentValues;

    invoke-direct {v6}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 417
    .local v6, "values":Lccsanandroid/content/ContentValues;
    invoke-static {v3, v6}, Lccsanandroid/database/DatabaseUtils;->cursorRowToContentValues(Lccsanandroid/database/Cursor;Lccsanandroid/content/ContentValues;)V

    .line 418
    invoke-virtual {v5, v6}, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->fromContentValues(Lccsanandroid/content/ContentValues;)Lccsancom/vungle/warren/model/Advertisement;

    move-result-object v4

    .line 420
    .end local v6    # "values":Lccsanandroid/content/ContentValues;
    :cond_1
    if-eqz v3, :cond_2

    .line 421
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 423
    :cond_2
    return-object v4
.end method

.method private findValidAdvertisementsForPlacementFromDB(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation

    .line 306
    sget-object v0, Lccsancom/vungle/warren/persistence/Repository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Searching for valid advertisement for placement with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "event ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v0, Lccsancom/vungle/warren/persistence/Query;

    const-string v1, "advertisement"

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, "query":Lccsancom/vungle/warren/persistence/Query;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    const-string v2, "placement_id = ? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v2, "(state = ? OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v2, "state = ?) AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v2, "expire_time > ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 318
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v2, 0x3e8

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    .line 319
    const-string v9, " AND item_id = ?"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    aput-object p1, v9, v8

    .line 322
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    .line 323
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v5

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v4

    aput-object p2, v9, v6

    move-object v2, v9

    .local v2, "args":[Ljava/lang/String;
    goto :goto_0

    .line 328
    .end local v2    # "args":[Ljava/lang/String;
    :cond_0
    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v8

    .line 330
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    .line 331
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v4

    move-object v2, v6

    .line 336
    .restart local v2    # "args":[Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lccsancom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    .line 337
    iput-object v2, v0, Lccsancom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 338
    const-string v3, "state DESC"

    iput-object v3, v0, Lccsancom/vungle/warren/persistence/Query;->orderBy:Ljava/lang/String;

    .line 340
    iget-object v3, p0, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v3, v0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->query(Lccsancom/vungle/warren/persistence/Query;)Lccsanandroid/database/Cursor;

    move-result-object v3

    .line 342
    .local v3, "cursor":Lccsanandroid/database/Cursor;
    iget-object v4, p0, Lccsancom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    const-class v5, Lccsancom/vungle/warren/model/Advertisement;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;

    .line 343
    .local v4, "adapter":Lccsancom/vungle/warren/model/AdvertisementDBAdapter;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Advertisement;>;"
    :goto_1
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 345
    new-instance v6, Lccsanandroid/content/ContentValues;

    invoke-direct {v6}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 346
    .local v6, "values":Lccsanandroid/content/ContentValues;
    invoke-static {v3, v6}, Lccsanandroid/database/DatabaseUtils;->cursorRowToContentValues(Lccsanandroid/database/Cursor;Lccsanandroid/content/ContentValues;)V

    .line 347
    invoke-virtual {v4, v6}, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->fromContentValues(Lccsanandroid/content/ContentValues;)Lccsancom/vungle/warren/model/Advertisement;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    .end local v6    # "values":Lccsanandroid/content/ContentValues;
    goto :goto_1

    .line 350
    :cond_1
    if-eqz v3, :cond_2

    .line 351
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 353
    :cond_2
    return-object v5
.end method

.method private getAdsForPlacement(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 860
    new-instance v0, Lccsancom/vungle/warren/persistence/Query;

    const-string v1, "advertisement"

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    .line 861
    .local v0, "query":Lccsancom/vungle/warren/persistence/Query;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "item_id"

    aput-object v4, v2, v3

    iput-object v2, v0, Lccsancom/vungle/warren/persistence/Query;->columns:[Ljava/lang/String;

    .line 862
    const-string v2, "placement_id=?"

    iput-object v2, v0, Lccsancom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    .line 863
    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v3

    iput-object v1, v0, Lccsancom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 865
    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v1, v0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->query(Lccsancom/vungle/warren/persistence/Query;)Lccsanandroid/database/Cursor;

    move-result-object v1

    .line 867
    .local v1, "cursor":Lccsanandroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 868
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 869
    invoke-interface {v1, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 872
    :cond_0
    if-eqz v1, :cond_1

    .line 873
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 876
    :cond_1
    return-object v2
.end method

.method private loadAllAdAssetModels(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "adId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/model/AdAsset;",
            ">;"
        }
    .end annotation

    .line 612
    new-instance v0, Lccsancom/vungle/warren/persistence/Query;

    const-string v1, "adAsset"

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    .line 613
    .local v0, "query":Lccsancom/vungle/warren/persistence/Query;
    const-string v1, "ad_identifier = ? "

    iput-object v1, v0, Lccsancom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    .line 614
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, v0, Lccsancom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 615
    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v1, v0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->query(Lccsancom/vungle/warren/persistence/Query;)Lccsanandroid/database/Cursor;

    move-result-object v1

    .line 616
    .local v1, "cursor":Lccsanandroid/database/Cursor;
    const-class v2, Lccsancom/vungle/warren/model/AdAsset;

    invoke-direct {p0, v2, v1}, Lccsancom/vungle/warren/persistence/Repository;->extractModels(Ljava/lang/Class;Lccsanandroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private loadAllModels(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 119
    .local p1, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/persistence/DBAdapter;

    .line 120
    .local v0, "adapter":Lccsancom/vungle/warren/persistence/DBAdapter;, "Lccsancom/vungle/warren/persistence/DBAdapter<TT;>;"
    if-nez v0, :cond_0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1

    .line 122
    :cond_0
    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    new-instance v2, Lccsancom/vungle/warren/persistence/Query;

    invoke-interface {v0}, Lccsancom/vungle/warren/persistence/DBAdapter;->tableName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsancom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->query(Lccsancom/vungle/warren/persistence/Query;)Lccsanandroid/database/Cursor;

    move-result-object v1

    .line 124
    .local v1, "cursor":Lccsanandroid/database/Cursor;
    invoke-direct {p0, p1, v1}, Lccsancom/vungle/warren/persistence/Repository;->extractModels(Ljava/lang/Class;Lccsanandroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private loadModel(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 151
    .local p2, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/persistence/DBAdapter;

    .line 153
    .local v0, "adapter":Lccsancom/vungle/warren/persistence/DBAdapter;, "Lccsancom/vungle/warren/persistence/DBAdapter<TT;>;"
    new-instance v1, Lccsancom/vungle/warren/persistence/Query;

    invoke-interface {v0}, Lccsancom/vungle/warren/persistence/DBAdapter;->tableName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, "query":Lccsancom/vungle/warren/persistence/Query;
    const-string v2, "item_id = ? "

    iput-object v2, v1, Lccsancom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    .line 155
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iput-object v2, v1, Lccsancom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 157
    iget-object v2, p0, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v2, v1}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->query(Lccsancom/vungle/warren/persistence/Query;)Lccsanandroid/database/Cursor;

    move-result-object v2

    .line 159
    .local v2, "cursor":Lccsanandroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 161
    :try_start_0
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    new-instance v3, Lccsanandroid/content/ContentValues;

    invoke-direct {v3}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 163
    .local v3, "values":Lccsanandroid/content/ContentValues;
    invoke-static {v2, v3}, Lccsanandroid/database/DatabaseUtils;->cursorRowToContentValues(Lccsanandroid/database/Cursor;Lccsanandroid/content/ContentValues;)V

    .line 164
    invoke-interface {v0, v3}, Lccsancom/vungle/warren/persistence/DBAdapter;->fromContentValues(Lccsanandroid/content/ContentValues;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->close()V

    .line 164
    return-object v4

    .line 167
    .end local v3    # "values":Lccsanandroid/content/ContentValues;
    :cond_0
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->close()V

    .line 168
    goto :goto_0

    .line 167
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Lccsanandroid/database/Cursor;->close()V

    .line 168
    throw v3

    .line 171
    :cond_1
    :goto_0
    const/4 v3, 0x0

    return-object v3
.end method

.method private loadValidPlacementIds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 699
    new-instance v0, Lccsancom/vungle/warren/persistence/Query;

    const-string v1, "placement"

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    .line 700
    .local v0, "query":Lccsancom/vungle/warren/persistence/Query;
    const-string v1, "is_valid = ?"

    iput-object v1, v0, Lccsancom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    .line 701
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "1"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iput-object v2, v0, Lccsancom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 702
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "item_id"

    aput-object v2, v1, v4

    iput-object v1, v0, Lccsancom/vungle/warren/persistence/Query;->columns:[Ljava/lang/String;

    .line 703
    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v1, v0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->query(Lccsancom/vungle/warren/persistence/Query;)Lccsanandroid/database/Cursor;

    move-result-object v1

    .line 704
    .local v1, "cursor":Lccsanandroid/database/Cursor;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 705
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 707
    :goto_0
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 708
    invoke-interface {v1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 711
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 712
    throw v2

    .line 711
    :cond_0
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 712
    nop

    .line 715
    :cond_1
    return-object v3
.end method

.method private runAndWait(Ljava/util/concurrent/Callable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1286
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1292
    :catch_0
    move-exception v0

    .line 1293
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lccsancom/vungle/warren/persistence/Repository;->TAG:Ljava/lang/String;

    const-string v2, "InterruptedException "

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1294
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1287
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 1288
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;

    if-nez v1, :cond_0

    .line 1291
    sget-object v1, Lccsancom/vungle/warren/persistence/Repository;->TAG:Ljava/lang/String;

    const-string v2, "Exception during runAndWait"

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1295
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_0
    nop

    .line 1296
    :goto_1
    return-void

    .line 1289
    .restart local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;

    throw v1
.end method

.method private saveModel(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 175
    .local p1, "model":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/persistence/DBAdapter;

    .line 176
    .local v0, "adapter":Lccsancom/vungle/warren/persistence/DBAdapter;, "Lccsancom/vungle/warren/persistence/DBAdapter<TT;>;"
    invoke-interface {v0, p1}, Lccsancom/vungle/warren/persistence/DBAdapter;->toContentValues(Ljava/lang/Object;)Lccsanandroid/content/ContentValues;

    move-result-object v1

    .line 177
    .local v1, "contentValues":Lccsanandroid/content/ContentValues;
    iget-object v2, p0, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-interface {v0}, Lccsancom/vungle/warren/persistence/DBAdapter;->tableName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v1, v4}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->insertWithConflict(Ljava/lang/String;Lccsanandroid/content/ContentValues;I)J

    .line 178
    return-void
.end method


# virtual methods
.method public clearAllData()V
    .locals 1

    .line 938
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->dropDb()V

    .line 939
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->designer:Lccsancom/vungle/warren/persistence/Designer;

    invoke-interface {v0}, Lccsancom/vungle/warren/persistence/Designer;->clearCache()V

    .line 940
    return-void
.end method

.method public close()V
    .locals 1

    .line 943
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->close()V

    .line 944
    return-void
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 620
    .local p1, "r":Ljava/lang/Object;, "TT;"
    new-instance v0, Lccsancom/vungle/warren/persistence/Repository$14;

    invoke-direct {v0, p0, p1}, Lccsancom/vungle/warren/persistence/Repository$14;-><init>(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    .line 627
    return-void
.end method

.method public deleteAdvertisement(Ljava/lang/String;)V
    .locals 1
    .param p1, "advertisementId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 652
    new-instance v0, Lccsancom/vungle/warren/persistence/Repository$15;

    invoke-direct {v0, p0, p1}, Lccsancom/vungle/warren/persistence/Repository$15;-><init>(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    .line 659
    return-void
.end method

.method public findAdsForPlacement(Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;
    .locals 3
    .param p1, "placementId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 851
    new-instance v0, Lccsancom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lccsancom/vungle/warren/persistence/Repository$21;

    invoke-direct {v2, p0, p1}, Lccsancom/vungle/warren/persistence/Repository$21;-><init>(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public findPotentiallyExpiredAd(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;
    .locals 3
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/vungle/warren/persistence/FutureResult<",
            "Lccsancom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation

    .line 455
    sget-object v0, Lccsancom/vungle/warren/persistence/Repository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Searching for valid advertisement for placement with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "event ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v0, Lccsancom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lccsancom/vungle/warren/persistence/Repository$7;

    invoke-direct {v2, p0, p2, p1}, Lccsancom/vungle/warren/persistence/Repository$7;-><init>(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public findValidAdvertisementForPlacement(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;
    .locals 3
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/vungle/warren/persistence/FutureResult<",
            "Lccsancom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation

    .line 435
    new-instance v0, Lccsancom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lccsancom/vungle/warren/persistence/Repository$6;

    invoke-direct {v2, p0, p1, p2}, Lccsancom/vungle/warren/persistence/Repository$6;-><init>(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public findValidAdvertisementsForPlacement(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;
    .locals 3
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/model/Advertisement;",
            ">;>;"
        }
    .end annotation

    .line 519
    new-instance v0, Lccsancom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lccsancom/vungle/warren/persistence/Repository$8;

    invoke-direct {v2, p0, p1, p2}, Lccsancom/vungle/warren/persistence/Repository$8;-><init>(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public getAdsByCampaign(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "campaignId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation

    .line 915
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/persistence/Repository;->getAdsByCampaign(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdsByCampaign(Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation

    .line 903
    .local p1, "campaignIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 904
    .local v0, "idsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 905
    .local v1, "advertisements":Ljava/util/Collection;, "Ljava/util/Collection<Lccsancom/vungle/warren/model/Advertisement;>;"
    const-class v2, Lccsancom/vungle/warren/model/Advertisement;

    invoke-direct {p0, v2}, Lccsancom/vungle/warren/persistence/Repository;->loadAllModels(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 906
    .local v2, "allModels":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Advertisement;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/model/Advertisement;

    .line 907
    .local v4, "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Advertisement;->getCampaignId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 908
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 910
    .end local v4    # "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    :cond_0
    goto :goto_0

    .line 911
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method public getAdsByCreative(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "creativeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation

    .line 895
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/persistence/Repository;->getAdsByCreative(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdsByCreative(Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation

    .line 883
    .local p1, "creativeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 884
    .local v0, "idsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 885
    .local v1, "advertisements":Ljava/util/Collection;, "Ljava/util/Collection<Lccsancom/vungle/warren/model/Advertisement;>;"
    const-class v2, Lccsancom/vungle/warren/model/Advertisement;

    invoke-direct {p0, v2}, Lccsancom/vungle/warren/persistence/Repository;->loadAllModels(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 886
    .local v2, "allModels":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Advertisement;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/model/Advertisement;

    .line 887
    .local v4, "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Advertisement;->getCreativeId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 888
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 890
    .end local v4    # "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    :cond_0
    goto :goto_0

    .line 891
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method public getAdvertisementAssetDirectory(Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/vungle/warren/persistence/FutureResult<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 719
    new-instance v0, Lccsancom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lccsancom/vungle/warren/persistence/Repository$17;

    invoke-direct {v2, p0, p1}, Lccsancom/vungle/warren/persistence/Repository$17;-><init>(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public getAvailableBidTokens(II)Lccsancom/vungle/warren/persistence/FutureResult;
    .locals 3
    .param p1, "maxNumberOfBytes"    # I
    .param p2, "commaDelimiterBytePadding"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lccsancom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 752
    new-instance v0, Lccsancom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lccsancom/vungle/warren/persistence/Repository$19;

    invoke-direct {v2, p0, p1, p2}, Lccsancom/vungle/warren/persistence/Repository$19;-><init>(Lccsancom/vungle/warren/persistence/Repository;II)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public getPlacementIdByAd(Lccsancom/vungle/warren/model/Advertisement;)Ljava/lang/String;
    .locals 1
    .param p1, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;

    .line 922
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnProcessedBusts()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/model/CacheBust;",
            ">;"
        }
    .end annotation

    .line 926
    const-class v0, Lccsancom/vungle/warren/model/CacheBust;

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/persistence/Repository;->loadAllModels(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 927
    .local v0, "cacheBusts":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 929
    .local v1, "unProcessedBusts":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/vungle/warren/model/CacheBust;

    .line 930
    .local v3, "bust":Lccsancom/vungle/warren/model/CacheBust;
    invoke-virtual {v3}, Lccsancom/vungle/warren/model/CacheBust;->getTimestampProcessed()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 931
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    .end local v3    # "bust":Lccsancom/vungle/warren/model/CacheBust;
    :cond_0
    goto :goto_0

    .line 934
    :cond_1
    return-object v1
.end method

.method public getValidPlacementIds()Lccsancom/vungle/warren/persistence/FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 733
    new-instance v0, Lccsancom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lccsancom/vungle/warren/persistence/Repository$18;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/persistence/Repository$18;-><init>(Lccsancom/vungle/warren/persistence/Repository;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public getVisionAggregationData(JILjava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;
    .locals 9
    .param p1, "after"    # J
    .param p3, "limit"    # I
    .param p4, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/vision/VisionAggregationData;",
            ">;>;"
        }
    .end annotation

    .line 1058
    new-instance v0, Lccsancom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lccsancom/vungle/warren/persistence/Repository$25;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p4

    move v5, p3

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lccsancom/vungle/warren/persistence/Repository$25;-><init>(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;IJ)V

    invoke-interface {v1, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public getVisionAggregationInfo(J)Lccsancom/vungle/warren/persistence/FutureResult;
    .locals 3
    .param p1, "after"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lccsancom/vungle/warren/persistence/FutureResult<",
            "Lccsancom/vungle/warren/vision/VisionAggregationInfo;",
            ">;"
        }
    .end annotation

    .line 1028
    new-instance v0, Lccsancom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lccsancom/vungle/warren/persistence/Repository$24;

    invoke-direct {v2, p0, p1, p2}, Lccsancom/vungle/warren/persistence/Repository$24;-><init>(Lccsancom/vungle/warren/persistence/Repository;J)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 101
    new-instance v0, Lccsancom/vungle/warren/persistence/Repository$1;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/persistence/Repository$1;-><init>(Lccsancom/vungle/warren/persistence/Repository;)V

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    .line 116
    return-void
.end method

.method public load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lccsancom/vungle/warren/persistence/FutureResult<",
            "TT;>;"
        }
    .end annotation

    .line 181
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lccsancom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lccsancom/vungle/warren/persistence/Repository$2;

    invoke-direct {v2, p0, p1, p2}, Lccsancom/vungle/warren/persistence/Repository$2;-><init>(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public load(Ljava/lang/String;Ljava/lang/Class;Lccsancom/vungle/warren/persistence/Repository$LoadCallback;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lccsancom/vungle/warren/persistence/Repository$LoadCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 192
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "loadCallback":Lccsancom/vungle/warren/persistence/Repository$LoadCallback;, "Lccsancom/vungle/warren/persistence/Repository$LoadCallback<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/persistence/Repository$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsancom/vungle/warren/persistence/Repository$3;-><init>(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;Lccsancom/vungle/warren/persistence/Repository$LoadCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method

.method public loadAll(Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lccsancom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 529
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lccsancom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lccsancom/vungle/warren/persistence/Repository$9;

    invoke-direct {v2, p0, p1}, Lccsancom/vungle/warren/persistence/Repository$9;-><init>(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public loadAllAdAssets(Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;
    .locals 3
    .param p1, "adId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/model/AdAsset;",
            ">;>;"
        }
    .end annotation

    .line 603
    new-instance v0, Lccsancom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lccsancom/vungle/warren/persistence/Repository$13;

    invoke-direct {v2, p0, p1}, Lccsancom/vungle/warren/persistence/Repository$13;-><init>(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public loadAllReportToSend()Lccsancom/vungle/warren/persistence/FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/model/Report;",
            ">;>;"
        }
    .end annotation

    .line 539
    new-instance v0, Lccsancom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lccsancom/vungle/warren/persistence/Repository$10;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/persistence/Repository$10;-><init>(Lccsancom/vungle/warren/persistence/Repository;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public loadReadyOrFailedReportToSend()Lccsancom/vungle/warren/persistence/FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/model/Report;",
            ">;>;"
        }
    .end annotation

    .line 560
    new-instance v0, Lccsancom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lccsancom/vungle/warren/persistence/Repository$11;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/persistence/Repository$11;-><init>(Lccsancom/vungle/warren/persistence/Repository;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public loadValidPlacements()Lccsancom/vungle/warren/persistence/FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/Collection<",
            "Lccsancom/vungle/warren/model/Placement;",
            ">;>;"
        }
    .end annotation

    .line 682
    new-instance v0, Lccsancom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lccsancom/vungle/warren/persistence/Repository$16;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/persistence/Repository$16;-><init>(Lccsancom/vungle/warren/persistence/Repository;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public save(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 207
    .local p1, "item":Ljava/lang/Object;, "TT;"
    new-instance v0, Lccsancom/vungle/warren/persistence/Repository$4;

    invoke-direct {v0, p0, p1}, Lccsancom/vungle/warren/persistence/Repository$4;-><init>(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    .line 214
    return-void
.end method

.method public save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V
    .locals 1
    .param p2, "callback"    # Lccsancom/vungle/warren/persistence/Repository$SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lccsancom/vungle/warren/persistence/Repository$SaveCallback;",
            ")V"
        }
    .end annotation

    .line 278
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;Z)V

    .line 279
    return-void
.end method

.method public save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;Z)V
    .locals 4
    .param p2, "callback"    # Lccsancom/vungle/warren/persistence/Repository$SaveCallback;
    .param p3, "waitForResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lccsancom/vungle/warren/persistence/Repository$SaveCallback;",
            "Z)V"
        }
    .end annotation

    .line 230
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/persistence/Repository$5;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/vungle/warren/persistence/Repository$5;-><init>(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 256
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p3, :cond_0

    .line 258
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    goto :goto_1

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v2, Lccsancom/vungle/warren/persistence/Repository;->TAG:Ljava/lang/String;

    const-string v3, "Error on execution during saving"

    invoke-static {v2, v3, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 259
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lccsancom/vungle/warren/persistence/Repository;->TAG:Ljava/lang/String;

    const-string v3, "InterruptedException "

    invoke-static {v2, v3, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 266
    :cond_0
    :goto_1
    return-void
.end method

.method public saveAndApplyState(Lccsancom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    .locals 1
    .param p1, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;
    .param p2, "placementId"    # Ljava/lang/String;
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 974
    new-instance v0, Lccsancom/vungle/warren/persistence/Repository$22;

    invoke-direct {v0, p0, p3, p1, p2}, Lccsancom/vungle/warren/persistence/Repository$22;-><init>(Lccsancom/vungle/warren/persistence/Repository;ILccsancom/vungle/warren/model/Advertisement;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    .line 1004
    return-void
.end method

.method public setMockDBHelper(Lccsancom/vungle/warren/persistence/DatabaseHelper;)V
    .locals 0
    .param p1, "helper"    # Lccsancom/vungle/warren/persistence/DatabaseHelper;

    .line 1300
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    .line 1301
    return-void
.end method

.method public setValidPlacements(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/model/Placement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 799
    .local p1, "placements":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Placement;>;"
    new-instance v0, Lccsancom/vungle/warren/persistence/Repository$20;

    invoke-direct {v0, p0, p1}, Lccsancom/vungle/warren/persistence/Repository$20;-><init>(Lccsancom/vungle/warren/persistence/Repository;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    .line 848
    return-void
.end method

.method public trimVisionData(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1010
    new-instance v0, Lccsancom/vungle/warren/persistence/Repository$23;

    invoke-direct {v0, p0, p1}, Lccsancom/vungle/warren/persistence/Repository$23;-><init>(Lccsancom/vungle/warren/persistence/Repository;I)V

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    .line 1022
    return-void
.end method

.method public updateAndSaveReportState(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "statusFrom"    # I
    .param p4, "statusTo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 584
    new-instance v6, Lccsancom/vungle/warren/persistence/Repository$12;

    move-object v0, v6

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lccsancom/vungle/warren/persistence/Repository$12;-><init>(Lccsancom/vungle/warren/persistence/Repository;ILjava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v6}, Lccsancom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    .line 600
    return-void
.end method
