.class Lccsancom/san/widget/TextProgressButton$getDownloadedList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/widget/TextProgressButton$OnStateClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/widget/TextProgressButton;->registerClick(Lccsansan/dt/removeDownloadListener;Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:J

.field private static getDownloadedList:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic addDownloadListener:Lccsancom/san/widget/TextProgressButton;

.field final synthetic removeDownloadListener:Lccsansan/dt/removeDownloadListener;

.field final synthetic unifiedDownload:Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->getDownloadedList:I

    const-wide v0, 0x3b0349234e161558L    # 1.9940941215140987E-24

    sput-wide v0, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->IncentiveDownloadUtils:J

    return-void
.end method

.method constructor <init>(Lccsancom/san/widget/TextProgressButton;Lccsansan/dt/removeDownloadListener;Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->addDownloadListener:Lccsancom/san/widget/TextProgressButton;

    iput-object p2, p0, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    iput-object p3, p0, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->unifiedDownload:Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1077
    sget-object v0, Lccsansan/d/deleteDownList;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_0
    sput p1, Lccsansan/d/deleteDownList;->unifiedDownload:I

    .line 1083
    array-length p1, p0

    new-array p1, p1, [C

    .line 1084
    const/4 v1, 0x0

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    :goto_0
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1086
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v2, Lccsansan/d/deleteDownList;->getDownloadingList:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v4, Lccsansan/d/deleteDownList;->unifiedDownload:I

    mul-int v3, v3, v4

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->IncentiveDownloadUtils:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    .line 1084
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    goto :goto_0

    .line 1090
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1091
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x49

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    :goto_0
    const-string v1, "onClick "

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    sget-object v0, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch
.end method

.method public onDownloading()V
    .locals 6

    .line 1
    sget v0, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v2, ""

    const-string v3, "\u1537\u118b\u1c66\u1b00\u07db\u0287\u095a\u341c\u30d1\u3f99\u3a53\u2129\u2de3\u28e1"

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    const/16 v4, 0x30

    invoke-static {v2, v4, v1, v1}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    rsub-int v1, v1, 0x4bc

    invoke-static {v3, v1}, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_0
    sget-object v0, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    const/16 v4, 0x768d

    const/16 v5, 0x1a

    invoke-static {v2, v5, v1, v1}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    div-int/2addr v4, v1

    invoke-static {v3, v4}, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onNormal(Lccsancom/san/widget/TextProgressButton$Status;)V
    .locals 5

    .line 6
    nop

    .line 1
    sget-object v0, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNormal  Status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lccsancom/san/widget/TextProgressButton$Status;->COMPLETED:Lccsancom/san/widget/TextProgressButton$Status;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    .line 4
    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 3
    :pswitch_0
    sget-object v3, Lccsancom/san/widget/TextProgressButton$Status;->AZED:Lccsancom/san/widget/TextProgressButton$Status;

    if-eq p1, v3, :cond_2

    .line 6
    sget v3, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->getDownloadedList:I

    add-int/lit8 v3, v3, 0x79

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->getDownloadingList:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 4
    iget-object v3, p0, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->addDownloadListener:Lccsancom/san/widget/TextProgressButton;

    invoke-virtual {v3}, Lccsanandroid/widget/ProgressBar;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-static {v3, v4}, Lccsancom/san/widget/TextProgressButton;->access$1600(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 6
    :catchall_0
    move-exception p1

    throw p1

    .line 4
    :cond_1
    iget-object v3, p0, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->addDownloadListener:Lccsancom/san/widget/TextProgressButton;

    invoke-virtual {v3}, Lccsanandroid/widget/ProgressBar;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-static {v3, v4}, Lccsancom/san/widget/TextProgressButton;->access$1600(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)V

    .line 6
    :goto_1
    nop

    :cond_2
    :goto_2
    iget-object v3, p0, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->unifiedDownload:Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;

    sget-object v4, Lccsancom/san/widget/TextProgressButton$Status;->AZED:Lccsancom/san/widget/TextProgressButton$Status;

    if-ne p1, v4, :cond_3

    .line 4
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    const/4 v4, 0x1

    :goto_3
    packed-switch v4, :pswitch_data_1

    .line 6
    const/4 v4, 0x1

    goto :goto_4

    :pswitch_1
    const/4 v4, 0x0

    :goto_4
    if-ne p1, v0, :cond_5

    .line 4
    sget p1, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x35

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    .line 6
    :cond_4
    const/4 v1, 0x1

    :cond_5
    invoke-interface {v3, v4, v1}, Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;->a(ZZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .line 2
    sget v0, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    sget-object v0, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    const-string v1, "onPause "

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->addDownloadListener:Lccsancom/san/widget/TextProgressButton;

    invoke-virtual {v0}, Lccsanandroid/widget/ProgressBar;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, v1}, Lccsancom/san/widget/TextProgressButton;->access$1600(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)V

    sget v0, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/widget/TextProgressButton$getDownloadedList;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method
