.class Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;
.super Lccsanandroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "removeDownloadListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener$getDownloadingList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final getDownloadingList:Lccsanandroid/content/Context;

.field private final removeDownloadListener:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener$getDownloadingList;

.field private unifiedDownload:Lccsanandroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener$getDownloadingList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/os/AsyncTask;-><init>()V

    .line 2
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    .line 3
    iput-object p2, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener$getDownloadingList;

    return-void
.end method

.method private addDownloadListener(Ljava/net/URI;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 53
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 59
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 61
    const-string v0, "content-type"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_3

    .line 62
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 63
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 72
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 73
    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_3

    aget-object v2, p2, v0

    .line 74
    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object p1

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private removeDownloadListener(Ljava/lang/String;)V
    .locals 2

    .line 79
    new-instance v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$unifiedDownload;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$unifiedDownload;-><init>(Ljava/lang/String;Ljava/lang/String;Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$getDownloadingList;)V

    .line 81
    new-instance p1, Lccsanandroid/media/MediaScannerConnection;

    iget-object v1, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-direct {p1, v1, v0}, Lccsanandroid/media/MediaScannerConnection;-><init>(Lccsanandroid/content/Context;Lccsanandroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 83
    invoke-static {v0, p1}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$unifiedDownload;->addDownloadListener(Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$unifiedDownload;Lccsanandroid/media/MediaScannerConnection;)V

    .line 84
    invoke-virtual {p1}, Lccsanandroid/media/MediaScannerConnection;->connect()V

    return-void
.end method

.method static synthetic unifiedDownload(Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;)Lccsanandroid/os/AsyncTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;->unifiedDownload:Lccsanandroid/os/AsyncTask;

    return-object p0
.end method

.method private unifiedDownload()Ljava/io/File;
    .locals 3

    .line 78
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Pictures"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected addDownloadListener(Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener$getDownloadingList;

    invoke-interface {p1}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener$getDownloadingList;->removeDownloadListener()V

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener$getDownloadingList;

    invoke-interface {p1}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener$getDownloadingList;->getDownloadingList()V

    :goto_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;->getDownloadingList([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected getDownloadingList([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6

    if-eqz p1, :cond_2

    .line 2
    array-length v0, p1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    invoke-direct {p0}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;->unifiedDownload()Ljava/io/File;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 11
    aget-object p1, p1, v0

    .line 12
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 18
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lccsansan/ct/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 19
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v4, "location"

    .line 21
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 23
    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 27
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;->addDownloadListener(Ljava/net/URI;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 28
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    :try_start_2
    invoke-static {v3, p1}, Lccsansan/cx/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-direct {p0, v0}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;->removeDownloadListener(Ljava/lang/String;)V

    .line 35
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    invoke-static {v3}, Lccsansan/cx/IncentiveDownloadUtils;->addDownloadListener(Ljava/io/Closeable;)V

    .line 40
    invoke-static {p1}, Lccsansan/cx/IncentiveDownloadUtils;->addDownloadListener(Ljava/io/Closeable;)V

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    move-object v2, p1

    goto :goto_1

    .line 40
    :catch_0
    move-exception v0

    move-object v2, p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v0, p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v0, p1

    move-object v3, v2

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v3, v2

    .line 41
    :goto_0
    :try_start_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 43
    invoke-static {v3}, Lccsansan/cx/IncentiveDownloadUtils;->addDownloadListener(Ljava/io/Closeable;)V

    .line 44
    invoke-static {v2}, Lccsansan/cx/IncentiveDownloadUtils;->addDownloadListener(Ljava/io/Closeable;)V

    return-object p1

    :catchall_3
    move-exception v0

    .line 45
    :goto_1
    invoke-static {v3}, Lccsansan/cx/IncentiveDownloadUtils;->addDownloadListener(Ljava/io/Closeable;)V

    .line 46
    invoke-static {v2}, Lccsansan/cx/IncentiveDownloadUtils;->addDownloadListener(Ljava/io/Closeable;)V

    .line 47
    throw v0

    .line 48
    :cond_2
    :goto_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener$getDownloadingList;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener$getDownloadingList;->getDownloadingList()V

    :cond_0
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;->addDownloadListener(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 7

    .line 1
    iput-object p0, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;->unifiedDownload:Lccsanandroid/os/AsyncTask;

    .line 2
    new-instance v6, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener$IncentiveDownloadUtils;

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0xea60

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener$IncentiveDownloadUtils;-><init>(Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;JJ)V

    .line 13
    invoke-virtual {v6}, Lccsanandroid/os/CountDownTimer;->start()Lccsanandroid/os/CountDownTimer;

    return-void
.end method
