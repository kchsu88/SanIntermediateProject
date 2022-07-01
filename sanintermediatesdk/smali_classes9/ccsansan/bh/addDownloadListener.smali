.class public Lccsansan/bh/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static deleteDownItem:C

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedList:J

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:Lccsansan/bh/addDownloadListener;


# instance fields
.field private IncentiveDownloadUtils:Lccsansan/bp/getDownloadingList;

.field private addDownloadListener:Lccsansan/bh/removeDownloadListener;

.field private getDownloadingList:Lccsansan/bp/addDownloadListener;

.field private unifiedDownload:Lccsansan/bk/getDownloadStatusByUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    invoke-static {}, Lccsansan/bh/addDownloadListener;->IncentiveDownloadUtils()V

    .line 1
    new-instance v0, Lccsansan/bh/addDownloadListener;

    invoke-direct {v0}, Lccsansan/bh/addDownloadListener;-><init>()V

    sput-object v0, Lccsansan/bh/addDownloadListener;->removeDownloadListener:Lccsansan/bh/addDownloadListener;

    sget v0, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lccsansan/bh/addDownloadListener;->getDownloadingList()V

    return-void
.end method

.method private IncentiveDownloadUtils(I)Lccsancom/san/convert/database/ConvertIntent;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 48
    nop

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query latest task,state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD_CONVERT"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lccsancom/san/convert/database/TaskDatabase;->addDownloadListener()Lccsancom/san/convert/database/TaskDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/convert/database/TaskDatabase;->unifiedDownload()Lccsancom/san/convert/database/getDownloadingList;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/san/convert/database/getDownloadingList;->getDownloadingList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    const/16 v2, 0x60

    goto :goto_0

    :cond_0
    const/16 v2, 0x50

    :goto_0
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 48
    :pswitch_0
    return-object v3

    .line 32
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    const/16 v2, 0x5d

    goto :goto_2

    :cond_2
    const/16 v2, 0x24

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 48
    sget v2, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v2, v2, 0x43

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    goto :goto_3

    :pswitch_1
    sget p1, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    move-exception p1

    throw p1

    :cond_3
    return-object v3

    .line 34
    :goto_3
    const/16 v2, 0x30

    goto :goto_4

    :cond_4
    const/16 v2, 0x2e

    :goto_4
    packed-switch v2, :pswitch_data_2

    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/convert/database/ConvertIntent;

    .line 33
    invoke-virtual {v2}, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsancom/san/convert/database/addDownloadListener;->fromName(Ljava/lang/String;)Lccsancom/san/convert/database/addDownloadListener;

    move-result-object v4

    .line 34
    sget-object v5, Lccsancom/san/convert/database/addDownloadListener;->ACTIVATE_SUCCESS:Lccsancom/san/convert/database/addDownloadListener;

    goto :goto_6

    .line 32
    :pswitch_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/convert/database/ConvertIntent;

    .line 33
    invoke-virtual {v2}, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsancom/san/convert/database/addDownloadListener;->fromName(Ljava/lang/String;)Lccsancom/san/convert/database/addDownloadListener;

    move-result-object v4

    .line 34
    sget-object v5, Lccsancom/san/convert/database/addDownloadListener;->ACTIVATE_SUCCESS:Lccsancom/san/convert/database/addDownloadListener;

    if-ne v4, v5, :cond_5

    :goto_5
    goto :goto_7

    :goto_6
    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v4, v5, :cond_5

    goto :goto_5

    .line 48
    :goto_7
    goto :goto_1

    .line 37
    :cond_5
    invoke-virtual {v4}, Lccsancom/san/convert/database/addDownloadListener;->getValue()I

    move-result v4

    and-int/2addr v4, p1

    if-nez v4, :cond_6

    goto :goto_1

    .line 41
    :cond_6
    invoke-virtual {v2}, Lccsancom/san/convert/database/ConvertIntent;->performAction()I

    move-result v4

    invoke-static {}, Lccsancom/san/az/unifiedDownload;->getDownloadStatusByUrl()I

    move-result v5

    if-lt v4, v5, :cond_7

    goto :goto_1

    .line 44
    :cond_7
    invoke-virtual {v2}, Lccsancom/san/convert/database/ConvertIntent;->performAction()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils(I)V

    .line 45
    invoke-static {}, Lccsancom/san/convert/database/TaskDatabase;->addDownloadListener()Lccsancom/san/convert/database/TaskDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/san/convert/database/TaskDatabase;->unifiedDownload()Lccsancom/san/convert/database/getDownloadingList;

    move-result-object p1

    invoke-interface {p1, v2}, Lccsancom/san/convert/database/getDownloadingList;->removeDownloadListener(Lccsancom/san/convert/database/ConvertIntent;)V

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "query one:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsancom/san/convert/database/ConvertIntent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, v2}, Lccsansan/bh/addDownloadListener;->addDownloadListener(Lccsancom/san/convert/database/ConvertIntent;)Lccsancom/san/convert/database/ConvertIntent;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x24
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2e
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/bh/addDownloadListener;Lccsansan/bs/getDownloadingRecordByUrl;)Lccsancom/san/convert/database/ConvertIntent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3
    sget v0, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x5c

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    :goto_0
    invoke-direct {p0, p1}, Lccsansan/bh/addDownloadListener;->removeDownloadListener(Lccsansan/bs/getDownloadingRecordByUrl;)Lccsancom/san/convert/database/ConvertIntent;

    move-result-object p0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x28

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch
.end method

.method static IncentiveDownloadUtils()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lccsansan/bh/addDownloadListener;->getDownloadedList:J

    const/4 v0, 0x0

    sput-char v0, Lccsansan/bh/addDownloadListener;->deleteDownItem:C

    const v0, 0x6de8d868

    sput v0, Lccsansan/bh/addDownloadListener;->getDownloadingRecordByUrl:I

    return-void
.end method

.method private addDownloadListener(Lccsancom/san/convert/database/ConvertIntent;)Lccsancom/san/convert/database/ConvertIntent;
    .locals 4

    .line 72
    sget v0, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 68
    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    const/16 v0, 0x1b

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 67
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/san/convert/database/addDownloadListener;->fromName(Ljava/lang/String;)Lccsancom/san/convert/database/addDownloadListener;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lccsancom/san/convert/database/addDownloadListener;->getValue()I

    move-result v3

    and-int/lit8 v3, v3, 0x6a

    if-eqz v3, :cond_1

    goto :goto_2

    .line 67
    :pswitch_0
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/san/convert/database/addDownloadListener;->fromName(Ljava/lang/String;)Lccsancom/san/convert/database/addDownloadListener;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lccsancom/san/convert/database/addDownloadListener;->getValue()I

    move-result v3

    and-int/lit8 v3, v3, 0xb

    if-eqz v3, :cond_2

    :goto_1
    goto :goto_5

    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    :goto_3
    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 70
    :cond_2
    :pswitch_1
    sget-object v3, Lccsancom/san/convert/database/addDownloadListener;->AZ_SUCCESS:Lccsancom/san/convert/database/addDownloadListener;

    if-eq v0, v3, :cond_4

    .line 71
    invoke-virtual {v0}, Lccsancom/san/convert/database/addDownloadListener;->getValue()I

    move-result v0

    and-int/lit16 v0, v0, 0xb0

    if-eqz v0, :cond_3

    .line 68
    const/16 v0, 0x5a

    goto :goto_4

    :cond_3
    const/16 v0, 0x58

    :goto_4
    packed-switch v0, :pswitch_data_2

    .line 72
    :cond_4
    sget-object v0, Lccsancom/san/convert/database/addDownloadListener;->ACTIVATE_PENDING:Lccsancom/san/convert/database/addDownloadListener;

    invoke-virtual {v0}, Lccsancom/san/convert/database/addDownloadListener;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount(Ljava/lang/String;)V

    goto :goto_6

    .line 69
    :goto_5
    sget-object v0, Lccsancom/san/convert/database/addDownloadListener;->AZ_PENDING:Lccsancom/san/convert/database/addDownloadListener;

    invoke-virtual {v0}, Lccsancom/san/convert/database/addDownloadListener;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount(Ljava/lang/String;)V

    .line 72
    :goto_6
    :pswitch_2
    sget v0, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 68
    const/4 v1, 0x0

    goto :goto_7

    :cond_5
    nop

    :goto_7
    packed-switch v1, :pswitch_data_3

    .line 72
    return-object p1

    :pswitch_3
    const/4 v0, 0x3

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x58
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method private addDownloadListener()V
    .locals 3

    .line 3
    sget v0, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x26

    goto :goto_0

    :cond_0
    const/16 v0, 0x22

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsansan/bh/addDownloadListener;->getDownloadingList:Lccsansan/bp/addDownloadListener;

    invoke-virtual {v1}, Lccsansan/bp/unifiedDownload;->getDownloadingList()Lccsanandroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsansan/bh/addDownloadListener;->IncentiveDownloadUtils:Lccsansan/bp/getDownloadingList;

    invoke-virtual {v1}, Lccsansan/bp/unifiedDownload;->getDownloadingList()Lccsanandroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsansan/bh/addDownloadListener;->addDownloadListener:Lccsansan/bh/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/bh/removeDownloadListener;->removeDownloadListener()Lccsanandroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsansan/bh/addDownloadListener;->getDownloadingList:Lccsansan/bp/addDownloadListener;

    invoke-virtual {v1}, Lccsansan/bp/unifiedDownload;->getDownloadingList()Lccsanandroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsansan/bh/addDownloadListener;->IncentiveDownloadUtils:Lccsansan/bp/getDownloadingList;

    invoke-virtual {v1}, Lccsansan/bp/unifiedDownload;->getDownloadingList()Lccsanandroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsansan/bh/addDownloadListener;->addDownloadListener:Lccsansan/bh/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/bh/removeDownloadListener;->removeDownloadListener()Lccsanandroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    sget v0, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Lccsansan/bh/addDownloadListener;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    sget v0, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x5a

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    :goto_0
    invoke-direct {p0, p1}, Lccsansan/bh/addDownloadListener;->unifiedDownload(Lccsancom/san/convert/database/ConvertIntent;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p0, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0xf

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingList()V
    .locals 2

    .line 5
    nop

    .line 1
    new-instance v0, Lccsansan/bk/getDownloadStatusByUrl;

    invoke-direct {v0}, Lccsansan/bk/getDownloadStatusByUrl;-><init>()V

    iput-object v0, p0, Lccsansan/bh/addDownloadListener;->unifiedDownload:Lccsansan/bk/getDownloadStatusByUrl;

    .line 2
    new-instance v0, Lccsansan/bp/addDownloadListener;

    invoke-direct {v0}, Lccsansan/bp/addDownloadListener;-><init>()V

    iput-object v0, p0, Lccsansan/bh/addDownloadListener;->getDownloadingList:Lccsansan/bp/addDownloadListener;

    .line 3
    new-instance v0, Lccsansan/bp/getDownloadingList;

    invoke-direct {v0}, Lccsansan/bp/getDownloadingList;-><init>()V

    iput-object v0, p0, Lccsansan/bh/addDownloadListener;->IncentiveDownloadUtils:Lccsansan/bp/getDownloadingList;

    .line 4
    new-instance v0, Lccsansan/bh/removeDownloadListener;

    invoke-direct {v0}, Lccsansan/bh/removeDownloadListener;-><init>()V

    iput-object v0, p0, Lccsansan/bh/addDownloadListener;->addDownloadListener:Lccsansan/bh/removeDownloadListener;

    .line 5
    invoke-direct {p0}, Lccsansan/bh/addDownloadListener;->addDownloadListener()V

    sget v0, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private removeDownloadListener(Lccsancom/san/convert/database/ConvertIntent;Lccsancom/san/convert/database/ConvertIntent;)Lccsancom/san/convert/database/ConvertIntent;
    .locals 2

    .line 81
    sget v0, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 73
    :cond_0
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingRecordByUrl()Z

    move-result v0

    invoke-virtual {p1, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList(Z)V

    .line 76
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener()I

    move-result v0

    invoke-virtual {p1, v0}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload(I)V

    .line 77
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->pause()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/san/convert/database/ConvertIntent;->deleteDownItem(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->deleteDownList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadStatusByUrl(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedCount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->trackReportClick()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingRecordByUrl(Ljava/lang/String;)V

    sget p2, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p2, p2, 0x59

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p2, p2, 0x2

    return-object p1
.end method

.method static synthetic removeDownloadListener(Lccsansan/bh/addDownloadListener;I)Lccsancom/san/convert/database/ConvertIntent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget v0, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1}, Lccsansan/bh/addDownloadListener;->IncentiveDownloadUtils(I)Lccsancom/san/convert/database/ConvertIntent;

    move-result-object p0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private removeDownloadListener(Lccsansan/bs/getDownloadingRecordByUrl;)Lccsancom/san/convert/database/ConvertIntent;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 31
    nop

    .line 6
    sget v0, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lccsansan/bs/getDownloadingRecordByUrl;->addDownloadListener()Lccsancom/san/convert/database/ConvertIntent;

    move-result-object p1

    .line 3
    invoke-static {}, Lccsancom/san/convert/database/TaskDatabase;->addDownloadListener()Lccsancom/san/convert/database/TaskDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/convert/database/TaskDatabase;->unifiedDownload()Lccsancom/san/convert/database/getDownloadingList;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/san/convert/database/getDownloadingList;->IncentiveDownloadUtils()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    const/16 v1, 0x36

    goto :goto_0

    :cond_1
    const/16 v1, 0x5b

    :goto_0
    packed-switch v1, :pswitch_data_0

    :cond_2
    goto/16 :goto_4

    :pswitch_0
    sget v1, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 4
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 31
    sget v1, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    .line 6
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 5
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_2

    .line 5
    :pswitch_1
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 31
    :catchall_0
    move-exception p1

    throw p1

    :cond_5
    :goto_2
    nop

    .line 6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/convert/database/ConvertIntent;

    .line 7
    invoke-virtual {v2}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    .line 10
    :cond_6
    invoke-virtual {v2}, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsancom/san/convert/database/addDownloadListener;->fromName(Ljava/lang/String;)Lccsancom/san/convert/database/addDownloadListener;

    move-result-object v3

    .line 12
    sget-object v4, Lccsancom/san/convert/database/addDownloadListener;->ACTIVATE_SUCCESS:Lccsancom/san/convert/database/addDownloadListener;

    if-ne v3, v4, :cond_7

    .line 6
    sget v2, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v2, v2, 0x43

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    goto :goto_2

    .line 16
    :cond_7
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->trackReportShow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedCount(Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, v2, p1}, Lccsansan/bh/addDownloadListener;->removeDownloadListener(Lccsancom/san/convert/database/ConvertIntent;Lccsancom/san/convert/database/ConvertIntent;)Lccsancom/san/convert/database/ConvertIntent;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadStatusByUrl()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(Z)V

    .line 22
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload(J)V

    .line 23
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/san/convert/database/ConvertIntent;->pause(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener(J)V

    .line 26
    invoke-static {}, Lccsancom/san/convert/database/TaskDatabase;->addDownloadListener()Lccsancom/san/convert/database/TaskDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/san/convert/database/TaskDatabase;->unifiedDownload()Lccsancom/san/convert/database/getDownloadingList;

    move-result-object p1

    invoke-interface {p1, v0}, Lccsancom/san/convert/database/getDownloadingList;->removeDownloadListener(Lccsancom/san/convert/database/ConvertIntent;)V

    return-object v0

    .line 31
    :cond_8
    :goto_4
    invoke-static {}, Lccsancom/san/convert/database/TaskDatabase;->addDownloadListener()Lccsancom/san/convert/database/TaskDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/convert/database/TaskDatabase;->unifiedDownload()Lccsancom/san/convert/database/getDownloadingList;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/san/convert/database/getDownloadingList;->getDownloadingList(Lccsancom/san/convert/database/ConvertIntent;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static removeDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_0
    check-cast p4, [C

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_1
    check-cast p1, [C

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_2
    check-cast p0, [C

    .line 1123
    sget-object v0, Lccsansan/d/getDownloadingCount;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    :try_start_0
    invoke-virtual {p4}, [C->clone()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [C

    .line 1126
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    .line 1127
    const/4 v1, 0x0

    aget-char v2, p4, v1

    xor-int/2addr p2, v2

    int-to-char p2, p2

    aput-char p2, p4, v1

    .line 1128
    const/4 p2, 0x2

    aget-char v2, p1, p2

    int-to-char p3, p3

    add-int/2addr v2, p3

    int-to-char p3, v2

    aput-char p3, p1, p2

    .line 1130
    array-length p3, p0

    .line 1131
    new-array v2, p3, [C

    .line 1132
    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    :goto_0
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    if-ge v1, p3, :cond_3

    .line 1134
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/2addr v1, p2

    rem-int/lit8 v1, v1, 0x4

    .line 1135
    sget v3, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit8 v3, v3, 0x4

    .line 1138
    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x4

    aget-char v4, p4, v4

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v5, p1, v1

    add-int/2addr v4, v5

    const v5, 0xffff

    rem-int/2addr v4, v5

    int-to-char v4, v4

    sput-char v4, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    .line 1141
    aget-char v4, p4, v3

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v1, p1, v1

    add-int/2addr v4, v1

    div-int/2addr v4, v5

    int-to-char v1, v4

    aput-char v1, p1, v3

    .line 1144
    sget-char v1, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    aput-char v1, p4, v3

    .line 1147
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    aget-char v4, p0, v4

    aget-char v3, p4, v3

    xor-int/2addr v3, v4

    int-to-long v3, v3

    sget-wide v5, Lccsansan/bh/addDownloadListener;->getDownloadedList:J

    xor-long/2addr v3, v5

    sget v5, Lccsansan/bh/addDownloadListener;->getDownloadingRecordByUrl:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsansan/bh/addDownloadListener;->deleteDownItem:C

    int-to-long v5, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v2, v1

    .line 1132
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1154
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1155
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static unifiedDownload()Lccsansan/bh/addDownloadListener;
    .locals 3

    .line 4
    sget v0, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    sget-object v0, Lccsansan/bh/addDownloadListener;->removeDownloadListener:Lccsansan/bh/addDownloadListener;

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method private unifiedDownload(Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 100
    nop

    .line 32
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/san/convert/database/addDownloadListener;->fromName(Ljava/lang/String;)Lccsancom/san/convert/database/addDownloadListener;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lccsancom/san/convert/database/addDownloadListener;->getValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x11

    if-eqz v1, :cond_17

    .line 37
    sget-object v1, Lccsancom/san/convert/database/addDownloadListener;->AZ_PENDING:Lccsancom/san/convert/database/addDownloadListener;

    if-ne v0, v1, :cond_0

    .line 38
    new-instance v0, Lccsansan/bs/getDownloadingList;

    invoke-direct {v0, p1}, Lccsansan/bs/getDownloadingList;-><init>(Lccsancom/san/convert/database/ConvertIntent;)V

    goto :goto_0

    .line 39
    :cond_0
    sget-object v1, Lccsancom/san/convert/database/addDownloadListener;->ACTIVATE_PENDING:Lccsancom/san/convert/database/addDownloadListener;

    if-ne v0, v1, :cond_16

    .line 40
    new-instance v0, Lccsansan/bs/addDownloadListener;

    invoke-direct {v0, p1}, Lccsansan/bs/addDownloadListener;-><init>(Lccsancom/san/convert/database/ConvertIntent;)V

    .line 45
    :goto_0
    invoke-virtual {v0}, Lccsansan/bs/IncentiveDownloadUtils;->unifiedDownload()Lccsansan/bs/IncentiveDownloadUtils$removeDownloadListener;

    move-result-object v1

    .line 46
    instance-of v2, v1, Lccsansan/bs/getDownloadingList$getDownloadingList$IncentiveDownloadUtils;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 54
    const/16 v2, 0x60

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v4, "event"

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    sget v0, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_12

    goto/16 :goto_d

    .line 62
    :pswitch_0
    instance-of v2, v1, Lccsansan/bs/addDownloadListener$addDownloadListener$IncentiveDownloadUtils;

    const/16 v6, 0xa

    if-eqz v2, :cond_b

    .line 63
    invoke-virtual {v1, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, 0x3818c735

    if-eq v2, v4, :cond_2

    .line 54
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    :goto_2
    packed-switch v4, :pswitch_data_1

    .line 100
    sget v3, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v3, v3, 0x51

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    goto :goto_4

    .line 64
    :pswitch_1
    const-string v2, "pre_activated"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    goto :goto_3

    :cond_3
    const/16 v6, 0x37

    :goto_3
    packed-switch v6, :pswitch_data_2

    goto :goto_5

    :pswitch_2
    sget v0, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    .line 64
    :cond_4
    goto :goto_6

    :cond_5
    :goto_4
    const v3, 0x4377bbbf

    if-eq v2, v3, :cond_7

    :cond_6
    goto :goto_5

    :cond_7
    const-string v2, "network_unavailable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 100
    sget v0, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    :cond_8
    const/4 v3, 0x1

    goto :goto_6

    .line 64
    :goto_5
    const/4 v3, -0x1

    :goto_6
    if-eqz v3, :cond_a

    .line 100
    sget v0, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_9

    .line 70
    sget-object v0, Lccsancom/san/convert/database/addDownloadListener;->ACTIVATE_FAILURE:Lccsancom/san/convert/database/addDownloadListener;

    .line 71
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->execute()I

    move-result v1

    shl-int/2addr v1, v5

    goto :goto_7

    .line 70
    :cond_9
    sget-object v0, Lccsancom/san/convert/database/addDownloadListener;->ACTIVATE_FAILURE:Lccsancom/san/convert/database/addDownloadListener;

    .line 71
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->execute()I

    move-result v1

    add-int/2addr v1, v5

    :goto_7
    invoke-virtual {p1, v1}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(I)V

    goto/16 :goto_10

    .line 72
    :cond_a
    sget-object v0, Lccsancom/san/convert/database/addDownloadListener;->ACTIVATE_SUCCESS:Lccsancom/san/convert/database/addDownloadListener;

    goto/16 :goto_10

    .line 81
    :cond_b
    invoke-virtual {v0}, Lccsansan/bs/IncentiveDownloadUtils;->addDownloadListener()Lccsansan/bs/IncentiveDownloadUtils$removeDownloadListener;

    move-result-object v0

    .line 82
    instance-of v1, v0, Lccsansan/bs/getDownloadingList$getDownloadingList$addDownloadListener;

    if-eqz v1, :cond_c

    .line 54
    goto :goto_8

    :cond_c
    const/16 v3, 0x2f

    :goto_8
    packed-switch v3, :pswitch_data_3

    .line 84
    instance-of v1, v0, Lccsansan/bs/getDownloadingList$getDownloadingList$IncentiveDownloadUtils;

    if-eqz v1, :cond_d

    goto :goto_a

    .line 83
    :pswitch_3
    sget-object v0, Lccsancom/san/convert/database/addDownloadListener;->AZ_ING:Lccsancom/san/convert/database/addDownloadListener;

    .line 100
    :goto_9
    :pswitch_4
    goto/16 :goto_10

    .line 54
    :goto_a
    goto :goto_b

    :cond_d
    const/16 v6, 0x42

    :goto_b
    packed-switch v6, :pswitch_data_4

    .line 87
    instance-of v1, v0, Lccsansan/bs/addDownloadListener$addDownloadListener$addDownloadListener;

    if-eqz v1, :cond_f

    goto :goto_c

    .line 85
    :pswitch_5
    sget-object v0, Lccsancom/san/convert/database/addDownloadListener;->AZ_FAILURE:Lccsancom/san/convert/database/addDownloadListener;

    .line 86
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveSDK()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {p1, v1}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener(I)V

    goto/16 :goto_10

    .line 100
    :goto_c
    sget v0, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    .line 88
    :cond_e
    sget-object v0, Lccsancom/san/convert/database/addDownloadListener;->ACTIVATE_ING:Lccsancom/san/convert/database/addDownloadListener;

    goto :goto_9

    .line 89
    :cond_f
    instance-of v1, v0, Lccsansan/bs/addDownloadListener$addDownloadListener$IncentiveDownloadUtils;

    if-eqz v1, :cond_11

    .line 100
    sget v0, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_10

    .line 90
    :cond_10
    sget-object v0, Lccsancom/san/convert/database/addDownloadListener;->ACTIVATE_FAILURE:Lccsancom/san/convert/database/addDownloadListener;

    .line 91
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->execute()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {p1, v1}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(I)V

    goto/16 :goto_10

    .line 98
    :cond_11
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support task result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_12
    :goto_d
    nop

    .line 47
    invoke-virtual {v1, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    rsub-int v1, v1, 0x76b7

    int-to-char v1, v1

    const v2, -0x55e0143e

    invoke-static {v3}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const-string v4, "\u4850\u140c\u0e70\uf1d0\u3d49\u96b5\u13ab\ucd61\u8536\ud7cc\ua79e\u05e2\u2586"

    const-string v10, "\u0000\u0000\u0000\u0000"

    const-string v11, "\uc2f2\u1feb\ub7aa\uf076"

    cmp-long v12, v6, v8

    sub-int/2addr v2, v12

    invoke-static {v4, v10, v1, v2, v11}, Lccsansan/bh/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 71
    sget v0, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_13

    .line 54
    const/4 v3, 0x1

    goto :goto_e

    :cond_13
    nop

    :goto_e
    packed-switch v3, :pswitch_data_5

    .line 53
    :pswitch_6
    sget-object v0, Lccsancom/san/convert/database/addDownloadListener;->AZ_FAILURE:Lccsancom/san/convert/database/addDownloadListener;

    .line 54
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveSDK()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {p1, v1}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener(I)V

    goto :goto_10

    .line 55
    :cond_14
    sget-object v0, Lccsancom/san/convert/database/addDownloadListener;->AZ_SUCCESS:Lccsancom/san/convert/database/addDownloadListener;

    .line 100
    sget v1, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_15

    .line 54
    const/16 v1, 0xc

    goto :goto_f

    :cond_15
    const/16 v1, 0x23

    :goto_f
    packed-switch v1, :pswitch_data_6

    .line 100
    goto/16 :goto_9

    .line 96
    :goto_10
    invoke-virtual {v0}, Lccsancom/san/convert/database/addDownloadListener;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lccsancom/san/convert/database/TaskDatabase;->addDownloadListener()Lccsancom/san/convert/database/TaskDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/convert/database/TaskDatabase;->unifiedDownload()Lccsancom/san/convert/database/getDownloadingList;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/san/convert/database/getDownloadingList;->removeDownloadListener(Lccsancom/san/convert/database/ConvertIntent;)V

    return-void

    .line 99
    :cond_16
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "schedule invalid task:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_17
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "schedule invalid state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_12

    :goto_11
    throw p1

    :goto_12
    goto :goto_11

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xa
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x23
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public addDownloadListener(Lccsansan/bs/getDownloadingRecordByUrl;)V
    .locals 1

    .line 66
    nop

    .line 49
    new-instance v0, Lccsansan/bh/addDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v0, p0, p1}, Lccsansan/bh/addDownloadListener$IncentiveDownloadUtils;-><init>(Lccsansan/bh/addDownloadListener;Lccsansan/bs/getDownloadingRecordByUrl;)V

    .line 66
    iget-object p1, p0, Lccsansan/bh/addDownloadListener;->unifiedDownload:Lccsansan/bk/getDownloadStatusByUrl;

    invoke-virtual {p1}, Lccsansan/bk/getDownloadStatusByUrl;->IncentiveDownloadUtils()Lccsansan/bk/deleteDownItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsansan/bk/deleteDownItem;->unifiedDownload(Lccsansan/bk/getDownloadingList;)V

    sget p1, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public getDownloadingList(ILccsansan/bh/IncentiveDownloadUtils;)V
    .locals 1

    .line 26
    nop

    .line 5
    new-instance v0, Lccsansan/bh/addDownloadListener$removeDownloadListener;

    invoke-direct {v0, p0, p1, p2}, Lccsansan/bh/addDownloadListener$removeDownloadListener;-><init>(Lccsansan/bh/addDownloadListener;ILccsansan/bh/IncentiveDownloadUtils;)V

    .line 26
    iget-object p1, p0, Lccsansan/bh/addDownloadListener;->unifiedDownload:Lccsansan/bk/getDownloadStatusByUrl;

    invoke-virtual {p1}, Lccsansan/bk/getDownloadStatusByUrl;->IncentiveDownloadUtils()Lccsansan/bk/deleteDownItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsansan/bk/deleteDownItem;->unifiedDownload(Lccsansan/bk/getDownloadingList;)V

    sget p1, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0x12

    goto :goto_0

    :cond_0
    const/16 p1, 0x3d

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x22

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener()Lccsansan/bk/getDownloadStatusByUrl;
    .locals 4

    .line 101
    sget v0, Lccsansan/bh/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v0, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lccsansan/bh/addDownloadListener;->unifiedDownload:Lccsansan/bk/getDownloadStatusByUrl;

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lccsansan/bh/addDownloadListener;->unifiedDownload:Lccsansan/bk/getDownloadStatusByUrl;

    goto :goto_2

    :goto_1
    const/16 v3, 0x58

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/bh/addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
