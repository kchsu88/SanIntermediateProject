.class Lccsansan/bx/removeDownloadListener$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bx/removeDownloadListener;->removeDownloadListener(Lccsansan/bx/removeDownloadListener$getDownloadingList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/bx/removeDownloadListener;

.field final synthetic getDownloadingList:I


# direct methods
.method constructor <init>(Lccsansan/bx/removeDownloadListener;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bx/removeDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/bx/removeDownloadListener;

    iput p2, p0, Lccsansan/bx/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lccsansan/bx/removeDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/bx/removeDownloadListener;

    invoke-static {p1}, Lccsansan/bx/removeDownloadListener;->getDownloadingList(Lccsansan/bx/removeDownloadListener;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsansan/bx/removeDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/bx/removeDownloadListener;

    invoke-static {p1}, Lccsansan/bx/removeDownloadListener;->getDownloadingList(Lccsansan/bx/removeDownloadListener;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lccsansan/bx/removeDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/bx/removeDownloadListener;

    invoke-static {p1}, Lccsansan/bx/removeDownloadListener;->getDownloadingList(Lccsansan/bx/removeDownloadListener;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lccsansan/bx/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lccsansan/bx/removeDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/bx/removeDownloadListener;

    invoke-static {p1}, Lccsansan/bx/removeDownloadListener;->getDownloadingList(Lccsansan/bx/removeDownloadListener;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lccsansan/bx/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lccsansan/ck/getDownloadingRecordByUrl;->getDownloadingList(Ljava/lang/String;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method
