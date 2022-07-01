.class public abstract Lccsansan/da/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;
    .locals 1

    .line 6
    instance-of v0, p0, Lccsansan/de/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lccsansan/de/IncentiveDownloadUtils;

    check-cast p0, Lccsansan/de/IncentiveDownloadUtils;

    invoke-direct {v0, p0, p1}, Lccsansan/de/IncentiveDownloadUtils;-><init>(Lccsansan/de/IncentiveDownloadUtils;Ljava/lang/String;)V

    return-object v0

    .line 8
    :cond_0
    instance-of v0, p0, Lccsansan/de/getDownloadingList;

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Lccsansan/de/getDownloadingList;

    check-cast p0, Lccsansan/de/getDownloadingList;

    invoke-direct {v0, p0, p1}, Lccsansan/de/getDownloadingList;-><init>(Lccsansan/de/getDownloadingList;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Z
    .locals 0

    .line 10
    :try_start_0
    invoke-static {p0, p1}, Lccsanandroidx/documentfile/provider/DocumentFile;->isDocumentUri(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;)Z
    .locals 1

    .line 13
    invoke-static {p0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 14
    invoke-static {p0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "content"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static addDownloadListener(Ljava/io/File;)Lccsansan/da/removeDownloadListener;
    .locals 1

    .line 1
    new-instance v0, Lccsansan/de/IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsansan/de/IncentiveDownloadUtils;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;
    .locals 2

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {p0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lccsansan/de/getDownloadingList;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lccsansan/de/getDownloadingList;-><init>(Lccsanandroid/net/Uri;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lccsansan/de/IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsansan/de/IncentiveDownloadUtils;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getDownloadingList(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;
    .locals 5

    .line 1
    invoke-static {p1}, Lccsansan/bw/setLoaderClassName;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lccsansan/bw/setLoaderClassName;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-static {p0, p1}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v3

    if-nez v3, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static unifiedDownload(Lccsanandroidx/documentfile/provider/DocumentFile;)Lccsansan/da/removeDownloadListener;
    .locals 1

    .line 2
    new-instance v0, Lccsansan/de/getDownloadingList;

    invoke-direct {v0, p0}, Lccsansan/de/getDownloadingList;-><init>(Lccsanandroidx/documentfile/provider/DocumentFile;)V

    return-object v0
.end method


# virtual methods
.method public abstract IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract IncentiveDownloadUtils()Z
.end method

.method public abstract IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;)Z
.end method

.method public abstract addDownloadListener()[Lccsansan/da/removeDownloadListener;
.end method

.method public abstract deleteDownItem()Ljava/lang/String;
.end method

.method public abstract deleteDownList()Z
.end method

.method public abstract getDownloadStatusByUrl()J
.end method

.method public abstract getDownloadedCount()Z
.end method

.method public abstract getDownloadedList()Lccsansan/da/removeDownloadListener;
.end method

.method public abstract getDownloadedRecordByUrl()J
.end method

.method public abstract getDownloadingCount()Ljava/io/File;
.end method

.method public abstract getDownloadingList()Z
.end method

.method public abstract getDownloadingRecordByUrl()Ljava/lang/String;
.end method

.method public abstract getPackageNameByRecord()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getThumbPathByRecord()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract pause()Z
.end method

.method public abstract removeDownloadListener([B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract removeDownloadListener()Z
.end method

.method public abstract resume()Z
.end method

.method public abstract trackReportShow()V
.end method

.method public abstract unifiedDownload(Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract unifiedDownload([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract unifiedDownload()[Ljava/lang/String;
.end method
