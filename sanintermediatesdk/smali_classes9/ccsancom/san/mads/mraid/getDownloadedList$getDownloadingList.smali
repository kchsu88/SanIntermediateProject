.class Lccsancom/san/mads/mraid/getDownloadedList$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/mraid/getDownloadedList;->getDownloadingRecordByUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsancom/san/mads/mraid/getDownloadedList;


# direct methods
.method constructor <init>(Lccsancom/san/mads/mraid/getDownloadedList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/mraid/getDownloadedList$getDownloadingList;->removeDownloadListener:Lccsancom/san/mads/mraid/getDownloadedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lccsancom/san/mads/mraid/getDownloadedList$getDownloadingList;->removeDownloadListener:Lccsancom/san/mads/mraid/getDownloadedList;

    invoke-virtual {p1}, Lccsancom/san/mads/mraid/unifiedDownload;->removeDownloadListener()Lccsancom/san/mads/mraid/unifiedDownload$addDownloadListener;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/san/mads/mraid/unifiedDownload$addDownloadListener;->addDownloadListener()V

    return-void
.end method
