.class Lccsansan/x/getDownloadingList$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/x/getDownloadingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncentiveDownloadUtils"
.end annotation


# static fields
.field private static getDownloadingList:Z = false

.field private static unifiedDownload:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getDownloadingList()V
    .locals 6

    .line 1
    sget-boolean v0, Lccsansan/x/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList:Z

    if-nez v0, :cond_0

    .line 2
    const/4 v0, 0x1

    sput-boolean v0, Lccsansan/x/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList:Z

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "get"

    const/4 v3, 0x2

    .line 5
    :try_start_1
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lccsansan/x/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/reflect/Method;

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public static unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 7
    sget-object v0, Lccsansan/x/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 9
    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    :cond_0
    :goto_0
    return-object p1
.end method
