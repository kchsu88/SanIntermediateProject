.class public Lccsansan/co/performAction;
.super Lccsanandroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/co/performAction$IncentiveDownloadUtils;,
        Lccsansan/co/performAction$addDownloadListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lccsansan/co/resolveUrl;",
        ">;"
    }
.end annotation


# static fields
.field private static final unifiedDownload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final IncentiveDownloadUtils:I

.field private final addDownloadListener:Lccsanandroid/content/Context;

.field private getDownloadedRecordByUrl:I

.field private final getDownloadingList:D

.field private getDownloadingRecordByUrl:Lccsanandroid/os/AsyncTask;

.field private final removeDownloadListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsansan/co/performAction$addDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "video/mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "video/3gpp"

    aput-object v2, v0, v1

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccsansan/co/performAction;->unifiedDownload:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lccsansan/co/performAction$addDownloadListener;DILccsanandroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsanandroid/os/AsyncTask;-><init>()V

    .line 3
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 4
    invoke-static {p5}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsansan/co/performAction;->removeDownloadListener:Ljava/lang/ref/WeakReference;

    .line 7
    iput-wide p2, p0, Lccsansan/co/performAction;->getDownloadingList:D

    .line 8
    iput p4, p0, Lccsansan/co/performAction;->IncentiveDownloadUtils:I

    .line 9
    invoke-virtual {p5}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsansan/co/performAction;->addDownloadListener:Lccsanandroid/content/Context;

    return-void
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 79
    iget v0, p0, Lccsansan/co/performAction;->getDownloadedRecordByUrl:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_8

    .line 84
    :try_start_0
    invoke-static {p1}, Lccsansan/ct/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 85
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 86
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    .line 89
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    :try_start_2
    invoke-static {v0}, Lccsansan/cx/IncentiveDownloadUtils;->unifiedDownload(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    invoke-static {v0}, Lccsansan/cx/IncentiveDownloadUtils;->addDownloadListener(Ljava/io/Closeable;)V

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    :cond_1
    const/16 v2, 0x12d

    if-eq v0, v2, :cond_4

    const/16 v2, 0x12e

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 106
    :cond_2
    invoke-static {v1}, Lccsansan/cx/IncentiveDownloadUtils;->addDownloadListener(Ljava/io/Closeable;)V

    if-eqz p1, :cond_3

    .line 108
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    :try_start_3
    const-string v0, "Location"

    .line 109
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 111
    iget v2, p0, Lccsansan/co/performAction;->getDownloadedRecordByUrl:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lccsansan/co/performAction;->getDownloadedRecordByUrl:I

    .line 112
    invoke-direct {p0, v0}, Lccsansan/co/performAction;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    invoke-static {v1}, Lccsansan/cx/IncentiveDownloadUtils;->addDownloadListener(Ljava/io/Closeable;)V

    if-eqz p1, :cond_5

    .line 121
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-object v0

    .line 122
    :cond_6
    invoke-static {v1}, Lccsansan/cx/IncentiveDownloadUtils;->addDownloadListener(Ljava/io/Closeable;)V

    if-eqz p1, :cond_8

    .line 124
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v0, p1

    move-object p1, v1

    .line 125
    :goto_1
    invoke-static {v1}, Lccsansan/cx/IncentiveDownloadUtils;->addDownloadListener(Ljava/io/Closeable;)V

    if-eqz p1, :cond_7

    .line 127
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 129
    :cond_7
    throw v0

    :cond_8
    :goto_2
    return-object v1
.end method

.method private IncentiveDownloadUtils(Lccsansan/co/IncentiveSDK;Ljava/util/List;)Lccsansan/co/resolveUrl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/co/IncentiveSDK;",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;)",
            "Lccsansan/co/resolveUrl;"
        }
    .end annotation

    .line 142
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 143
    invoke-static {p2}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p1}, Lccsansan/co/getDownloadedList;->addDownloadListener()Ljava/util/List;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/co/getPackageNameByRecord;

    .line 149
    invoke-virtual {v1}, Lccsansan/co/getPackageNameByRecord;->resume()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsansan/co/performAction;->addDownloadListener(Ljava/util/List;)Lccsanandroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 152
    new-instance v0, Lccsansan/co/resolveUrl;

    invoke-direct {v0}, Lccsansan/co/resolveUrl;-><init>()V

    .line 153
    invoke-virtual {p1}, Lccsansan/co/getDownloadedList;->removeDownloadListener()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lccsansan/co/resolveUrl;->removeDownloadListener(Ljava/util/List;)V

    .line 154
    invoke-virtual {p1}, Lccsansan/co/getDownloadedList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lccsansan/co/resolveUrl;->addDownloadListener(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, v1, v0}, Lccsansan/co/performAction;->unifiedDownload(Lccsansan/co/getPackageNameByRecord;Lccsansan/co/resolveUrl;)V

    .line 160
    invoke-virtual {v1}, Lccsansan/co/getPackageNameByRecord;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lccsansan/co/resolveUrl;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1}, Lccsansan/co/getPackageNameByRecord;->resume()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lccsansan/co/resolveUrl;->removeDownloadListener(Ljava/util/ArrayList;)V

    .line 163
    invoke-static {v0}, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/co/resolveUrl;)Lccsanandroid/os/Bundle;

    move-result-object v3

    .line 164
    const-string v4, "best_url"

    invoke-virtual {v3, v4}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "best_height"

    const-string v7, "best_width"

    if-eqz v5, :cond_1

    invoke-virtual {v3, v7}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v3, v6}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 165
    invoke-virtual {v3, v4}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsansan/co/resolveUrl;->removeDownloadListener(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v3, v7}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsansan/co/resolveUrl;->unifiedDownload(I)V

    .line 167
    invoke-virtual {v3, v6}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsansan/co/resolveUrl;->addDownloadListener(I)V

    goto :goto_0

    :cond_1
    nop

    .line 169
    invoke-virtual {v2, v4}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lccsansan/co/resolveUrl;->removeDownloadListener(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v2, v7}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lccsansan/co/resolveUrl;->unifiedDownload(I)V

    .line 171
    invoke-virtual {v2, v6}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsansan/co/resolveUrl;->addDownloadListener(I)V

    .line 174
    :goto_0
    invoke-virtual {v1}, Lccsansan/co/getPackageNameByRecord;->getDownloadedCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/co/resolveUrl;->getDownloadingList(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Lccsansan/co/getDownloadedList;->unifiedDownload()Ljava/util/List;

    move-result-object v1

    .line 178
    sget-object v2, Lccsansan/co/performAction$IncentiveDownloadUtils;->LANDSCAPE:Lccsansan/co/performAction$IncentiveDownloadUtils;

    .line 179
    invoke-virtual {p0, v1, v2}, Lccsansan/co/performAction;->removeDownloadListener(Ljava/util/List;Lccsansan/co/performAction$IncentiveDownloadUtils;)Lccsansan/co/getDownloadedRecordByUrl;

    move-result-object v2

    sget-object v3, Lccsansan/co/performAction$IncentiveDownloadUtils;->PORTRAIT:Lccsansan/co/performAction$IncentiveDownloadUtils;

    .line 181
    invoke-virtual {p0, v1, v3}, Lccsansan/co/performAction;->removeDownloadListener(Ljava/util/List;Lccsansan/co/performAction$IncentiveDownloadUtils;)Lccsansan/co/getDownloadedRecordByUrl;

    move-result-object v3

    .line 182
    invoke-virtual {v0, v2, v3}, Lccsansan/co/resolveUrl;->addDownloadListener(Lccsansan/co/getDownloadedRecordByUrl;Lccsansan/co/getDownloadedRecordByUrl;)V

    .line 188
    invoke-virtual {p0, v1}, Lccsansan/co/performAction;->IncentiveDownloadUtils(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Lccsansan/co/resolveUrl;->unifiedDownload(Ljava/util/Map;)V

    .line 191
    invoke-virtual {p1}, Lccsansan/co/getDownloadedList;->getDownloadingList()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 192
    invoke-virtual {v0, p2}, Lccsansan/co/resolveUrl;->deleteDownList(Ljava/util/List;)V

    .line 193
    invoke-direct {p0, p1, v0}, Lccsansan/co/performAction;->removeDownloadListener(Lccsansan/co/getDownloadedList;Lccsansan/co/resolveUrl;)V

    .line 194
    invoke-direct {p0, p1, v0}, Lccsansan/co/performAction;->addDownloadListener(Lccsansan/co/getDownloadedList;Lccsansan/co/resolveUrl;)V

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private IncentiveDownloadUtils(Lccsansan/co/performActionWhenOffline;Lccsansan/co/resolveUrl;)V
    .locals 1

    .line 242
    const-string v0, "xmlManager cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    const-string v0, "vastVideoConfig cannot be null"

    invoke-static {p2, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1}, Lccsansan/co/performActionWhenOffline;->unifiedDownload()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/co/resolveUrl;->removeDownloadListener(Ljava/util/List;)V

    .line 247
    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->trackReportShow()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p1}, Lccsansan/co/performActionWhenOffline;->addDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/co/resolveUrl;->getDownloadedList(Ljava/lang/String;)V

    .line 250
    :cond_0
    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 251
    invoke-virtual {p1}, Lccsansan/co/performActionWhenOffline;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/co/resolveUrl;->getDownloadedRecordByUrl(Ljava/lang/String;)V

    .line 253
    :cond_1
    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->IncentiveSDK$1()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 254
    invoke-virtual {p1}, Lccsansan/co/performActionWhenOffline;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lccsansan/co/resolveUrl;->getDownloadingRecordByUrl(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private addDownloadListener(Ljava/lang/String;)D
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v0, -0x1

    .line 419
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x63306f58

    if-eq v1, v2, :cond_2

    const v2, 0x4f62635d

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "video/mp4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "video/3gpp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_4
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    return-wide v0
.end method

.method private addDownloadListener(Lccsansan/co/getDownloadedList;Lccsansan/co/resolveUrl;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lccsansan/co/getDownloadedList;->IncentiveDownloadUtils()Lccsansan/co/resume;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lccsansan/co/resume;->removeDownloadListener()Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/co/getDownloadedCount;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lccsansan/co/getDownloadedCount;->addDownloadListener()Ljava/util/Set;

    move-result-object v1

    .line 8
    invoke-virtual {p2, v1}, Lccsansan/co/resolveUrl;->IncentiveDownloadUtils(Ljava/util/Set;)V

    .line 10
    invoke-virtual {v0}, Lccsansan/co/getDownloadedCount;->getDownloadingList()Ljava/util/Set;

    move-result-object v0

    .line 11
    invoke-virtual {p2, v0}, Lccsansan/co/resolveUrl;->getDownloadingList(Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addDownloadListener(Ljava/util/List;Lccsansan/co/performActionWhenOffline;Lccsanandroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/co/deleteDownItem;",
            ">;",
            "Lccsansan/co/performActionWhenOffline;",
            "Lccsanandroid/content/Context;",
            ")Z"
        }
    .end annotation

    .line 255
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lccsansan/co/performActionWhenOffline;->removeDownloadListener()Lccsansan/co/shouldTryHandlingAction;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic getDownloadingList(Lccsansan/co/performAction;)Lccsanandroid/os/AsyncTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/co/performAction;->getDownloadingRecordByUrl:Lccsanandroid/os/AsyncTask;

    return-object p0
.end method

.method private getDownloadingList(Lccsansan/co/getActionType;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/co/getActionType;",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 207
    invoke-virtual {p1}, Lccsansan/co/getActionType;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 214
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lccsansan/co/performAction;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 216
    const-string v0, "Ad.VastXmlManagerAggregator"

    const-string v1, "Failed to follow VAST redirect"

    invoke-static {v0, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p2
.end method

.method static getDownloadingList(Ljava/lang/String;)Z
    .locals 2

    .line 48
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 52
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception p0

    return v1
.end method

.method private removeDownloadListener(IILjava/lang/Integer;Ljava/lang/String;)D
    .locals 4

    .line 404
    invoke-direct {p0, p1, p2}, Lccsansan/co/performAction;->unifiedDownload(II)D

    move-result-wide p1

    .line 405
    invoke-direct {p0, p3}, Lccsansan/co/performAction;->removeDownloadListener(Ljava/lang/Integer;)D

    move-result-wide v0

    .line 406
    invoke-direct {p0, p4}, Lccsansan/co/performAction;->addDownloadListener(Ljava/lang/String;)D

    move-result-wide p3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p1, v2

    add-double/2addr p1, v0

    div-double/2addr v2, p1

    mul-double p3, p3, v2

    return-wide p3
.end method

.method private removeDownloadListener(Ljava/lang/Integer;)D
    .locals 5

    if-eqz p1, :cond_1

    .line 407
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    const/16 v0, 0x5dc

    const/16 v1, 0x2bc

    if-gt v1, p1, :cond_2

    if-gt p1, v0, :cond_2

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_2
    rsub-int v1, p1, 0x2bc

    .line 412
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x442f0000    # 700.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    sub-int/2addr v0, p1

    .line 414
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x44bb8000    # 1500.0f

    div-float/2addr p1, v0

    float-to-double v3, p1

    .line 416
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private removeDownloadListener(Lccsansan/co/getDownloadedList;Lccsansan/co/resolveUrl;)V
    .locals 0

    .line 195
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 196
    invoke-static {p2}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->resolveUrl()Lccsansan/co/addDownloadListener;

    move-result-object p2

    if-eqz p2, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-virtual {p1}, Lccsansan/co/getDownloadedList;->IncentiveDownloadUtils()Lccsansan/co/resume;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 206
    invoke-virtual {p1}, Lccsansan/co/resume;->removeDownloadListener()Ljava/util/List;

    :cond_1
    return-void
.end method

.method private unifiedDownload(II)D
    .locals 4

    int-to-double v0, p1

    int-to-double v2, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 417
    iget-wide v2, p0, Lccsansan/co/performAction;->getDownloadingList:D

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 418
    iget p2, p0, Lccsansan/co/performAction;->IncentiveDownloadUtils:I

    sub-int p1, p2, p1

    div-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, p1

    return-wide v0
.end method

.method private unifiedDownload(Lccsansan/co/getPackageNameByRecord;Lccsansan/co/resolveUrl;)V
    .locals 1

    .line 217
    const-string v0, "linearXmlManager cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    const-string v0, "vastVideoConfig cannot be null"

    invoke-static {p2, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lccsansan/co/getPackageNameByRecord;->unifiedDownload()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/co/resolveUrl;->getDownloadingList(Ljava/util/List;)V

    .line 222
    invoke-virtual {p1}, Lccsansan/co/getPackageNameByRecord;->getDownloadingList()Ljava/util/List;

    move-result-object v0

    .line 223
    invoke-virtual {p2, v0}, Lccsansan/co/resolveUrl;->IncentiveDownloadUtils(Ljava/util/List;)V

    .line 225
    invoke-virtual {p1}, Lccsansan/co/getPackageNameByRecord;->IncentiveDownloadUtils()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/co/resolveUrl;->addDownloadListener(Ljava/util/List;)V

    .line 226
    invoke-virtual {p1}, Lccsansan/co/getPackageNameByRecord;->removeDownloadListener()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/co/resolveUrl;->getDownloadStatusByUrl(Ljava/util/List;)V

    .line 227
    invoke-virtual {p1}, Lccsansan/co/getPackageNameByRecord;->addDownloadListener()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/co/resolveUrl;->unifiedDownload(Ljava/util/List;)V

    .line 228
    invoke-virtual {p1}, Lccsansan/co/getPackageNameByRecord;->getDownloadingRecordByUrl()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/co/resolveUrl;->getDownloadingRecordByUrl(Ljava/util/List;)V

    .line 229
    invoke-virtual {p1}, Lccsansan/co/getPackageNameByRecord;->getDownloadStatusByUrl()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/co/resolveUrl;->getDownloadedRecordByUrl(Ljava/util/List;)V

    .line 230
    invoke-virtual {p1}, Lccsansan/co/getPackageNameByRecord;->pause()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/co/resolveUrl;->deleteDownItem(Ljava/util/List;)V

    .line 231
    invoke-virtual {p1}, Lccsansan/co/getPackageNameByRecord;->getDownloadedList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/co/resolveUrl;->getDownloadedList(Ljava/util/List;)V

    .line 232
    invoke-virtual {p1}, Lccsansan/co/getPackageNameByRecord;->deleteDownItem()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/co/resolveUrl;->getDownloadedCount(Ljava/util/List;)V

    .line 235
    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->ActionTypeDetailPage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p1}, Lccsansan/co/getPackageNameByRecord;->getDownloadingCount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/co/resolveUrl;->getDownloadStatusByUrl(Ljava/lang/String;)V

    .line 240
    :cond_0
    invoke-virtual {p2}, Lccsansan/co/resolveUrl;->trackReportClick()Lccsansan/co/trackReportShow;

    move-result-object v0

    if-nez v0, :cond_1

    .line 241
    invoke-virtual {p1}, Lccsansan/co/getPackageNameByRecord;->deleteDownList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsansan/co/performAction;->getDownloadingList(Ljava/util/List;)Lccsansan/co/trackReportShow;

    move-result-object p1

    invoke-virtual {p2, p1}, Lccsansan/co/resolveUrl;->IncentiveDownloadUtils(Lccsansan/co/trackReportShow;)V

    :cond_1
    return-void
.end method


# virtual methods
.method IncentiveDownloadUtils(Ljava/util/List;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/co/pause;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsansan/co/getDownloadedRecordByUrl;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "managers cannot be null"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/co/pause;

    .line 7
    invoke-virtual {v2}, Lccsansan/co/pause;->getDownloadingList()Ljava/lang/Integer;

    move-result-object v3

    .line 8
    invoke-virtual {v2}, Lccsansan/co/pause;->IncentiveDownloadUtils()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v2}, Lccsansan/co/pause;->unifiedDownload()Ljava/lang/String;

    move-result-object v5

    .line 14
    const-string v6, "adsBy"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0xa

    const/16 v8, 0x32

    if-eqz v6, :cond_2

    .line 16
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v9, 0x19

    if-lt v6, v9, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v9, 0x4b

    if-gt v6, v9, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, v7, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v8, :cond_3

    goto :goto_0

    :cond_2
    nop

    .line 19
    const-string v6, "socialActions"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 21
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, v8, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v9, 0x96

    if-gt v6, v9, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, v7, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v8, :cond_3

    goto :goto_0

    .line 30
    :cond_3
    invoke-virtual {v2}, Lccsansan/co/pause;->removeDownloadListener()Lccsansan/co/IncentiveSDK$1;

    move-result-object v6

    sget-object v7, Lccsansan/co/ActionTypeDetailPage$unifiedDownload;->HTML_RESOURCE:Lccsansan/co/ActionTypeDetailPage$unifiedDownload;

    .line 31
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 32
    invoke-static {v6, v7, v8, v9}, Lccsansan/co/ActionTypeDetailPage;->removeDownloadListener(Lccsansan/co/IncentiveSDK$1;Lccsansan/co/ActionTypeDetailPage$unifiedDownload;II)Lccsansan/co/ActionTypeDetailPage;

    move-result-object v13

    if-nez v13, :cond_4

    goto :goto_0

    .line 39
    :cond_4
    new-instance v6, Lccsansan/co/getDownloadedRecordByUrl;

    .line 41
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 42
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 44
    invoke-virtual {v2}, Lccsansan/co/pause;->addDownloadListener()Ljava/lang/String;

    move-result-object v14

    .line 45
    invoke-virtual {v2}, Lccsansan/co/pause;->getDownloadingRecordByUrl()Ljava/util/List;

    move-result-object v15

    .line 46
    invoke-virtual {v2}, Lccsansan/co/pause;->getDownloadStatusByUrl()Ljava/util/List;

    move-result-object v16

    move-object v10, v6

    invoke-direct/range {v10 .. v16}, Lccsansan/co/getDownloadedRecordByUrl;-><init>(IILccsansan/co/ActionTypeDetailPage;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 47
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method addDownloadListener(Ljava/util/List;)Lccsanandroid/os/Bundle;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/co/execute;",
            ">;)",
            "Lccsanandroid/os/Bundle;"
        }
    .end annotation

    .line 12
    const-string v0, "managers cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move-object v5, v1

    move-wide v3, v2

    const/4 v2, -0x1

    .line 21
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsansan/co/execute;

    .line 24
    invoke-virtual {v6}, Lccsansan/co/execute;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v7

    .line 25
    invoke-virtual {v6}, Lccsansan/co/execute;->getDownloadingList()Ljava/lang/String;

    move-result-object v8

    .line 26
    sget-object v9, Lccsansan/co/performAction;->unifiedDownload:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-nez v8, :cond_1

    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {v6}, Lccsansan/co/execute;->addDownloadListener()Ljava/lang/Integer;

    move-result-object v9

    .line 32
    invoke-virtual {v6}, Lccsansan/co/execute;->unifiedDownload()Ljava/lang/Integer;

    move-result-object v10

    .line 33
    invoke-virtual {v6}, Lccsansan/co/execute;->removeDownloadListener()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v9, :cond_0

    .line 34
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_0

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gtz v11, :cond_2

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 39
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 40
    invoke-direct {p0, v11, v12, v6, v7}, Lccsansan/co/performAction;->removeDownloadListener(IILjava/lang/Integer;Ljava/lang/String;)D

    move-result-wide v6

    cmpl-double v11, v6, v3

    if-lez v11, :cond_3

    .line 47
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 48
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-wide v3, v6

    move-object v5, v8

    goto :goto_0

    :cond_3
    nop

    goto :goto_0

    .line 49
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    .line 73
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 74
    const-string p1, "best_url"

    invoke-virtual {v1, p1, v5}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string p1, "best_width"

    invoke-virtual {v1, p1, v0}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string p1, "best_height"

    invoke-virtual {v1, p1, v2}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    return-object v1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lccsansan/co/performAction;->unifiedDownload([Ljava/lang/String;)Lccsansan/co/resolveUrl;

    move-result-object p1

    return-object p1
.end method

.method getDownloadingList(Ljava/util/List;)Lccsansan/co/trackReportShow;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/co/getThumbPathByRecord;",
            ">;)",
            "Lccsansan/co/trackReportShow;"
        }
    .end annotation

    .line 368
    move-object/from16 v0, p1

    const-string v1, "managers cannot be null"

    invoke-static {v0, v1}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 372
    invoke-static {}, Lccsansan/co/ActionTypeDetailPage$unifiedDownload;->values()[Lccsansan/co/ActionTypeDetailPage$unifiedDownload;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 373
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 374
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 375
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsansan/co/getThumbPathByRecord;

    .line 377
    invoke-virtual {v6}, Lccsansan/co/getThumbPathByRecord;->getDownloadingList()Ljava/lang/Integer;

    move-result-object v7

    .line 378
    invoke-virtual {v6}, Lccsansan/co/getThumbPathByRecord;->unifiedDownload()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v7, :cond_0

    .line 381
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x12c

    if-gt v9, v10, :cond_0

    if-eqz v8, :cond_0

    .line 382
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v10, :cond_1

    goto :goto_1

    .line 387
    :cond_1
    invoke-virtual {v6}, Lccsansan/co/getThumbPathByRecord;->removeDownloadListener()Lccsansan/co/IncentiveSDK$1;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 388
    invoke-static {v9, v4, v7, v8}, Lccsansan/co/ActionTypeDetailPage;->removeDownloadListener(Lccsansan/co/IncentiveSDK$1;Lccsansan/co/ActionTypeDetailPage$unifiedDownload;II)Lccsansan/co/ActionTypeDetailPage;

    move-result-object v15

    if-nez v15, :cond_2

    goto :goto_1

    .line 395
    :cond_2
    new-instance v0, Lccsansan/co/trackReportShow;

    .line 396
    invoke-virtual {v6}, Lccsansan/co/getThumbPathByRecord;->getDownloadingList()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 397
    invoke-virtual {v6}, Lccsansan/co/getThumbPathByRecord;->unifiedDownload()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 398
    invoke-virtual {v6}, Lccsansan/co/getThumbPathByRecord;->IncentiveDownloadUtils()Ljava/lang/Integer;

    move-result-object v13

    .line 399
    invoke-virtual {v6}, Lccsansan/co/getThumbPathByRecord;->addDownloadListener()Ljava/lang/Integer;

    move-result-object v14

    .line 401
    invoke-virtual {v6}, Lccsansan/co/getThumbPathByRecord;->getDownloadingRecordByUrl()Ljava/util/List;

    move-result-object v16

    .line 402
    invoke-virtual {v6}, Lccsansan/co/getThumbPathByRecord;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v17

    .line 403
    invoke-virtual {v6}, Lccsansan/co/getThumbPathByRecord;->getDownloadedList()Ljava/util/List;

    move-result-object v18

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lccsansan/co/trackReportShow;-><init>(IILjava/lang/Integer;Ljava/lang/Integer;Lccsansan/co/ActionTypeDetailPage;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/co/performAction;->removeDownloadListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/co/performAction$addDownloadListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Lccsansan/co/performAction$addDownloadListener;->unifiedDownload(Lccsansan/co/resolveUrl;)V

    :cond_0
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lccsansan/co/resolveUrl;

    invoke-virtual {p0, p1}, Lccsansan/co/performAction;->removeDownloadListener(Lccsansan/co/resolveUrl;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 7

    .line 1
    iput-object p0, p0, Lccsansan/co/performAction;->getDownloadingRecordByUrl:Lccsanandroid/os/AsyncTask;

    .line 2
    new-instance v6, Lccsansan/co/performAction$getDownloadingList;

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0xea60

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lccsansan/co/performAction$getDownloadingList;-><init>(Lccsansan/co/performAction;JJ)V

    .line 12
    invoke-virtual {v6}, Lccsanandroid/os/CountDownTimer;->start()Lccsanandroid/os/CountDownTimer;

    return-void
.end method

.method removeDownloadListener(IILccsansan/co/ActionTypeDetailPage$unifiedDownload;Lccsansan/co/performAction$IncentiveDownloadUtils;)Lccsanandroid/graphics/Point;
    .locals 5

    .line 318
    new-instance v0, Lccsanandroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Lccsanandroid/graphics/Point;-><init>(II)V

    .line 319
    iget-object v1, p0, Lccsansan/co/performAction;->addDownloadListener:Lccsanandroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/WindowManager;

    .line 320
    invoke-interface {v1}, Lccsanandroid/view/WindowManager;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Lccsanandroid/view/Display;->getWidth()I

    move-result v2

    .line 322
    invoke-virtual {v1}, Lccsanandroid/view/Display;->getHeight()I

    move-result v1

    int-to-float p1, p1

    .line 324
    iget-object v3, p0, Lccsansan/co/performAction;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {p1, v3}, Lccsansan/cx/removeDownloadListener;->unifiedDownload(FLccsanandroid/content/Context;)I

    move-result p1

    int-to-float p2, p2

    .line 325
    iget-object v3, p0, Lccsansan/co/performAction;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {p2, v3}, Lccsansan/cx/removeDownloadListener;->unifiedDownload(FLccsanandroid/content/Context;)I

    move-result p2

    .line 328
    sget-object v3, Lccsansan/co/performAction$IncentiveDownloadUtils;->LANDSCAPE:Lccsansan/co/performAction$IncentiveDownloadUtils;

    if-ne v3, p4, :cond_0

    .line 329
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 330
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 332
    :cond_0
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 333
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    add-int/lit8 v2, p4, -0x10

    if-gt p1, v2, :cond_1

    add-int/lit8 v2, v1, -0x10

    if-gt p2, v2, :cond_1

    return-object v0

    .line 342
    :cond_1
    new-instance v2, Lccsanandroid/graphics/Point;

    invoke-direct {v2}, Lccsanandroid/graphics/Point;-><init>()V

    .line 343
    sget-object v3, Lccsansan/co/ActionTypeDetailPage$unifiedDownload;->HTML_RESOURCE:Lccsansan/co/ActionTypeDetailPage$unifiedDownload;

    if-ne v3, p3, :cond_2

    .line 344
    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v2, Lccsanandroid/graphics/Point;->x:I

    .line 345
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v2, Lccsanandroid/graphics/Point;->y:I

    goto :goto_1

    :cond_2
    int-to-float p1, p1

    int-to-float p3, p4

    div-float p3, p1, p3

    int-to-float p2, p2

    int-to-float v3, v1

    div-float v3, p2, v3

    cmpl-float v4, p3, v3

    if-ltz v4, :cond_3

    .line 351
    iput p4, v2, Lccsanandroid/graphics/Point;->x:I

    div-float/2addr p2, p3

    float-to-int p1, p2

    .line 352
    iput p1, v2, Lccsanandroid/graphics/Point;->y:I

    goto :goto_1

    :cond_3
    div-float/2addr p1, v3

    float-to-int p1, p1

    .line 354
    iput p1, v2, Lccsanandroid/graphics/Point;->x:I

    .line 355
    iput v1, v2, Lccsanandroid/graphics/Point;->y:I

    .line 359
    :goto_1
    iget p1, v2, Lccsanandroid/graphics/Point;->x:I

    add-int/lit8 p1, p1, -0x10

    iput p1, v2, Lccsanandroid/graphics/Point;->x:I

    .line 360
    iget p2, v2, Lccsanandroid/graphics/Point;->y:I

    add-int/lit8 p2, p2, -0x10

    iput p2, v2, Lccsanandroid/graphics/Point;->y:I

    if-ltz p1, :cond_5

    if-gez p2, :cond_4

    goto :goto_2

    :cond_4
    int-to-float p1, p1

    .line 366
    iget-object p2, p0, Lccsansan/co/performAction;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {p1, p2}, Lccsansan/cx/removeDownloadListener;->IncentiveDownloadUtils(FLccsanandroid/content/Context;)I

    move-result p1

    iput p1, v2, Lccsanandroid/graphics/Point;->x:I

    .line 367
    iget p1, v2, Lccsanandroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget-object p2, p0, Lccsansan/co/performAction;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {p1, p2}, Lccsansan/cx/removeDownloadListener;->IncentiveDownloadUtils(FLccsanandroid/content/Context;)I

    move-result p1

    iput p1, v2, Lccsanandroid/graphics/Point;->y:I

    return-object v2

    :cond_5
    :goto_2
    return-object v0
.end method

.method removeDownloadListener(Ljava/util/List;Lccsansan/co/performAction$IncentiveDownloadUtils;)Lccsansan/co/getDownloadedRecordByUrl;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/co/pause;",
            ">;",
            "Lccsansan/co/performAction$IncentiveDownloadUtils;",
            ")",
            "Lccsansan/co/getDownloadedRecordByUrl;"
        }
    .end annotation

    .line 256
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "managers cannot be null"

    invoke-static {v1, v3}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    const-string v3, "orientation cannot be null"

    invoke-static {v2, v3}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 267
    invoke-static {}, Lccsansan/co/ActionTypeDetailPage$unifiedDownload;->values()[Lccsansan/co/ActionTypeDetailPage$unifiedDownload;

    move-result-object v1

    array-length v4, v1

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v8, v4, :cond_a

    aget-object v12, v1, v8

    .line 269
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 270
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 271
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lccsansan/co/pause;

    .line 273
    invoke-virtual {v14}, Lccsansan/co/pause;->getDownloadingList()Ljava/lang/Integer;

    move-result-object v15

    .line 274
    invoke-virtual {v14}, Lccsansan/co/pause;->IncentiveDownloadUtils()Ljava/lang/Integer;

    move-result-object v16

    if-eqz v15, :cond_7

    .line 275
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v17, v1

    const/16 v1, 0x12c

    if-lt v5, v1, :cond_6

    if-eqz v16, :cond_6

    .line 276
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v5, 0xfa

    if-ge v1, v5, :cond_0

    move-object/from16 v18, v3

    move/from16 v19, v4

    goto/16 :goto_3

    .line 280
    :cond_0
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v1, v5, v12, v2}, Lccsansan/co/performAction;->removeDownloadListener(IILccsansan/co/ActionTypeDetailPage$unifiedDownload;Lccsansan/co/performAction$IncentiveDownloadUtils;)Lccsanandroid/graphics/Point;

    move-result-object v1

    .line 282
    invoke-virtual {v14}, Lccsansan/co/pause;->removeDownloadListener()Lccsansan/co/IncentiveSDK$1;

    move-result-object v5

    move-object/from16 v18, v3

    iget v3, v1, Lccsanandroid/graphics/Point;->x:I

    move/from16 v19, v4

    iget v4, v1, Lccsanandroid/graphics/Point;->y:I

    .line 283
    invoke-static {v5, v12, v3, v4}, Lccsansan/co/ActionTypeDetailPage;->removeDownloadListener(Lccsansan/co/IncentiveSDK$1;Lccsansan/co/ActionTypeDetailPage$unifiedDownload;II)Lccsansan/co/ActionTypeDetailPage;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_3

    .line 292
    :cond_1
    sget-object v4, Lccsansan/co/performAction$IncentiveDownloadUtils;->LANDSCAPE:Lccsansan/co/performAction$IncentiveDownloadUtils;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    if-ne v4, v2, :cond_2

    iget-wide v4, v0, Lccsansan/co/performAction;->getDownloadingList:D

    cmpg-double v22, v4, v20

    if-ltz v22, :cond_3

    :cond_2
    sget-object v4, Lccsansan/co/performAction$IncentiveDownloadUtils;->PORTRAIT:Lccsansan/co/performAction$IncentiveDownloadUtils;

    if-ne v4, v2, :cond_4

    iget-wide v4, v0, Lccsansan/co/performAction;->getDownloadingList:D

    cmpl-double v22, v4, v20

    if-lez v22, :cond_4

    .line 294
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v15, 0x0

    invoke-direct {v0, v4, v5, v15, v15}, Lccsansan/co/performAction;->removeDownloadListener(IILjava/lang/Integer;Ljava/lang/String;)D

    move-result-wide v4

    goto :goto_2

    .line 292
    :cond_4
    const/4 v4, 0x0

    .line 296
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-direct {v0, v5, v15, v4, v4}, Lccsansan/co/performAction;->removeDownloadListener(IILjava/lang/Integer;Ljava/lang/String;)D

    move-result-wide v15

    move-wide v4, v15

    :goto_2
    cmpl-double v15, v4, v6

    if-lez v15, :cond_5

    move-object v11, v1

    move-object v10, v3

    move-wide v6, v4

    move-object v9, v14

    :cond_5
    move-object/from16 v1, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    goto/16 :goto_1

    .line 275
    :cond_6
    move-object/from16 v18, v3

    move/from16 v19, v4

    goto :goto_3

    .line 274
    :cond_7
    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move/from16 v19, v4

    .line 270
    :goto_3
    move-object/from16 v1, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    goto/16 :goto_1

    .line 296
    :cond_8
    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move/from16 v19, v4

    if-eqz v9, :cond_9

    move-object v4, v10

    goto :goto_4

    :cond_9
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    goto/16 :goto_0

    .line 267
    :cond_a
    move-object v4, v10

    .line 296
    :goto_4
    if-eqz v9, :cond_b

    .line 311
    new-instance v8, Lccsansan/co/getDownloadedRecordByUrl;

    iget v2, v11, Lccsanandroid/graphics/Point;->x:I

    iget v3, v11, Lccsanandroid/graphics/Point;->y:I

    .line 315
    invoke-virtual {v9}, Lccsansan/co/pause;->addDownloadListener()Ljava/lang/String;

    move-result-object v5

    .line 316
    invoke-virtual {v9}, Lccsansan/co/pause;->getDownloadingRecordByUrl()Ljava/util/List;

    move-result-object v6

    .line 317
    invoke-virtual {v9}, Lccsansan/co/pause;->getDownloadStatusByUrl()Ljava/util/List;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lccsansan/co/getDownloadedRecordByUrl;-><init>(IILccsansan/co/ActionTypeDetailPage;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method removeDownloadListener(Ljava/lang/String;Ljava/util/List;)Lccsansan/co/resolveUrl;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;)",
            "Lccsansan/co/resolveUrl;"
        }
    .end annotation

    .line 14
    const-string v0, "vastXml cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const-string v0, "errorTrackers cannot be null"

    invoke-static {p2, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lccsansan/co/performActionWhenOffline;

    invoke-direct {v0}, Lccsansan/co/performActionWhenOffline;-><init>()V

    .line 19
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Lccsansan/co/performActionWhenOffline;->unifiedDownload(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    invoke-virtual {v0}, Lccsansan/co/performActionWhenOffline;->getDownloadingList()Ljava/util/List;

    move-result-object p1

    .line 30
    iget-object v2, p0, Lccsansan/co/performAction;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-direct {p0, p1, v0, v2}, Lccsansan/co/performAction;->addDownloadListener(Ljava/util/List;Lccsansan/co/performActionWhenOffline;Lccsanandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 34
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/co/deleteDownItem;

    .line 35
    invoke-virtual {v2}, Lccsansan/co/deleteDownItem;->getDownloadingList()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsansan/co/performAction;->getDownloadingList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {v2}, Lccsansan/co/deleteDownItem;->IncentiveDownloadUtils()Lccsansan/co/IncentiveSDK;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 43
    invoke-direct {p0, v3, p2}, Lccsansan/co/performAction;->IncentiveDownloadUtils(Lccsansan/co/IncentiveSDK;Ljava/util/List;)Lccsansan/co/resolveUrl;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 47
    invoke-direct {p0, v0, v3}, Lccsansan/co/performAction;->IncentiveDownloadUtils(Lccsansan/co/performActionWhenOffline;Lccsansan/co/resolveUrl;)V

    return-object v3

    .line 54
    :cond_3
    invoke-virtual {v2}, Lccsansan/co/deleteDownItem;->addDownloadListener()Lccsansan/co/getActionType;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 57
    invoke-virtual {v2}, Lccsansan/co/getDownloadedList;->getDownloadingList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    invoke-direct {p0, v2, v3}, Lccsansan/co/performAction;->getDownloadingList(Lccsansan/co/getActionType;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 64
    :cond_4
    invoke-virtual {p0, v4, v3}, Lccsansan/co/performAction;->removeDownloadListener(Ljava/lang/String;Ljava/util/List;)Lccsansan/co/resolveUrl;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 78
    :cond_5
    invoke-virtual {v2}, Lccsansan/co/getDownloadedList;->removeDownloadListener()Ljava/util/List;

    move-result-object p1

    .line 79
    invoke-virtual {v3, p1}, Lccsansan/co/resolveUrl;->removeDownloadListener(Ljava/util/List;)V

    .line 82
    invoke-virtual {v2}, Lccsansan/co/getDownloadedList;->addDownloadListener()Ljava/util/List;

    move-result-object p1

    .line 83
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsansan/co/getPackageNameByRecord;

    .line 84
    invoke-direct {p0, p2, v3}, Lccsansan/co/performAction;->unifiedDownload(Lccsansan/co/getPackageNameByRecord;Lccsansan/co/resolveUrl;)V

    goto :goto_1

    .line 86
    :cond_6
    invoke-direct {p0, v2, v3}, Lccsansan/co/performAction;->removeDownloadListener(Lccsansan/co/getDownloadedList;Lccsansan/co/resolveUrl;)V

    .line 87
    invoke-direct {p0, v2, v3}, Lccsansan/co/performAction;->addDownloadListener(Lccsansan/co/getDownloadedList;Lccsansan/co/resolveUrl;)V

    .line 90
    invoke-virtual {v2}, Lccsansan/co/getDownloadedList;->unifiedDownload()Ljava/util/List;

    move-result-object p1

    .line 93
    invoke-virtual {v3}, Lccsansan/co/resolveUrl;->shouldTryHandlingAction()Z

    move-result p2

    if-nez p2, :cond_7

    .line 94
    sget-object p2, Lccsansan/co/performAction$IncentiveDownloadUtils;->LANDSCAPE:Lccsansan/co/performAction$IncentiveDownloadUtils;

    .line 95
    invoke-virtual {p0, p1, p2}, Lccsansan/co/performAction;->removeDownloadListener(Ljava/util/List;Lccsansan/co/performAction$IncentiveDownloadUtils;)Lccsansan/co/getDownloadedRecordByUrl;

    move-result-object p2

    sget-object v1, Lccsansan/co/performAction$IncentiveDownloadUtils;->PORTRAIT:Lccsansan/co/performAction$IncentiveDownloadUtils;

    .line 97
    invoke-virtual {p0, p1, v1}, Lccsansan/co/performAction;->removeDownloadListener(Ljava/util/List;Lccsansan/co/performAction$IncentiveDownloadUtils;)Lccsansan/co/getDownloadedRecordByUrl;

    move-result-object v1

    .line 98
    invoke-virtual {v3, p2, v1}, Lccsansan/co/resolveUrl;->addDownloadListener(Lccsansan/co/getDownloadedRecordByUrl;Lccsansan/co/getDownloadedRecordByUrl;)V

    goto :goto_3

    :cond_7
    const/4 p2, 0x2

    .line 105
    invoke-virtual {v3, p2}, Lccsansan/co/resolveUrl;->removeDownloadListener(I)Lccsansan/co/getDownloadedRecordByUrl;

    move-result-object p2

    const/4 v1, 0x1

    .line 107
    invoke-virtual {v3, v1}, Lccsansan/co/resolveUrl;->removeDownloadListener(I)Lccsansan/co/getDownloadedRecordByUrl;

    move-result-object v1

    if-eqz p2, :cond_9

    if-eqz v1, :cond_9

    .line 110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsansan/co/pause;

    .line 111
    invoke-virtual {v4}, Lccsansan/co/pause;->deleteDownItem()Z

    move-result v5

    if-nez v5, :cond_8

    .line 113
    invoke-virtual {v4}, Lccsansan/co/pause;->getDownloadingRecordByUrl()Ljava/util/List;

    move-result-object v5

    .line 114
    invoke-virtual {p2, v5}, Lccsansan/co/getDownloadedRecordByUrl;->unifiedDownload(Ljava/util/List;)V

    .line 117
    invoke-virtual {v4}, Lccsansan/co/pause;->getDownloadStatusByUrl()Ljava/util/List;

    move-result-object v5

    .line 118
    invoke-virtual {p2, v5}, Lccsansan/co/getDownloadedRecordByUrl;->getDownloadingList(Ljava/util/List;)V

    .line 121
    invoke-virtual {v4}, Lccsansan/co/pause;->getDownloadingRecordByUrl()Ljava/util/List;

    move-result-object v5

    .line 122
    invoke-virtual {v1, v5}, Lccsansan/co/getDownloadedRecordByUrl;->unifiedDownload(Ljava/util/List;)V

    .line 125
    invoke-virtual {v4}, Lccsansan/co/pause;->getDownloadStatusByUrl()Ljava/util/List;

    move-result-object v4

    .line 126
    invoke-virtual {v1, v4}, Lccsansan/co/getDownloadedRecordByUrl;->getDownloadingList(Ljava/util/List;)V

    goto :goto_2

    .line 133
    :cond_9
    :goto_3
    invoke-virtual {v3}, Lccsansan/co/resolveUrl;->getPackageNameByRecord()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 135
    invoke-virtual {p0, p1}, Lccsansan/co/performAction;->IncentiveDownloadUtils(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 136
    invoke-virtual {v3, p1}, Lccsansan/co/resolveUrl;->unifiedDownload(Ljava/util/Map;)V

    .line 140
    :cond_a
    invoke-direct {p0, v0, v3}, Lccsansan/co/performAction;->IncentiveDownloadUtils(Lccsansan/co/performActionWhenOffline;Lccsansan/co/resolveUrl;)V

    return-object v3

    :cond_b
    return-object v1

    :catch_0
    move-exception p1

    .line 141
    const-string p2, "Ad.VastXmlManagerAggregator"

    const-string v0, "Failed to parse VAST XML"

    invoke-static {p2, v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method protected removeDownloadListener(Lccsansan/co/resolveUrl;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lccsansan/co/performAction;->removeDownloadListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/co/performAction$addDownloadListener;

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0, p1}, Lccsansan/co/performAction$addDownloadListener;->unifiedDownload(Lccsansan/co/resolveUrl;)V

    :cond_0
    return-void
.end method

.method protected varargs unifiedDownload([Ljava/lang/String;)Lccsansan/co/resolveUrl;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    array-length v1, p1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    aget-object p1, p1, v1

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v1}, Lccsansan/co/performAction;->removeDownloadListener(Ljava/lang/String;Ljava/util/List;)Lccsansan/co/resolveUrl;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 10
    const-string v1, "Ad.VastXmlManagerAggregator"

    const-string v2, "Unable to generate VastVideoConfig."

    invoke-static {v1, v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method
