.class final Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/proaz/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/api/ProAzBuilder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic removeDownloadListener:Lccsanandroid/content/Context;

.field final synthetic unifiedDownload:Lccsancom/san/api/ProAzBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lccsancom/san/api/ProAzBuilder;Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    iput-object p2, p0, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/api/ProAzBuilder;

    iput-object p3, p0, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 6

    .line 6
    sget v0, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->addDownloadListener:I

    xor-int/lit8 v1, v0, 0x63

    and-int/lit8 v0, v0, 0x63

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    neg-int v0, v0

    neg-int v0, v0

    xor-int v3, v1, v0

    and-int/2addr v0, v1

    shl-int/2addr v0, v2

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 1
    const/16 v0, 0x53

    goto :goto_0

    :cond_0
    const/16 v0, 0x44

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingList()Lccsansan/p/getDownloadedList;

    move-result-object v0

    iget-object v4, p0, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/api/ProAzBuilder;

    iget-object v5, p0, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lccsancom/san/proaz/removeDownloadListener;->unifiedDownload(Lccsansan/p/getDownloadedList;Lccsancom/san/api/ProAzBuilder;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingList()Lccsansan/p/getDownloadedList;

    move-result-object v0

    iget-object v4, p0, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/api/ProAzBuilder;

    iget-object v5, p0, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lccsancom/san/proaz/removeDownloadListener;->unifiedDownload(Lccsansan/p/getDownloadedList;Lccsancom/san/api/ProAzBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    goto :goto_3

    :goto_2
    const/16 v4, 0x5e

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_2

    goto :goto_1

    :goto_3
    sget v0, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    xor-int/lit8 v3, v0, 0x57

    and-int/lit8 v0, v0, 0x57

    shl-int/2addr v0, v2

    neg-int v0, v0

    neg-int v0, v0

    or-int v4, v3, v0

    shl-int/lit8 v2, v4, 0x1

    xor-int/2addr v0, v3

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const/16 v0, 0x1e

    goto :goto_4

    :cond_1
    const/16 v0, 0x19

    :goto_4
    packed-switch v0, :pswitch_data_1

    goto :goto_5

    .line 6
    :pswitch_1
    return-void

    .line 1
    :goto_5
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    .line 5
    :cond_2
    iget-object v0, p0, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/content/Context;

    iget-object v4, p0, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/api/ProAzBuilder;

    invoke-static {v0, v4}, Lccsancom/san/proaz/removeDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/api/ProAzBuilder;)Lccsancom/san/proaz/getDownloadingList;

    move-result-object v0

    .line 6
    invoke-static {}, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingList()Lccsansan/p/getDownloadedList;

    move-result-object v4

    invoke-virtual {v0, v4}, Lccsancom/san/proaz/getDownloadingList;->addDownloadListener(Lccsansan/p/getDownloadedList;)V

    .line 1
    sget v0, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x41

    sub-int/2addr v0, v2

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    goto :goto_6

    :cond_3
    const/4 v2, 0x0

    :goto_6
    packed-switch v2, :pswitch_data_2

    .line 6
    return-void

    .line 1
    :pswitch_2
    :try_start_2
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    .line 6
    :catchall_2
    move-exception v0

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public execute()V
    .locals 4

    .line 1
    sget v0, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x73

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 v0, v0, 0x73

    and-int/2addr v0, v2

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/san/proaz/deleteDownItem;->unifiedDownload(Ljava/lang/String;)Lccsansan/p/getDownloadedList;

    move-result-object v0

    invoke-static {v0}, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;)Lccsansan/p/getDownloadedList;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/san/proaz/deleteDownItem;->unifiedDownload(Ljava/lang/String;)Lccsansan/p/getDownloadedList;

    move-result-object v0

    invoke-static {v0}, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;)Lccsansan/p/getDownloadedList;

    goto :goto_2

    :goto_1
    const/16 v0, 0x3e

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    sget v0, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    xor-int/lit8 v3, v0, 0x7

    and-int/lit8 v0, v0, 0x7

    shl-int/2addr v0, v2

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;->addDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    const/16 v0, 0x22

    goto :goto_3

    :cond_1
    const/16 v0, 0x42

    :goto_3
    packed-switch v0, :pswitch_data_1

    return-void

    :pswitch_1
    const/16 v0, 0x5f

    :try_start_1
    div-int/2addr v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22
        :pswitch_1
    .end packed-switch
.end method
