.class final Lccsancom/san/core/unifiedDownload$getDownloadedList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/core/unifiedDownload;->getDownloadedList(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/core/unifiedDownload$getDownloadedList;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/core/unifiedDownload$getDownloadedList;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/aa/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;)V

    return-void
.end method
