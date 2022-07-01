.class public Lccsancom/vungle/warren/downloader/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/downloader/DownloadRequest$Priority;
    }
.end annotation


# instance fields
.field private cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final cookieString:Ljava/lang/String;

.field final id:Ljava/lang/String;

.field public final networkType:I

.field public final path:Ljava/lang/String;

.field public final pauseOnConnectionLost:Z

.field private priority:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lccsancom/vungle/warren/downloader/AssetPriority;",
            ">;"
        }
    .end annotation
.end field

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7
    .param p1, "networkType"    # I
    .param p2, "priority"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "pauseOnConnectionLost"    # Z
    .param p6, "cookieString"    # Ljava/lang/String;

    .line 61
    new-instance v2, Lccsancom/vungle/warren/downloader/AssetPriority;

    const/4 v0, 0x0

    invoke-direct {v2, p2, v0}, Lccsancom/vungle/warren/downloader/AssetPriority;-><init>(II)V

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lccsancom/vungle/warren/downloader/DownloadRequest;-><init>(ILccsancom/vungle/warren/downloader/AssetPriority;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(ILccsancom/vungle/warren/downloader/AssetPriority;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "priority"    # Lccsancom/vungle/warren/downloader/AssetPriority;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "pauseOnConnectionLost"    # Z
    .param p6, "cookieString"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequest;->priority:Ljava/util/concurrent/atomic/AtomicReference;

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequest;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    invoke-static {p4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iput p1, p0, Lccsancom/vungle/warren/downloader/DownloadRequest;->networkType:I

    .line 75
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequest;->priority:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 76
    iput-object p3, p0, Lccsancom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lccsancom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    .line 79
    iput-boolean p5, p0, Lccsancom/vungle/warren/downloader/DownloadRequest;->pauseOnConnectionLost:Z

    .line 80
    iput-object p6, p0, Lccsancom/vungle/warren/downloader/DownloadRequest;->cookieString:Ljava/lang/String;

    .line 81
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Url or path is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 47
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lccsancom/vungle/warren/downloader/DownloadRequest;-><init>(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "cookieString"    # Ljava/lang/String;

    .line 51
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lccsancom/vungle/warren/downloader/DownloadRequest;-><init>(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 2

    .line 84
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequest;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 85
    return-void
.end method

.method public getPriority()Lccsancom/vungle/warren/downloader/AssetPriority;
    .locals 1

    .line 96
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequest;->priority:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/downloader/AssetPriority;

    return-object v0
.end method

.method isCancelled()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequest;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setPriority(Lccsancom/vungle/warren/downloader/AssetPriority;)V
    .locals 1
    .param p1, "priority"    # Lccsancom/vungle/warren/downloader/AssetPriority;

    .line 92
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequest;->priority:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadRequest{networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/vungle/warren/downloader/DownloadRequest;->networkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/vungle/warren/downloader/DownloadRequest;->priority:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", path=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pauseOnConnectionLost="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lccsancom/vungle/warren/downloader/DownloadRequest;->pauseOnConnectionLost:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cookieString=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/downloader/DownloadRequest;->cookieString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", cancelled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/vungle/warren/downloader/DownloadRequest;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
