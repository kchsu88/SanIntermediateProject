.class public Lccsancom/san/hybrid/ui/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private getDownloadingList:Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;


# direct methods
.method public constructor <init>(Lccsanandroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Lccsanandroid/view/Window;->addFlags(I)V

    .line 4
    new-instance v0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;

    invoke-direct {v0, p1}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;-><init>(Lccsanandroid/app/Activity;)V

    iput-object v0, p0, Lccsancom/san/hybrid/ui/unifiedDownload;->getDownloadingList:Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0, p1}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->getDownloadingList(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDownloadingList(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/hybrid/ui/unifiedDownload;->getDownloadingList:Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->getDownloadingList(Z)V

    :cond_0
    return-void
.end method

.method public removeDownloadListener(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lccsancom/san/hybrid/ui/unifiedDownload;->getDownloadingList:Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->unifiedDownload(I)V

    :cond_0
    return-void
.end method
