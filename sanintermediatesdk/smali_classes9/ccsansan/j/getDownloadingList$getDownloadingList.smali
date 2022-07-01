.class Lccsansan/j/getDownloadingList$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/j/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsansan/j/getDownloadingList;


# direct methods
.method constructor <init>(Lccsansan/j/getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/j/getDownloadingList$getDownloadingList;->removeDownloadListener:Lccsansan/j/getDownloadingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lccsansan/j/getDownloadingList$getDownloadingList;->removeDownloadListener:Lccsansan/j/getDownloadingList;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccsansan/j/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/j/getDownloadingList;Z)Z

    .line 2
    iget-object p1, p0, Lccsansan/j/getDownloadingList$getDownloadingList;->removeDownloadListener:Lccsansan/j/getDownloadingList;

    invoke-virtual {p1}, Lccsansan/i/addDownloadListener;->pause()V

    return-void
.end method
