.class public final Lccsansan/bw/resume;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bw/resume$unifiedDownload;
    }
.end annotation


# static fields
.field public static final IncentiveDownloadUtils:I

.field private static final addDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final unifiedDownload:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lccsansan/bw/resume;->getDownloadingList()V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lccsansan/bw/resume;->addDownloadListener:Ljava/util/List;

    .line 4
    const-string v1, "com.android.chrome"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    const-string v1, "com.android.browser"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    const-string v1, "com.sec.android.app.sbrowser"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    const-string v1, "com.opera.browser"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    const-string v1, "com.opera.mini.android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    const-string v1, "com.opera.mini.native"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    const-string v1, "com.UCMobile"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    const-string v1, "com.UCMobile.intl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    const-string v1, "com.uc.browser.en"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    const-string v1, "com.UCMobile.internet.org"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    const-string v1, "com.uc.browser.hd"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    const-string v1, "org.mozilla.firefox"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    const-string v1, "com.tencent.mtt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    const-string v1, "com.qihoo.browser"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    const-string v1, "com.baidu.browser.apps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    const-string v1, "sogou.mobile.explorer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    const-string v1, "com.zui.browser"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    const-string v1, "com.oupeng.browser"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    const-string v1, "com.oupeng.mini.android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    const-string v1, "com.vivo.browser"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static IncentiveDownloadUtils(Ljava/util/List;Ljava/util/List;)Lccsanandroid/content/pm/ResolveInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lccsanandroid/content/pm/ResolveInfo;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 119
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p1, :cond_0

    .line 120
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 121
    new-instance v0, Lccsansan/bw/resume$unifiedDownload;

    invoke-direct {v0, p1}, Lccsansan/bw/resume$unifiedDownload;-><init>(Ljava/util/List;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    const/4 p1, 0x0

    .line 122
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/pm/ResolveInfo;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 52
    new-instance v0, Lccsanandroid/content/Intent;

    invoke-static {p2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    .line 53
    const/4 v1, 0x0

    invoke-static {p0, p2, p1, v1, v0}, Lccsansan/bw/resume;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLccsanandroid/content/Intent;)V

    .line 54
    invoke-static {p0, v0}, Lccsansan/bw/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    .line 14
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lccsansan/bw/resume;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;ZI)Z
    .locals 2

    .line 65
    new-instance v0, Lccsanandroid/content/Intent;

    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    if-eqz p2, :cond_0

    const/high16 p1, 0x10000000

    .line 67
    invoke-virtual {v0, p1}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 68
    :cond_0
    sget-object p1, Lccsansan/bw/resume;->addDownloadListener:Ljava/util/List;

    invoke-static {p0, v0, p3, p1}, Lccsansan/bw/resume;->addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;ILjava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static addDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 57
    const-string v0, "market://details"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const-string v1, "https://play.google.com/store/apps/details"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsanandroid/content/Intent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 93
    :try_start_0
    sget-object v0, Lccsansan/bw/resume;->unifiedDownload:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    int-to-byte v1, v0

    int-to-byte v2, v1

    invoke-static {v0, v1, v2}, Lccsansan/bw/resume;->getDownloadingList(BSI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    int-to-byte v1, v1

    int-to-byte v2, v1

    int-to-byte v3, v2

    invoke-static {v1, v2, v3}, Lccsansan/bw/resume;->getDownloadingList(BSI)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Lccsanandroid/content/pm/PackageManager;->resolveActivity(Lccsanandroid/content/Intent;I)Lccsanandroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 95
    invoke-virtual {v0, p1, v1}, Lccsanandroid/content/pm/PackageManager;->queryIntentActivities(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-static {v2, v0}, Lccsansan/bw/resume;->removeDownloadListener(Lccsanandroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-static {v0, p2}, Lccsansan/bw/resume;->IncentiveDownloadUtils(Ljava/util/List;Ljava/util/List;)Lccsanandroid/content/pm/ResolveInfo;

    move-result-object v2

    goto :goto_0

    .line 100
    :cond_0
    iget-object v1, v2, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v1, v1, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-static {v0, p2}, Lccsansan/bw/resume;->IncentiveDownloadUtils(Ljava/util/List;Ljava/util/List;)Lccsanandroid/content/pm/ResolveInfo;

    move-result-object v2

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 106
    iget-object p2, v2, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object p2, p2, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 109
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    const-string p0, "common_start"

    const-string p2, ""

    .line 110
    invoke-static {p1, p0, p2}, Lccsansan/bn/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p2, "common_start_error"

    invoke-static {p1, p2, p0}, Lccsansan/bn/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 93
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    throw p1

    :cond_3
    throw p0
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 123
    invoke-static {p0, p1, p2, p3, p4}, Lccsansan/bn/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;ILjava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsanandroid/content/Intent;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.chrome"

    .line 69
    invoke-static {p0, v1}, Lccsansan/bw/resume;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/pm/ResolveInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v1, :cond_0

    .line 72
    :try_start_1
    iget-object v1, v1, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v1, v1, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 73
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    :try_start_2
    const-string v2, "first_chrome"

    const-string v3, ""

    .line 75
    invoke-static {p1, v2, v3}, Lccsansan/bn/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 v1, 0x0

    :goto_0
    const-string v3, "chrome_error"

    .line 77
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v3, v2}, Lccsansan/bn/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {p0, p1, p3}, Lccsansan/bw/resume;->addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 84
    :catch_2
    move-exception p0

    goto :goto_1

    .line 81
    :cond_0
    :try_start_4
    invoke-static {p0, p1, p3}, Lccsansan/bw/resume;->addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v1, 0x0

    goto :goto_2

    .line 84
    :catch_3
    move-exception p0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppStarter"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-nez v1, :cond_1

    if-lez p2, :cond_1

    .line 87
    invoke-static {p2, v0}, Lccsansan/bq/deleteDownItem;->addDownloadListener(II)V

    :cond_1
    return v1
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Ljava/lang/String;)Z
    .locals 6

    .line 59
    :try_start_0
    sget-object v0, Lccsansan/bw/resume;->unifiedDownload:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    int-to-byte v2, v0

    int-to-byte v3, v2

    invoke-static {v0, v2, v3}, Lccsansan/bw/resume;->getDownloadingList(BSI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    int-to-byte v3, v2

    int-to-byte v4, v3

    int-to-byte v5, v4

    invoke-static {v3, v4, v5}, Lccsansan/bw/resume;->getDownloadingList(BSI)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v0, 0x10000

    .line 60
    invoke-virtual {p0, p1, v0}, Lccsanandroid/content/pm/PackageManager;->queryIntentActivities(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 61
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/content/pm/ResolveInfo;

    .line 62
    iget-object p1, p1, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object p1, p1, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_1
    return v2

    .line 59
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    throw p1

    :cond_2
    goto :goto_1

    :goto_0
    throw p0

    :goto_1
    goto :goto_0
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 15
    :try_start_0
    sget-object v0, Lccsansan/bw/resume;->unifiedDownload:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    int-to-byte v2, v0

    int-to-byte v3, v2

    invoke-static {v0, v2, v3}, Lccsansan/bw/resume;->getDownloadingList(BSI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    int-to-byte v3, v2

    int-to-byte v4, v3

    int-to-byte v5, v4

    invoke-static {v3, v4, v5}, Lccsansan/bw/resume;->getDownloadingList(BSI)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {v0, p3}, Lccsanandroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 17
    invoke-static {p0, v0}, Lccsansan/bw/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {p0, p1, p2, p3, v2}, Lccsansan/bw/resume;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    nop

    .line 21
    const-string v2, "AppStarter"

    const-string v3, "startAppMarketWithUrl startBrowserNoChoice"

    invoke-static {v2, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p0, p2, v1}, Lccsansan/bw/resume;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    .line 23
    invoke-static {p0, p1, p2, p3, v1}, Lccsansan/bw/resume;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v0

    .line 15
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    throw p1

    :cond_1
    throw p0
.end method

.method private static getDownloadingList(BSI)Ljava/lang/String;
    .locals 6

    mul-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, 0x11

    sget-object v0, Lccsansan/bw/resume;->unifiedDownload:[B

    mul-int/lit8 p2, p2, 0x6

    rsub-int/lit8 p2, p2, 0x67

    mul-int/lit8 p0, p0, 0x16

    rsub-int/lit8 p0, p0, 0x19

    new-array v1, p1, [B

    add-int/lit8 p1, p1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move p2, p1

    move-object v3, v1

    const/4 v4, 0x0

    move p1, p0

    move-object v1, v0

    move v0, p2

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    int-to-byte v4, p2

    aput-byte v4, v1, v3

    add-int/lit8 p0, p0, 0x1

    if-ne v3, p1, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte v4, v0, p0

    add-int/lit8 v3, v3, 0x1

    move v5, p1

    move p1, p0

    move p0, v4

    move v4, v3

    move-object v3, v1

    move-object v1, v0

    move v0, v5

    :goto_1
    neg-int p0, p0

    add-int/2addr p2, p0

    add-int/lit8 p2, p2, -0x8

    move p0, p1

    move p1, v0

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    goto :goto_0
.end method

.method private static getDownloadingList(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 10
    const-string v0, "https://play.google.com/store/apps/details"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "market://details"

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    nop

    .line 12
    const-string v0, "http://play.google.com/store/apps/details"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method static getDownloadingList()V
    .locals 1

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bw/resume;->unifiedDownload:[B

    const/16 v0, 0xca

    sput v0, Lccsansan/bw/resume;->IncentiveDownloadUtils:I

    return-void

    :array_0
    .array-data 1
        0x74t
        0x77t
        0x37t
        -0x5ct
        -0x15t
        0x2t
        -0x16t
        -0x5t
        -0x2t
        -0x3t
        0x2et
        -0x3dt
        -0x14t
        -0x7t
        -0xet
        0x7t
        -0x11t
        -0xet
        0x3et
        -0x1dt
        -0x34t
        -0x7t
        -0xet
        0x7t
        -0x1bt
        -0x4t
        -0x6t
        -0x17t
        0x1ct
        -0x19t
        -0xat
        -0x10t
        0x2t
        -0xet
        -0x6t
        0x10t
        -0x1ct
        -0x15t
        0x5t
        -0xet
        -0x6t
        -0x15t
    .end array-data
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLccsanandroid/content/Intent;)V
    .locals 10

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x0

    move-wide v3, v0

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {}, Lccsansan/bb/IncentiveDownloadUtils;->deleteDownList()I

    move-result v0

    int-to-long v0, v0

    move-wide v3, v0

    .line 64
    :goto_0
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bw/resume$removeDownloadListener;

    move-object v2, v1

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move-object v9, p4

    invoke-direct/range {v2 .. v9}, Lccsansan/bw/resume$removeDownloadListener;-><init>(JLccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLccsanandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    .line 7
    :try_start_0
    new-instance v0, Lccsanandroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "android.intent.action.VIEW"

    :try_start_1
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "com.android.vending"

    if-nez p2, :cond_0

    .line 8
    :try_start_2
    invoke-static {p0, v0, v1}, Lccsansan/bw/resume;->addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    nop

    .line 9
    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    :cond_1
    const/high16 p2, 0x10000000

    .line 12
    invoke-virtual {v0, p2}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 13
    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_3
    const-string p2, "AppStarter"

    const-string v0, "startAppMarketWithUrl startBrowserNoChoice"

    .line 16
    invoke-static {p2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 17
    invoke-static {p0, p1, p2}, Lccsansan/bw/resume;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    return-void
.end method

.method private static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/pm/ResolveInfo;
    .locals 6

    .line 88
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lccsansan/bw/resume;->unifiedDownload:[B

    const/4 v2, 0x5

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    int-to-byte v2, v1

    int-to-byte v3, v2

    invoke-static {v1, v2, v3}, Lccsansan/bw/resume;->getDownloadingList(BSI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    int-to-byte v3, v2

    int-to-byte v4, v3

    int-to-byte v5, v4

    invoke-static {v3, v4, v5}, Lccsansan/bw/resume;->getDownloadingList(BSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :try_start_1
    new-instance v1, Lccsanandroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3, v0}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    .line 90
    invoke-virtual {v1, p1}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 91
    invoke-virtual {p0, v1, v2}, Lccsanandroid/content/pm/PackageManager;->queryIntentActivities(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 92
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/pm/ResolveInfo;

    move-object v0, p0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    throw p1

    :cond_0
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    :catch_0
    move-exception p0

    :goto_0
    return-object v0
.end method

.method private static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lccsansan/bw/resume;->addDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Lccsanandroid/content/Intent;

    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    .line 3
    const-string v1, "com.android.vending"

    invoke-static {p0, v0, v1}, Lccsansan/bw/resume;->addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    .line 4
    invoke-static {p0, p1, p2, v3, v0}, Lccsansan/bw/resume;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLccsanandroid/content/Intent;)V

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 7
    invoke-static {p0, v0}, Lccsansan/bw/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_0
    nop

    .line 9
    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lccsansan/bw/resume;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "AppStarter"

    .line 18
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#startAppMarketWithUrl , url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p3, "#startAppMarketWithUrl return url and pkgName are null"

    .line 20
    invoke-static {v0, p3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 24
    :cond_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    :cond_1
    invoke-static {p2, p3}, Lccsansan/bw/getErrorCode;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :try_start_1
    sget-object p3, Lccsansan/bw/resume;->unifiedDownload:[B

    const/4 v4, 0x5

    aget-byte p3, p3, v4

    sub-int/2addr p3, v2

    int-to-byte p3, p3

    int-to-byte v4, p3

    int-to-byte v5, v4

    invoke-static {p3, v4, v5}, Lccsansan/bw/resume;->getDownloadingList(BSI)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    int-to-byte v4, v3

    int-to-byte v5, v4

    int-to-byte v6, v5

    invoke-static {v4, v5, v6}, Lccsansan/bw/resume;->getDownloadingList(BSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    invoke-virtual {p3, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lccsanandroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :try_start_2
    invoke-virtual {p3, p2}, Lccsanandroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 33
    invoke-static {p0, p3}, Lccsansan/bw/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Z

    move-result p0

    return p0

    .line 36
    :cond_2
    invoke-static {}, Lccsancom/san/az/unifiedDownload;->getDownloadingList()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 37
    invoke-static {p0, p1, p2}, Lccsansan/bw/resume;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 39
    :cond_3
    invoke-static {}, Lccsancom/san/az/unifiedDownload;->IncentiveDownloadUtils()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 40
    invoke-static {p1}, Lccsansan/bw/resume;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p2, p3}, Lccsansan/bw/resume;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 42
    :cond_4
    invoke-static {}, Lccsancom/san/az/unifiedDownload;->addDownloadListener()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {}, Lccsansan/bw/resume;->unifiedDownload()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 43
    invoke-static {p0, p1, p2}, Lccsansan/bw/resume;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 45
    :cond_5
    invoke-static {p0, p2, p1}, Lccsansan/bw/resume;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 30
    :catchall_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_6

    throw v4

    :cond_6
    throw p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 45
    :catch_0
    move-exception p3

    .line 48
    :try_start_3
    invoke-static {p1}, Lccsansan/bw/resume;->addDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#startAppMarketWithUrl exception, url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {p0, p3, p2, v2, v1}, Lccsansan/bw/resume;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLccsanandroid/content/Intent;)V

    .line 51
    invoke-static {p0, p3, v2}, Lccsansan/bw/resume;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return p0

    :catch_1
    move-exception p0

    return v3
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/dt/removeDownloadListener;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lccsansan/bw/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v0, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Lccsansan/bq/addDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p0, p4, v2}, Lccsancom/san/common/offline/getDownloadingRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Z)Z

    move-result p0

    return p0

    .line 6
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lccsansan/bw/resume;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static removeDownloadListener(Lccsanandroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/pm/ResolveInfo;",
            "Ljava/util/List<",
            "Lccsanandroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 113
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 115
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 116
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/content/pm/ResolveInfo;

    .line 117
    iget-object v4, v3, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v4, v4, Lccsanandroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v5, p0, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v5, v5, Lccsanandroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, v3, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v3, v3, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v4, v4, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static unifiedDownload()Z
    .locals 2

    .line 55
    invoke-static {}, Lccsansan/dr/deleteDownItem;->IncentiveDownloadUtils()I

    move-result v0

    .line 56
    invoke-static {}, Lccsansan/dr/deleteDownItem;->addDownloadListener()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
