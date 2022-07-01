.class Lccsancom/san/common/offline/getDownloadedList$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/common/offline/getDownloadedList;->onViewCreated(Lccsanandroid/view/View;Lccsanandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/common/offline/getDownloadedList;


# direct methods
.method constructor <init>(Lccsancom/san/common/offline/getDownloadedList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/common/offline/getDownloadedList$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/common/offline/getDownloadedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lccsancom/san/common/offline/getDownloadedList$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/common/offline/getDownloadedList;

    invoke-virtual {p1}, Lccsancom/san/common/offline/IncentiveDownloadUtils;->removeDownloadListener()V

    return-void
.end method
