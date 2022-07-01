.class Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/cr/addDownloadListener$getDownloadedRecordByUrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;-><init>(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;


# direct methods
.method constructor <init>(Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList$removeDownloadListener;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 2
    invoke-static {p2}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList$removeDownloadListener;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p2, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;->removeDownloadListener(Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;Z)V

    return-void
.end method
