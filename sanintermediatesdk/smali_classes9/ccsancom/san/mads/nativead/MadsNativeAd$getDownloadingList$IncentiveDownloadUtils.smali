.class Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;->unifiedDownload(Lccsanandroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsanandroid/view/View;

.field final synthetic getDownloadingList:Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;


# direct methods
.method constructor <init>(Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;Lccsanandroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;

    iput-object p2, p0, Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;

    iget-object v0, v0, Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-static {v0}, Lccsancom/san/mads/nativead/MadsNativeAd;->access$100(Lccsancom/san/mads/nativead/MadsNativeAd;)Lccsansan/ck/getDownloadedList;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/view/View;

    invoke-virtual {v1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {p1, p2}, Lccsansan/ck/getDownloadingRecordByUrl;->removeDownloadListener(ZZ)I

    move-result p1

    const-string p2, "cardbutton"

    invoke-virtual {v0, v1, p2, p1}, Lccsansan/ck/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
