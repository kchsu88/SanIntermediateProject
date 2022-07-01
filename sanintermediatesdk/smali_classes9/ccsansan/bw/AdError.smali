.class public Lccsansan/bw/AdError;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/util/Pair<",
            "Lccsanandroid/content/SharedPreferences;",
            "Lccsanandroid/content/SharedPreferences$Editor;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private IncentiveDownloadUtils:Lccsanandroid/content/SharedPreferences;

.field private removeDownloadListener:Lccsanandroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsansan/bw/AdError;->addDownloadListener:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 14
    const-string v0, "Settings"

    invoke-direct {p0, p1, v0}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2}, Lccsansan/bw/AdError;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/util/Pair;

    move-result-object p1

    const-string v0, "SettingsEx"

    const-string v1, "\'s SharedPreferences is null!"

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    iget-object v2, p1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lccsanandroid/content/SharedPreferences;

    iput-object v2, p0, Lccsansan/bw/AdError;->IncentiveDownloadUtils:Lccsanandroid/content/SharedPreferences;

    if-nez v2, :cond_1

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_1
    iget-object p1, p1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lccsanandroid/content/SharedPreferences$Editor;

    iput-object p1, p0, Lccsansan/bw/AdError;->removeDownloadListener:Lccsanandroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private static declared-synchronized removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lccsanandroid/util/Pair<",
            "Lccsanandroid/content/SharedPreferences;",
            "Lccsanandroid/content/SharedPreferences$Editor;",
            ">;"
        }
    .end annotation

    const-class v0, Lccsansan/bw/AdError;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    monitor-exit v0

    return-object v1

    .line 1
    :cond_0
    :try_start_0
    sget-object v2, Lccsansan/bw/AdError;->addDownloadListener:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object v3, Lccsansan/bw/AdError;->addDownloadListener:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/util/Pair;

    if-nez v3, :cond_3

    .line 5
    :cond_1
    sget-object v3, Lccsansan/bw/AdError;->addDownloadListener:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    .line 7
    :try_start_2
    invoke-virtual {p0, p1, v3}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_2

    .line 9
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v1

    .line 11
    :cond_2
    :try_start_4
    new-instance v3, Lccsanandroid/util/Pair;

    invoke-direct {v3, p0, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15
    :try_start_5
    sget-object p0, Lccsansan/bw/AdError;->addDownloadListener:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_3
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return-object v3

    :catch_0
    move-exception p0

    .line 18
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 23
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 0
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;I)I
    .locals 2

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsansan/bw/AdError;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInt e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsEx"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p2
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lccsansan/bw/AdError;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;J)Z
    .locals 1

    .line 5
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;JZ)Z

    move-result p1

    return p1
.end method

.method public addDownloadListener(Ljava/lang/String;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lccsansan/bw/AdError;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public addDownloadListener(Ljava/lang/String;Z)Z
    .locals 2

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsansan/bw/AdError;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 43
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBoolean e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsEx"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p2
.end method

.method public deleteDownItem(Ljava/lang/String;)Z
    .locals 1

    .line 61
    iget-object v0, p0, Lccsansan/bw/AdError;->IncentiveDownloadUtils:Lccsanandroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lccsanandroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDownloadingList(Ljava/lang/String;)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDownloadingList(Ljava/lang/String;J)J
    .locals 2

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsansan/bw/AdError;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    .line 59
    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInt e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsEx"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide p2
.end method

.method public getDownloadingList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lccsansan/bw/AdError;->IncentiveDownloadUtils:Lccsanandroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 65
    :cond_0
    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadingList(Ljava/lang/String;I)Z
    .locals 1

    .line 4
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lccsansan/bw/AdError;->unifiedDownload(Ljava/lang/String;IZ)Z

    move-result p1

    return p1
.end method

.method public getDownloadingList(Ljava/lang/String;JZ)Z
    .locals 0

    .line 60
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lccsansan/bw/AdError;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getDownloadingList(Ljava/lang/String;Z)Z
    .locals 1

    .line 3
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lccsansan/bw/AdError;->unifiedDownload(Ljava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method public removeDownloadListener(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/bw/AdError;->removeDownloadListener:Lccsanandroid/content/SharedPreferences$Editor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lccsansan/bw/AdError;->IncentiveDownloadUtils:Lccsanandroid/content/SharedPreferences;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v3}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lccsansan/bw/AdError;->removeDownloadListener:Lccsanandroid/content/SharedPreferences$Editor;

    .line 3
    :cond_2
    iget-object v0, p0, Lccsansan/bw/AdError;->removeDownloadListener:Lccsanandroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {v0, p1}, Lccsanandroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Lccsanandroid/content/SharedPreferences$Editor;

    .line 5
    iget-object p1, p0, Lccsansan/bw/AdError;->removeDownloadListener:Lccsanandroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lccsanandroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    .line 24
    iget-object v0, p0, Lccsansan/bw/AdError;->IncentiveDownloadUtils:Lccsanandroid/content/SharedPreferences;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 25
    const-string v2, ""

    invoke-interface {v0, p1, v2}, Lccsanandroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    iget-object v2, p0, Lccsansan/bw/AdError;->IncentiveDownloadUtils:Lccsanandroid/content/SharedPreferences;

    invoke-interface {v2, p1}, Lccsanandroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 29
    :cond_0
    iget-object v0, p0, Lccsansan/bw/AdError;->removeDownloadListener:Lccsanandroid/content/SharedPreferences$Editor;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lccsansan/bw/AdError;->IncentiveDownloadUtils:Lccsanandroid/content/SharedPreferences;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 30
    invoke-interface {v3}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lccsansan/bw/AdError;->removeDownloadListener:Lccsanandroid/content/SharedPreferences$Editor;

    .line 31
    :cond_3
    iget-object v0, p0, Lccsansan/bw/AdError;->removeDownloadListener:Lccsanandroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_4

    .line 32
    invoke-interface {v0, p1, p2}, Lccsanandroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/SharedPreferences$Editor;

    if-eqz p3, :cond_4

    .line 34
    iget-object p1, p0, Lccsansan/bw/AdError;->removeDownloadListener:Lccsanandroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lccsanandroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1

    :cond_4
    return v2
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 35
    iget-object v0, p0, Lccsansan/bw/AdError;->IncentiveDownloadUtils:Lccsanandroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 37
    :try_start_0
    invoke-interface {v0, p1, p2}, Lccsanandroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 39
    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsEx"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p2
.end method

.method public unifiedDownload(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public unifiedDownload(Ljava/lang/String;IZ)Z
    .locals 0

    .line 53
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lccsansan/bw/AdError;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public unifiedDownload(Ljava/lang/String;ZZ)Z
    .locals 0

    .line 46
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lccsansan/bw/AdError;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
