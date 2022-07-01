.class final Lccsancom/san/az/addDownloadListener$getDownloadedList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;ZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static getDownloadedRecordByUrl:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:Z

.field final synthetic unifiedDownload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/addDownloadListener$getDownloadedList;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/addDownloadListener$getDownloadedList;->getDownloadedRecordByUrl:I

    return-void
.end method

.method constructor <init>(ZLccsansan/p/getDownloadedList;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsancom/san/az/addDownloadListener$getDownloadedList;->removeDownloadListener:Z

    iput-object p2, p0, Lccsancom/san/az/addDownloadListener$getDownloadedList;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    iput-object p3, p0, Lccsancom/san/az/addDownloadListener$getDownloadedList;->getDownloadingList:Ljava/lang/String;

    iput-boolean p4, p0, Lccsancom/san/az/addDownloadListener$getDownloadedList;->unifiedDownload:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 0

    sget p1, Lccsancom/san/az/addDownloadListener$getDownloadedList;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x52

    add-int/lit8 p1, p1, -0x1

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/az/addDownloadListener$getDownloadedList;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public onActivityDestroyed(Lccsanandroid/app/Activity;)V
    .locals 2

    sget p1, Lccsancom/san/az/addDownloadListener$getDownloadedList;->getDownloadedRecordByUrl:I

    and-int/lit8 v0, p1, 0x55

    xor-int/lit8 v1, v0, -0x1

    or-int/lit8 p1, p1, 0x55

    and-int/2addr p1, v1

    shl-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    neg-int v0, v0

    or-int v1, p1, v0

    shl-int/lit8 v1, v1, 0x1

    xor-int/2addr p1, v0

    sub-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/az/addDownloadListener$getDownloadedList;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public onActivityPaused(Lccsanandroid/app/Activity;)V
    .locals 2

    sget p1, Lccsancom/san/az/addDownloadListener$getDownloadedList;->getDownloadedRecordByUrl:I

    and-int/lit8 v0, p1, 0x9

    xor-int/lit8 p1, p1, 0x9

    or-int/2addr p1, v0

    neg-int p1, p1

    neg-int p1, p1

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    sub-int/2addr v0, p1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener$getDownloadedList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResumed(Lccsanandroid/app/Activity;)V
    .locals 5

    .line 5
    sget p1, Lccsancom/san/az/addDownloadListener$getDownloadedList;->addDownloadListener:I

    xor-int/lit8 v0, p1, 0x7e

    and-int/lit8 p1, p1, 0x7e

    const/4 v1, 0x1

    shl-int/2addr p1, v1

    add-int/2addr v0, p1

    and-int/lit8 p1, v0, -0x1

    or-int/lit8 v0, v0, -0x1

    add-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/az/addDownloadListener$getDownloadedList;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x63

    if-nez p1, :cond_0

    const/16 p1, 0x63

    goto :goto_0

    :cond_0
    const/16 p1, 0x21

    :goto_0
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    iget-boolean p1, p0, Lccsancom/san/az/addDownloadListener$getDownloadedList;->removeDownloadListener:Z

    goto :goto_3

    :pswitch_0
    iget-boolean p1, p0, Lccsancom/san/az/addDownloadListener$getDownloadedList;->removeDownloadListener:Z

    if-eqz p1, :cond_1

    .line 5
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_1

    :goto_2
    goto :goto_6

    .line 1
    :goto_3
    const/4 v3, 0x0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    .line 5
    const/4 p1, 0x0

    goto :goto_4

    :cond_2
    const/4 p1, 0x1

    :goto_4
    packed-switch p1, :pswitch_data_2

    goto :goto_2

    .line 2
    :pswitch_1
    iget-object p1, p0, Lccsancom/san/az/addDownloadListener$getDownloadedList;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    iget-object v2, p0, Lccsancom/san/az/addDownloadListener$getDownloadedList;->getDownloadingList:Ljava/lang/String;

    iget-boolean v3, p0, Lccsancom/san/az/addDownloadListener$getDownloadedList;->unifiedDownload:Z

    invoke-static {p1, v2, v3}, Lccsancom/san/az/addDownloadListener;->removeDownloadListener(Lccsansan/p/getDownloadedList;Ljava/lang/String;Z)V

    .line 1
    sget p1, Lccsancom/san/az/addDownloadListener$getDownloadedList;->addDownloadListener:I

    and-int/lit8 v2, p1, 0x12

    or-int/lit8 p1, p1, 0x12

    add-int/2addr v2, p1

    and-int/lit8 p1, v2, -0x1

    or-int/lit8 v2, v2, -0x1

    add-int/2addr p1, v2

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsancom/san/az/addDownloadListener$getDownloadedList;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    .line 5
    const/16 p1, 0x3f

    goto :goto_5

    :cond_3
    const/16 p1, 0x1d

    :goto_5
    packed-switch p1, :pswitch_data_3

    .line 1
    goto :goto_9

    .line 4
    :goto_6
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lccsancom/san/az/addDownloadListener$getDownloadedList;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    invoke-virtual {v3}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    const/16 p1, 0x4a

    goto :goto_7

    :cond_4
    const/16 p1, 0x44

    :goto_7
    packed-switch p1, :pswitch_data_4

    .line 1
    sget p1, Lccsancom/san/az/addDownloadListener$getDownloadedList;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x2e

    sub-int/2addr p1, v1

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lccsancom/san/az/addDownloadListener$getDownloadedList;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    .line 5
    const/4 p1, 0x1

    goto :goto_8

    :cond_5
    const/4 p1, 0x0

    :goto_8
    packed-switch p1, :pswitch_data_5

    iget-object p1, p0, Lccsancom/san/az/addDownloadListener$getDownloadedList;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    iget-object v2, p0, Lccsancom/san/az/addDownloadListener$getDownloadedList;->getDownloadingList:Ljava/lang/String;

    iget-boolean v3, p0, Lccsancom/san/az/addDownloadListener$getDownloadedList;->unifiedDownload:Z

    invoke-static {p1, v2, v3}, Lccsancom/san/az/getDownloadStatusByUrl;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;Z)V

    goto :goto_9

    :pswitch_2
    iget-object p1, p0, Lccsancom/san/az/addDownloadListener$getDownloadedList;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    iget-object v3, p0, Lccsancom/san/az/addDownloadListener$getDownloadedList;->getDownloadingList:Ljava/lang/String;

    iget-boolean v4, p0, Lccsancom/san/az/addDownloadListener$getDownloadedList;->unifiedDownload:Z

    invoke-static {p1, v3, v4}, Lccsancom/san/az/getDownloadStatusByUrl;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;Z)V

    const/4 p1, 0x3

    :try_start_1
    div-int/2addr p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    .line 1
    :catchall_0
    move-exception p1

    throw p1

    .line 5
    :goto_9
    :pswitch_3
    sget p1, Lccsancom/san/az/addDownloadListener$getDownloadedList;->addDownloadListener:I

    xor-int/lit8 v2, p1, 0x63

    and-int/2addr p1, v0

    shl-int/2addr p1, v1

    add-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsancom/san/az/addDownloadListener$getDownloadedList;->getDownloadedRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    return-void

    :catchall_1
    move-exception p1

    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1d
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x44
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public onActivitySaveInstanceState(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 1

    sget p1, Lccsancom/san/az/addDownloadListener$getDownloadedList;->getDownloadedRecordByUrl:I

    and-int/lit8 p2, p1, 0x51

    xor-int/lit8 p1, p1, 0x51

    or-int/2addr p1, p2

    neg-int p1, p1

    neg-int p1, p1

    xor-int v0, p2, p1

    and-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/az/addDownloadListener$getDownloadedList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public onActivityStarted(Lccsanandroid/app/Activity;)V
    .locals 1

    sget p1, Lccsancom/san/az/addDownloadListener$getDownloadedList;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/az/addDownloadListener$getDownloadedList;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0x11

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x3f

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityStopped(Lccsanandroid/app/Activity;)V
    .locals 2

    sget p1, Lccsancom/san/az/addDownloadListener$getDownloadedList;->getDownloadedRecordByUrl:I

    and-int/lit8 v0, p1, 0x49

    xor-int/lit8 p1, p1, 0x49

    or-int/2addr p1, v0

    and-int v1, v0, p1

    or-int/2addr p1, v0

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/az/addDownloadListener$getDownloadedList;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
