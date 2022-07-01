.class public Lccsancom/san/ads/SanImageLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/ads/SanImageLoader$OnLoadedListener;
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:Lccsancom/san/ads/SanImageLoader;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;ILccsancom/san/ads/SanImageLoader$OnLoadedListener;)V
    .locals 9

    .line 1
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {p3, p4}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v8, Lccsancom/san/ads/SanImageLoader$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p5

    move v6, p4

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lccsancom/san/ads/SanImageLoader$1;-><init>(Lccsancom/san/ads/SanImageLoader;Ljava/lang/String;Lccsanandroid/content/Context;Lccsancom/san/ads/SanImageLoader$OnLoadedListener;ILccsanandroid/widget/ImageView;)V

    invoke-virtual {v0, v8}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method public static getInstance()Lccsancom/san/ads/SanImageLoader;
    .locals 2

    .line 1
    sget-object v0, Lccsancom/san/ads/SanImageLoader;->IncentiveDownloadUtils:Lccsancom/san/ads/SanImageLoader;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsancom/san/ads/SanImageLoader;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsancom/san/ads/SanImageLoader;->IncentiveDownloadUtils:Lccsancom/san/ads/SanImageLoader;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsancom/san/ads/SanImageLoader;

    invoke-direct {v1}, Lccsancom/san/ads/SanImageLoader;-><init>()V

    sput-object v1, Lccsancom/san/ads/SanImageLoader;->IncentiveDownloadUtils:Lccsancom/san/ads/SanImageLoader;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lccsancom/san/ads/SanImageLoader;->IncentiveDownloadUtils:Lccsancom/san/ads/SanImageLoader;

    return-object v0
.end method


# virtual methods
.method public loadLandingRoundCornerUrl(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;II)V
    .locals 7

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p4

    new-instance v6, Lccsancom/san/ads/SanImageLoader$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lccsancom/san/ads/SanImageLoader$2;-><init>(Lccsancom/san/ads/SanImageLoader;Ljava/lang/String;Lccsanandroid/content/Context;ILccsanandroid/widget/ImageView;)V

    invoke-virtual {p4, v6}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method public loadUri(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lccsancom/san/ads/SanImageLoader;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;ILccsancom/san/ads/SanImageLoader$OnLoadedListener;)V

    return-void
.end method

.method public loadUri(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;I)V
    .locals 6

    .line 2
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/san/ads/SanImageLoader;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;ILccsancom/san/ads/SanImageLoader$OnLoadedListener;)V

    return-void
.end method

.method public loadUri(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;ILccsancom/san/ads/SanImageLoader$OnLoadedListener;)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, Lccsancom/san/ads/SanImageLoader;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;ILccsancom/san/ads/SanImageLoader$OnLoadedListener;)V

    return-void
.end method

.method public loadUri(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;Lccsancom/san/ads/SanImageLoader$OnLoadedListener;)V
    .locals 6

    .line 3
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/san/ads/SanImageLoader;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;ILccsancom/san/ads/SanImageLoader$OnLoadedListener;)V

    return-void
.end method
