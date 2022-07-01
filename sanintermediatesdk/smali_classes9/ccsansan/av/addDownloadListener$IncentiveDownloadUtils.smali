.class public final Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/av/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IncentiveDownloadUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/av/addDownloadListener$IncentiveDownloadUtils$getDownloadingList;
    }
.end annotation


# instance fields
.field private final IncentiveDownloadUtils:Lccsansan/av/addDownloadListener$addDownloadListener;

.field final synthetic getDownloadingList:Lccsansan/av/addDownloadListener;

.field private removeDownloadListener:Z

.field private final unifiedDownload:[Z


# direct methods
.method private constructor <init>(Lccsansan/av/addDownloadListener;Lccsansan/av/addDownloadListener$addDownloadListener;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/av/addDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/av/addDownloadListener$addDownloadListener;

    .line 4
    invoke-static {p2}, Lccsansan/av/addDownloadListener$addDownloadListener;->addDownloadListener(Lccsansan/av/addDownloadListener$addDownloadListener;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lccsansan/av/addDownloadListener;->getDownloadingList(Lccsansan/av/addDownloadListener;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:[Z

    return-void
.end method

.method synthetic constructor <init>(Lccsansan/av/addDownloadListener;Lccsansan/av/addDownloadListener$addDownloadListener;Lccsansan/av/addDownloadListener$unifiedDownload;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;-><init>(Lccsansan/av/addDownloadListener;Lccsansan/av/addDownloadListener$addDownloadListener;)V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;)Lccsansan/av/addDownloadListener$addDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/av/addDownloadListener$addDownloadListener;

    return-object p0
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Z

    return p1
.end method

.method static synthetic getDownloadingList(Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;)[Z
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:[Z

    return-object p0
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/av/addDownloadListener;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lccsansan/av/addDownloadListener;->removeDownloadListener(Lccsansan/av/addDownloadListener;Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;Z)V

    return-void
.end method

.method public addDownloadListener(I)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 3
    iget-object v0, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/av/addDownloadListener;

    invoke-static {v0}, Lccsansan/av/addDownloadListener;->getDownloadingList(Lccsansan/av/addDownloadListener;)I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 8
    iget-object v0, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/av/addDownloadListener;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/av/addDownloadListener$addDownloadListener;

    invoke-static {v1}, Lccsansan/av/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils(Lccsansan/av/addDownloadListener$addDownloadListener;)Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 12
    iget-object v1, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/av/addDownloadListener$addDownloadListener;

    invoke-static {v1}, Lccsansan/av/addDownloadListener$addDownloadListener;->addDownloadListener(Lccsansan/av/addDownloadListener$addDownloadListener;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13
    iget-object v1, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 15
    :cond_0
    iget-object v1, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/av/addDownloadListener$addDownloadListener;

    invoke-virtual {v1, p1}, Lccsansan/av/addDownloadListener$addDownloadListener;->addDownloadListener(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 21
    :try_start_2
    iget-object v1, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/av/addDownloadListener;

    invoke-static {v1}, Lccsansan/av/addDownloadListener;->getDownloadedList(Lccsansan/av/addDownloadListener;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    :goto_0
    :try_start_4
    new-instance p1, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils$getDownloadingList;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils$getDownloadingList;-><init>(Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;Ljava/io/OutputStream;Lccsansan/av/addDownloadListener$unifiedDownload;)V

    monitor-exit v0

    return-object p1

    :catch_1
    move-exception p1

    .line 30
    invoke-static {}, Lccsansan/av/addDownloadListener;->IncentiveDownloadUtils()Ljava/io/OutputStream;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 51
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to be greater than 0 and less than the maximum value count of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/av/addDownloadListener;

    .line 54
    invoke-static {p1}, Lccsansan/av/addDownloadListener;->getDownloadingList(Lccsansan/av/addDownloadListener;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unifiedDownload()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/av/addDownloadListener;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lccsansan/av/addDownloadListener;->removeDownloadListener(Lccsansan/av/addDownloadListener;Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;Z)V

    .line 4
    iget-object v0, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/av/addDownloadListener;

    iget-object v1, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/av/addDownloadListener$addDownloadListener;

    invoke-static {v1}, Lccsansan/av/addDownloadListener$addDownloadListener;->unifiedDownload(Lccsansan/av/addDownloadListener$addDownloadListener;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/av/addDownloadListener;->addDownloadListener(Ljava/lang/String;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/av/addDownloadListener;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lccsansan/av/addDownloadListener;->removeDownloadListener(Lccsansan/av/addDownloadListener;Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;Z)V

    :goto_0
    return-void
.end method
