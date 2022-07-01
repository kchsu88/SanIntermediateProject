.class Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/x/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncentiveDownloadUtils"
.end annotation


# static fields
.field private static getDownloadingList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsansan/x/getDownloadingList;",
            ">;"
        }
    .end annotation
.end field

.field private static removeDownloadListener:Lccsansan/x/getDownloadingList;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Ljava/util/Map;

    .line 2
    new-instance v0, Lccsansan/x/getDownloadingList;

    const-string v2, "null"

    const-string v3, "null"

    const-string v4, "null"

    const-string v5, "null"

    const-string v6, "null"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lccsansan/x/getDownloadingList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/x/getDownloadingList;

    return-void
.end method

.method static IncentiveDownloadUtils(Lccsanokhttp3/Call;)Lccsansan/x/getDownloadingList;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList(Lccsanokhttp3/Call;Z)Lccsansan/x/getDownloadingList;

    move-result-object p0

    return-object p0
.end method

.method static IncentiveDownloadUtils(Lccsanokhttp3/Call;Ljava/lang/Exception;)V
    .locals 1

    .line 13
    invoke-static {p0}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanokhttp3/Call;)Lccsansan/x/getDownloadingList;

    move-result-object p0

    .line 14
    sget-object v0, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/x/getDownloadingList;

    if-ne p0, v0, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lccsansan/x/getDownloadingList;->removeDownloadListener(Ljava/lang/Exception;)V

    .line 18
    invoke-static {p0}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->unifiedDownload(Lccsansan/x/getDownloadingList;)V

    return-void
.end method

.method static getDownloadingList(Lccsanokhttp3/Call;Z)Lccsansan/x/getDownloadingList;
    .locals 8

    .line 2
    :try_start_0
    invoke-interface {p0}, Lccsanokhttp3/Call;->request()Lccsanokhttp3/Request;

    move-result-object v0

    const-string v1, "trace_id"

    invoke-virtual {v0, v1}, Lccsanokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object p0, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsansan/x/getDownloadingList;

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 6
    sget-object p0, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/x/getDownloadingList;

    return-object p0

    .line 8
    :cond_1
    new-instance p1, Lccsansan/x/getDownloadingList;

    invoke-interface {p0}, Lccsanokhttp3/Call;->request()Lccsanokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lccsanokhttp3/Request;->url()Lccsanokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsanokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lccsanokhttp3/Call;->request()Lccsanokhttp3/Request;

    move-result-object v1

    const-string v2, "portal"

    invoke-virtual {v1, v2}, Lccsanokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lccsanokhttp3/Call;->request()Lccsanokhttp3/Request;

    move-result-object v1

    const-string v2, "load_type"

    invoke-virtual {v1, v2}, Lccsanokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lccsanokhttp3/Call;->request()Lccsanokhttp3/Request;

    move-result-object p0

    invoke-virtual {p0}, Lccsanokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lccsansan/x/getDownloadingList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object p0, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 12
    sget-object p0, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/x/getDownloadingList;

    return-object p0
.end method

.method private static unifiedDownload(Lccsansan/x/getDownloadingList;)V
    .locals 1

    .line 19
    :try_start_0
    sget-object v0, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    sget-object v0, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Ljava/util/Map;

    invoke-virtual {p0}, Lccsansan/x/getDownloadingList;->getDownloadingList()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method
