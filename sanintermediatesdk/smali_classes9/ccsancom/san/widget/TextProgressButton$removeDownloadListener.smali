.class Lccsancom/san/widget/TextProgressButton$removeDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/widget/TextProgressButton;->checkBottomStatus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsancom/san/widget/TextProgressButton;


# direct methods
.method constructor <init>(Lccsancom/san/widget/TextProgressButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 5

    .line 1
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    iget v1, v0, Lccsancom/san/widget/TextProgressButton;->azStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2
    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->AZED:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-static {v0, v1}, Lccsancom/san/widget/TextProgressButton;->access$000(Lccsancom/san/widget/TextProgressButton;Lccsancom/san/widget/TextProgressButton$Status;)V

    .line 3
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v0}, Lccsancom/san/widget/TextProgressButton;->access$800(Lccsancom/san/widget/TextProgressButton;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/san/widget/TextProgressButton;->setProgress(I)V

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lccsancom/san/widget/TextProgressButton;->access$200(Lccsancom/san/widget/TextProgressButton;)Lccsansan/aa/addDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    iget v1, v0, Lccsancom/san/widget/TextProgressButton;->downloadStatus:I

    if-nez v1, :cond_2

    .line 5
    invoke-static {v0}, Lccsancom/san/widget/TextProgressButton;->access$700(Lccsancom/san/widget/TextProgressButton;)Lccsansan/k/unifiedDownload;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 8
    :cond_1
    sget-object v0, Lccsancom/san/widget/TextProgressButton$getDownloadedRecordByUrl;->getDownloadingList:[I

    iget-object v1, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v1}, Lccsancom/san/widget/TextProgressButton;->access$700(Lccsancom/san/widget/TextProgressButton;)Lccsansan/k/unifiedDownload;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/k/unifiedDownload;->removeDownloadListener()Lccsansan/k/unifiedDownload$unifiedDownload;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x64

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 24
    :pswitch_0
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v0}, Lccsancom/san/widget/TextProgressButton;->access$700(Lccsancom/san/widget/TextProgressButton;)Lccsansan/k/unifiedDownload;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/k/unifiedDownload;->getDownloadingList()J

    move-result-wide v3

    mul-long v3, v3, v1

    iget-object v1, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v1}, Lccsancom/san/widget/TextProgressButton;->access$700(Lccsancom/san/widget/TextProgressButton;)Lccsansan/k/unifiedDownload;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/k/unifiedDownload;->addDownloadListener()J

    move-result-wide v1

    div-long/2addr v3, v1

    long-to-float v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/san/widget/TextProgressButton;->setProgress(I)V

    .line 25
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->WAITING:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-static {v0, v1}, Lccsancom/san/widget/TextProgressButton;->access$000(Lccsancom/san/widget/TextProgressButton;Lccsancom/san/widget/TextProgressButton$Status;)V

    goto/16 :goto_0

    .line 26
    :pswitch_1
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->NORMAL:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-static {v0, v1}, Lccsancom/san/widget/TextProgressButton;->access$000(Lccsancom/san/widget/TextProgressButton;Lccsancom/san/widget/TextProgressButton$Status;)V

    goto/16 :goto_0

    .line 27
    :pswitch_2
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v0}, Lccsancom/san/widget/TextProgressButton;->access$700(Lccsancom/san/widget/TextProgressButton;)Lccsansan/k/unifiedDownload;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/k/unifiedDownload;->getDownloadingList()J

    move-result-wide v1

    iget-object v3, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v3}, Lccsancom/san/widget/TextProgressButton;->access$700(Lccsancom/san/widget/TextProgressButton;)Lccsansan/k/unifiedDownload;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/k/unifiedDownload;->addDownloadListener()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lccsancom/san/widget/TextProgressButton;->access$900(Lccsancom/san/widget/TextProgressButton;JJ)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/san/widget/TextProgressButton;->setProgress(I)V

    .line 28
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->PROCESSING:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-static {v0, v1}, Lccsancom/san/widget/TextProgressButton;->access$000(Lccsancom/san/widget/TextProgressButton;Lccsancom/san/widget/TextProgressButton$Status;)V

    goto :goto_0

    .line 29
    :pswitch_3
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    sget-object v3, Lccsancom/san/widget/TextProgressButton$Status;->USER_PAUSE:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-static {v0, v3}, Lccsancom/san/widget/TextProgressButton;->access$000(Lccsancom/san/widget/TextProgressButton;Lccsancom/san/widget/TextProgressButton$Status;)V

    .line 30
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v0}, Lccsancom/san/widget/TextProgressButton;->access$700(Lccsancom/san/widget/TextProgressButton;)Lccsansan/k/unifiedDownload;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/k/unifiedDownload;->getDownloadingList()J

    move-result-wide v3

    mul-long v3, v3, v1

    iget-object v1, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v1}, Lccsancom/san/widget/TextProgressButton;->access$700(Lccsancom/san/widget/TextProgressButton;)Lccsansan/k/unifiedDownload;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/k/unifiedDownload;->addDownloadListener()J

    move-result-wide v1

    div-long/2addr v3, v1

    long-to-float v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/san/widget/TextProgressButton;->setProgress(I)V

    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    iget v1, v0, Lccsancom/san/widget/TextProgressButton;->azStatus:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 45
    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->UPDATE:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-static {v0, v1}, Lccsancom/san/widget/TextProgressButton;->access$000(Lccsancom/san/widget/TextProgressButton;Lccsancom/san/widget/TextProgressButton$Status;)V

    .line 46
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v0}, Lccsancom/san/widget/TextProgressButton;->access$1000(Lccsancom/san/widget/TextProgressButton;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/san/widget/TextProgressButton;->setProgress(I)V

    goto :goto_0

    .line 47
    :cond_3
    invoke-static {v0}, Lccsancom/san/widget/TextProgressButton;->access$200(Lccsancom/san/widget/TextProgressButton;)Lccsansan/aa/addDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    iget v1, v0, Lccsancom/san/widget/TextProgressButton;->downloadStatus:I

    if-ne v1, v2, :cond_4

    .line 48
    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->COMPLETED:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-static {v0, v1}, Lccsancom/san/widget/TextProgressButton;->access$000(Lccsancom/san/widget/TextProgressButton;Lccsancom/san/widget/TextProgressButton$Status;)V

    .line 49
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v0}, Lccsancom/san/widget/TextProgressButton;->access$1100(Lccsancom/san/widget/TextProgressButton;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/san/widget/TextProgressButton;->setProgress(I)V

    goto :goto_0

    .line 51
    :cond_4
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    sget-object v1, Lccsancom/san/widget/TextProgressButton$Status;->NORMAL:Lccsancom/san/widget/TextProgressButton$Status;

    invoke-static {v0, v1}, Lccsancom/san/widget/TextProgressButton;->access$000(Lccsancom/san/widget/TextProgressButton;Lccsancom/san/widget/TextProgressButton$Status;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public execute()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    invoke-virtual {v0}, Lccsanandroid/widget/ProgressBar;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v2}, Lccsancom/san/widget/TextProgressButton;->access$400(Lccsancom/san/widget/TextProgressButton;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v3}, Lccsancom/san/widget/TextProgressButton;->access$500(Lccsancom/san/widget/TextProgressButton;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lccsansan/bw/getDownloadedCount;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lccsancom/san/widget/TextProgressButton;->azStatus:I

    .line 2
    sget-object v0, Lccsancom/san/widget/TextProgressButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress azStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    iget v2, v2, Lccsancom/san/widget/TextProgressButton;->azStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v0}, Lccsancom/san/widget/TextProgressButton;->access$200(Lccsancom/san/widget/TextProgressButton;)Lccsansan/aa/addDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v0}, Lccsancom/san/widget/TextProgressButton;->access$600(Lccsancom/san/widget/TextProgressButton;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsansan/aa/addDownloadListener;->getDownloadingList(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lccsancom/san/widget/TextProgressButton;->downloadStatus:I

    .line 6
    :cond_0
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    iget v1, v0, Lccsancom/san/widget/TextProgressButton;->azStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Lccsancom/san/widget/TextProgressButton;->access$200(Lccsancom/san/widget/TextProgressButton;)Lccsansan/aa/addDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    iget v1, v0, Lccsancom/san/widget/TextProgressButton;->downloadStatus:I

    if-nez v1, :cond_2

    .line 8
    invoke-static {v0}, Lccsancom/san/widget/TextProgressButton;->access$200(Lccsancom/san/widget/TextProgressButton;)Lccsansan/aa/addDownloadListener;

    move-result-object v1

    iget-object v2, p0, Lccsancom/san/widget/TextProgressButton$removeDownloadListener;->unifiedDownload:Lccsancom/san/widget/TextProgressButton;

    invoke-static {v2}, Lccsancom/san/widget/TextProgressButton;->access$600(Lccsancom/san/widget/TextProgressButton;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsansan/aa/addDownloadListener;->unifiedDownload(Ljava/lang/String;)Lccsansan/k/unifiedDownload;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/san/widget/TextProgressButton;->access$702(Lccsancom/san/widget/TextProgressButton;Lccsansan/k/unifiedDownload;)Lccsansan/k/unifiedDownload;

    :cond_2
    :goto_0
    return-void
.end method
