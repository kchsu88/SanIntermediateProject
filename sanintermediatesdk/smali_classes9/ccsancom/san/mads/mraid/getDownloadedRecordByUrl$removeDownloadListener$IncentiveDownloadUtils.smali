.class Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener$IncentiveDownloadUtils;
.super Lccsanandroid/os/CountDownTimer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;


# direct methods
.method constructor <init>(Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;

    invoke-direct {p0, p2, p3, p4, p5}, Lccsanandroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;->unifiedDownload(Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;)Lccsanandroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/AsyncTask;->getStatus()Lccsanandroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Lccsanandroid/os/AsyncTask$Status;->RUNNING:Lccsanandroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;->unifiedDownload(Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;)Lccsanandroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/AsyncTask;->getStatus()Lccsanandroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Lccsanandroid/os/AsyncTask$Status;->PENDING:Lccsanandroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;->unifiedDownload(Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener;)Lccsanandroid/os/AsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
