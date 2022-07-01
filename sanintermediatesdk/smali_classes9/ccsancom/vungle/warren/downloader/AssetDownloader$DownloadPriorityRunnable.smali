.class public abstract Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;
.super Ljava/lang/Object;
.source "AssetDownloader.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/downloader/AssetDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DownloadPriorityRunnable"
.end annotation


# static fields
.field private static final seq:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

.field private final order:I

.field private final priority:Lccsancom/vungle/warren/downloader/AssetPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1211
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->seq:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lccsancom/vungle/warren/downloader/AssetPriority;)V
    .locals 1
    .param p1, "priority"    # Lccsancom/vungle/warren/downloader/AssetPriority;

    .line 1223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1212
    sget-object v0, Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->seq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->order:I

    .line 1224
    iput-object p1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->priority:Lccsancom/vungle/warren/downloader/AssetPriority;

    .line 1225
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 1226
    return-void
.end method

.method constructor <init>(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V
    .locals 1
    .param p1, "mediator"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 1217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1212
    sget-object v0, Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->seq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->order:I

    .line 1218
    iput-object p1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 1219
    iget-object v0, p1, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->priority:Lccsancom/vungle/warren/downloader/AssetPriority;

    iput-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->priority:Lccsancom/vungle/warren/downloader/AssetPriority;

    .line 1220
    invoke-virtual {p1, p0}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->setRunnable(Ljava/lang/Runnable;)V

    .line 1221
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1234
    instance-of v0, p1, Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;

    if-eqz v0, :cond_1

    .line 1235
    move-object v0, p1

    check-cast v0, Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;

    .line 1236
    .local v0, "other":Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;
    invoke-virtual {p0}, Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->getPriority()Lccsancom/vungle/warren/downloader/AssetPriority;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->getPriority()Lccsancom/vungle/warren/downloader/AssetPriority;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/downloader/AssetPriority;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 1237
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 1238
    iget v2, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->order:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->order:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    .line 1240
    :cond_0
    return v1

    .line 1242
    .end local v0    # "other":Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;
    .end local v1    # "result":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method getPriority()Lccsancom/vungle/warren/downloader/AssetPriority;
    .locals 1

    .line 1229
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->mediator:Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->getPriority()Lccsancom/vungle/warren/downloader/AssetPriority;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->priority:Lccsancom/vungle/warren/downloader/AssetPriority;

    :goto_0
    return-object v0
.end method
