.class Lccsansan/f/removeDownloadListener$pause;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/f/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord$Status;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingRecordByUrl:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Z

.field getDownloadingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic removeDownloadListener:Lccsancom/san/xz/base/XzRecord$Status;

.field final synthetic unifiedDownload:Lccsansan/f/removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/removeDownloadListener$pause;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/removeDownloadListener$pause;->getDownloadingRecordByUrl:I

    return-void
.end method

.method constructor <init>(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord$Status;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/f/removeDownloadListener$pause;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    iput-object p2, p0, Lccsansan/f/removeDownloadListener$pause;->removeDownloadListener:Lccsancom/san/xz/base/XzRecord$Status;

    iput-boolean p3, p0, Lccsansan/f/removeDownloadListener$pause;->IncentiveDownloadUtils:Z

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsansan/f/removeDownloadListener$pause;->getDownloadingList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public callBack(Ljava/lang/Exception;)V
    .locals 6

    .line 18
    nop

    .line 12
    sget p1, Lccsansan/f/removeDownloadListener$pause;->getDownloadingRecordByUrl:I

    xor-int/lit8 v0, p1, 0x6f

    and-int/lit8 p1, p1, 0x6f

    const/4 v1, 0x1

    shl-int/2addr p1, v1

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/f/removeDownloadListener$pause;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/f/removeDownloadListener$pause;->getDownloadingList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 12
    const/16 v2, 0x48

    goto :goto_0

    :cond_1
    const/16 v2, 0x29

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    and-int/lit8 v2, p1, 0x6f

    xor-int/lit8 p1, p1, 0x6f

    or-int/2addr p1, v2

    xor-int v3, v2, p1

    and-int/2addr p1, v2

    shl-int/2addr p1, v1

    add-int/2addr v3, p1

    rem-int/lit16 p1, v3, 0x80

    sput p1, Lccsansan/f/removeDownloadListener$pause;->getDownloadingRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    .line 1
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 12
    sget p1, Lccsansan/f/removeDownloadListener$pause;->addDownloadListener:I

    or-int/lit8 v2, p1, 0x2a

    shl-int/2addr v2, v1

    xor-int/lit8 p1, p1, 0x2a

    sub-int/2addr v2, p1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsansan/f/removeDownloadListener$pause;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    .line 18
    :cond_3
    goto/16 :goto_c

    .line 7
    :cond_4
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$pause;->getDownloadingList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 12
    sget v2, Lccsansan/f/removeDownloadListener$pause;->addDownloadListener:I

    xor-int/lit8 v3, v2, 0x69

    and-int/lit8 v4, v2, 0x69

    or-int/2addr v3, v4

    shl-int/2addr v3, v1

    and-int/lit8 v4, v2, -0x6a

    xor-int/lit8 v2, v2, -0x1

    and-int/lit8 v2, v2, 0x69

    or-int/2addr v2, v4

    neg-int v2, v2

    xor-int/lit8 v2, v2, -0x1

    sub-int/2addr v3, v2

    sub-int/2addr v3, v1

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsansan/f/removeDownloadListener$pause;->getDownloadingRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5

    .line 18
    :cond_5
    :goto_1
    nop

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 12
    const/16 v2, 0x44

    goto :goto_2

    :cond_6
    const/16 v2, 0x9

    :goto_2
    packed-switch v2, :pswitch_data_1

    sget v2, Lccsansan/f/removeDownloadListener$pause;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x44

    or-int/lit8 v3, v2, -0x1

    shl-int/2addr v3, v1

    xor-int/lit8 v2, v2, -0x1

    sub-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsansan/f/removeDownloadListener$pause;->addDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_d

    goto/16 :goto_b

    .line 11
    :pswitch_1
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$pause;->getDownloadingList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 12
    sget v2, Lccsansan/f/removeDownloadListener$pause;->getDownloadingRecordByUrl:I

    and-int/lit8 v3, v2, 0x11

    xor-int/lit8 v2, v2, 0x11

    or-int/2addr v2, v3

    or-int v4, v3, v2

    shl-int/2addr v4, v1

    xor-int/2addr v2, v3

    sub-int/2addr v4, v2

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lccsansan/f/removeDownloadListener$pause;->addDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_7

    .line 18
    :cond_7
    :pswitch_2
    nop

    .line 11
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 12
    const/16 v2, 0x51

    goto :goto_4

    :cond_8
    const/16 v2, 0x41

    :goto_4
    packed-switch v2, :pswitch_data_2

    .line 18
    goto/16 :goto_a

    :pswitch_3
    sget v2, Lccsansan/f/removeDownloadListener$pause;->getDownloadingRecordByUrl:I

    xor-int/lit8 v3, v2, 0x21

    and-int/lit8 v2, v2, 0x21

    shl-int/2addr v2, v1

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsansan/f/removeDownloadListener$pause;->addDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_9

    .line 12
    const/4 v2, 0x1

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    :goto_5
    packed-switch v2, :pswitch_data_3

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/xz/base/XzRecord;

    .line 12
    iget-object v3, p0, Lccsansan/f/removeDownloadListener$pause;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {v3}, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/f/removeDownloadListener;)Lccsansan/f/addDownloadListener;

    move-result-object v3

    invoke-virtual {v2}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsansan/aw/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/aw/IncentiveDownloadUtils;

    move-result-object v3

    check-cast v3, Lccsansan/f/IncentiveDownloadUtils;

    if-eqz v3, :cond_b

    :goto_6
    goto :goto_7

    .line 18
    :pswitch_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/xz/base/XzRecord;

    .line 12
    iget-object v3, p0, Lccsansan/f/removeDownloadListener$pause;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {v3}, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/f/removeDownloadListener;)Lccsansan/f/addDownloadListener;

    move-result-object v3

    invoke-virtual {v2}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsansan/aw/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/aw/IncentiveDownloadUtils;

    move-result-object v3

    check-cast v3, Lccsansan/f/IncentiveDownloadUtils;

    const/4 v4, 0x0

    :try_start_0
    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_b

    goto :goto_6

    .line 18
    :catchall_0
    move-exception p1

    throw p1

    .line 12
    :goto_7
    sget p1, Lccsansan/f/removeDownloadListener$pause;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x62

    xor-int/lit8 v2, p1, -0x1

    and-int/lit8 p1, p1, -0x1

    shl-int/2addr p1, v1

    add-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsansan/f/removeDownloadListener$pause;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_a

    const/16 p1, 0x39

    goto :goto_8

    :cond_a
    const/16 p1, 0x14

    :goto_8
    packed-switch p1, :pswitch_data_4

    .line 18
    return-void

    .line 12
    :pswitch_5
    const/16 p1, 0xb

    :try_start_1
    div-int/2addr p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    .line 15
    :cond_b
    iget-object v3, p0, Lccsansan/f/removeDownloadListener$pause;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {v3, v2}, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord;)Lccsansan/f/IncentiveDownloadUtils;

    move-result-object v3

    .line 16
    iget-object v4, p0, Lccsansan/f/removeDownloadListener$pause;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {v4}, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/f/removeDownloadListener;)Lccsansan/f/addDownloadListener;

    move-result-object v4

    invoke-virtual {v4, v3}, Lccsansan/aw/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;)V

    .line 17
    sget-object v3, Lccsancom/san/xz/base/XzRecord$Status;->WAITING:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v2, v3}, Lccsancom/san/xz/base/XzRecord;->setStatus(Lccsancom/san/xz/base/XzRecord$Status;)V

    .line 18
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v3

    new-instance v4, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;

    invoke-direct {v4, p0, v2}, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;-><init>(Lccsansan/f/removeDownloadListener$pause;Lccsancom/san/xz/base/XzRecord;)V

    invoke-virtual {v3, v4}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 12
    sget v2, Lccsansan/f/removeDownloadListener$pause;->getDownloadingRecordByUrl:I

    and-int/lit8 v3, v2, 0x33

    xor-int/lit8 v4, v3, -0x1

    const/16 v5, 0x33

    or-int/2addr v2, v5

    and-int/2addr v2, v4

    shl-int/2addr v3, v1

    xor-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/f/removeDownloadListener$pause;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_c

    goto :goto_9

    :cond_c
    const/16 v5, 0x1b

    :goto_9
    packed-switch v5, :pswitch_data_5

    goto/16 :goto_3

    :goto_a
    sget p1, Lccsansan/f/removeDownloadListener$pause;->addDownloadListener:I

    and-int/lit8 v0, p1, 0x27

    xor-int/lit8 p1, p1, 0x27

    or-int/2addr p1, v0

    neg-int p1, p1

    neg-int p1, p1

    or-int v2, v0, p1

    shl-int/lit8 v1, v2, 0x1

    xor-int/2addr p1, v0

    sub-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/f/removeDownloadListener$pause;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    .line 18
    return-void

    .line 7
    :cond_d
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/xz/base/XzRecord;

    .line 8
    iget-object v3, p0, Lccsansan/f/removeDownloadListener$pause;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {v3, v2}, Lccsansan/ap/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V

    .line 12
    sget v2, Lccsansan/f/removeDownloadListener$pause;->addDownloadListener:I

    and-int/lit8 v3, v2, 0x7b

    xor-int/lit8 v4, v3, -0x1

    or-int/lit8 v2, v2, 0x7b

    and-int/2addr v2, v4

    shl-int/2addr v3, v1

    add-int/2addr v2, v3

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/f/removeDownloadListener$pause;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    goto/16 :goto_1

    .line 18
    :goto_c
    nop

    .line 12
    sget p1, Lccsansan/f/removeDownloadListener$pause;->addDownloadListener:I

    xor-int/lit8 v0, p1, 0x21

    and-int/lit8 v2, p1, 0x21

    or-int/2addr v0, v2

    shl-int/2addr v0, v1

    xor-int/lit8 v1, v2, -0x1

    or-int/lit8 p1, p1, 0x21

    and-int/2addr p1, v1

    neg-int p1, p1

    and-int v1, v0, p1

    or-int/2addr p1, v0

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/f/removeDownloadListener$pause;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    .line 18
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x51
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x39
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1b
        :pswitch_2
    .end packed-switch
.end method

.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener$pause;->addDownloadListener:I

    or-int/lit8 v1, v0, 0x7d

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, 0x7d

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener$pause;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lccsansan/f/removeDownloadListener$pause;->removeDownloadListener:Lccsancom/san/xz/base/XzRecord$Status;

    iget-boolean v2, p0, Lccsansan/f/removeDownloadListener$pause;->IncentiveDownloadUtils:Z

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lccsansan/q/removeDownloadListener;->getDownloadingList(Lccsancom/san/xz/base/XzRecord$Status;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsansan/f/removeDownloadListener$pause;->getDownloadingList:Ljava/util/List;

    sget v0, Lccsansan/f/removeDownloadListener$pause;->addDownloadListener:I

    xor-int/lit8 v1, v0, 0x3f

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    neg-int v0, v0

    and-int v2, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/f/removeDownloadListener$pause;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const/16 v0, 0x3b

    goto :goto_0

    :cond_1
    const/16 v0, 0x49

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch
.end method
