.class public Lccsansan/d/unifiedDownload;
.super Lccsanandroid/content/res/Resources;
.source ""


# static fields
.field private static addDownloadListener:Lccsansan/d/unifiedDownload;

.field private static final getDownloadingList:Ljava/lang/reflect/Field;


# instance fields
.field private IncentiveDownloadUtils:Lccsansan/d/getDownloadingList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    :try_start_0
    const-class v0, Lccsanandroid/content/res/Resources;

    const-string v1, "mResourcesImpl"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 39
    sput-object v0, Lccsansan/d/unifiedDownload;->getDownloadingList:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Lccsanandroid/content/res/Resources;)V
    .locals 1

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsanandroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    .line 88
    invoke-static {p1}, Lccsansan/d/unifiedDownload;->unifiedDownload(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/ResourcesImpl;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lccsansan/d/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/res/ResourcesImpl;Lccsanandroid/content/res/Resources;)V

    .line 89
    return-void
.end method

.method static declared-synchronized getDownloadingList(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;
    .locals 3

    const-class v0, Lccsansan/d/unifiedDownload;

    monitor-enter v0

    .line 53
    :try_start_0
    instance-of v1, p0, Lccsansan/d/unifiedDownload;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 55
    monitor-exit v0

    return-object p0

    .line 57
    :cond_0
    :try_start_1
    sget-object v1, Lccsansan/d/unifiedDownload;->addDownloadListener:Lccsansan/d/unifiedDownload;

    if-eqz v1, :cond_1

    .line 58
    invoke-direct {v1}, Lccsansan/d/unifiedDownload;->removeDownloadListener()Lccsanandroid/content/res/ResourcesImpl;

    move-result-object v1

    invoke-static {p0}, Lccsansan/d/unifiedDownload;->unifiedDownload(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/ResourcesImpl;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 60
    :cond_1
    new-instance v1, Lccsansan/d/unifiedDownload;

    invoke-direct {v1, p0}, Lccsansan/d/unifiedDownload;-><init>(Lccsanandroid/content/res/Resources;)V

    sput-object v1, Lccsansan/d/unifiedDownload;->addDownloadListener:Lccsansan/d/unifiedDownload;

    .line 62
    :cond_2
    sget-object p0, Lccsansan/d/unifiedDownload;->addDownloadListener:Lccsansan/d/unifiedDownload;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 52
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private removeDownloadListener()Lccsanandroid/content/res/ResourcesImpl;
    .locals 1

    .line 166
    iget-object v0, p0, Lccsansan/d/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/d/getDownloadingList;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lccsansan/d/getDownloadingList;->addDownloadListener:Lccsanandroid/content/res/ResourcesImpl;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static unifiedDownload(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/ResourcesImpl;
    .locals 1

    .line 73
    :try_start_0
    sget-object v0, Lccsansan/d/unifiedDownload;->getDownloadingList:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/res/ResourcesImpl;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 75
    :catch_0
    move-exception p0

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getAnimation(I)Lccsanandroid/content/res/XmlResourceParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 95
    nop

    .line 96
    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 98
    const-string v0, "anim"

    invoke-virtual {p0, p1, v0}, Lccsansan/d/unifiedDownload;->unifiedDownload(ILjava/lang/String;)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_0
    const/4 v0, 0x0

    .line 100
    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lccsanandroid/content/res/Resources;->getAnimation(I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method public getLayout(I)Lccsanandroid/content/res/XmlResourceParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 107
    nop

    .line 108
    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 110
    const-string v0, "layout"

    invoke-virtual {p0, p1, v0}, Lccsansan/d/unifiedDownload;->unifiedDownload(ILjava/lang/String;)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lccsanandroid/content/res/Resources;->getLayout(I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method public getXml(I)Lccsanandroid/content/res/XmlResourceParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 119
    nop

    .line 120
    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 122
    const-string v0, "xml"

    invoke-virtual {p0, p1, v0}, Lccsansan/d/unifiedDownload;->unifiedDownload(ILjava/lang/String;)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 124
    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lccsanandroid/content/res/Resources;->getXml(I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method public removeDownloadListener(Lccsanandroid/content/res/ResourcesImpl;Lccsanandroid/content/res/Resources;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lccsansan/d/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/d/getDownloadingList;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lccsansan/d/getDownloadingList;->addDownloadListener:Lccsanandroid/content/res/ResourcesImpl;

    if-eq v0, p1, :cond_2

    .line 156
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 157
    new-instance v0, Lccsansan/d/removeDownloadListener;

    invoke-direct {v0, p1, p2}, Lccsansan/d/removeDownloadListener;-><init>(Lccsanandroid/content/res/ResourcesImpl;Lccsanandroid/content/res/Resources;)V

    goto :goto_0

    .line 158
    :cond_1
    new-instance v0, Lccsansan/d/IncentiveDownloadUtils;

    invoke-direct {v0, p1}, Lccsansan/d/IncentiveDownloadUtils;-><init>(Lccsanandroid/content/res/ResourcesImpl;)V

    :goto_0
    iput-object v0, p0, Lccsansan/d/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/d/getDownloadingList;

    .line 159
    invoke-super {p0, v0}, Lccsanandroid/content/res/Resources;->setImpl(Lccsanandroid/content/res/ResourcesImpl;)V

    .line 161
    :cond_2
    return-void
.end method

.method unifiedDownload(ILjava/lang/String;)Lccsanandroid/content/res/XmlResourceParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lccsansan/d/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/d/getDownloadingList;

    invoke-virtual {v0, p1, p2}, Lccsansan/d/getDownloadingList;->addDownloadListener(ILjava/lang/String;)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method
