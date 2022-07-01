.class Lccsancom/vungle/warren/downloader/AssetDownloader$3;
.super Ljava/lang/Object;
.source "AssetDownloader.java"

# interfaces
.implements Lccsancom/vungle/warren/utility/NetworkProvider$NetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/downloader/AssetDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/downloader/AssetDownloader;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;

    .line 1202
    iput-object p1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$3;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(I)V
    .locals 3
    .param p1, "type"    # I

    .line 1205
    invoke-static {}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader$3;->this$0:Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->access$2900(Lccsancom/vungle/warren/downloader/AssetDownloader;I)V

    .line 1207
    return-void
.end method
