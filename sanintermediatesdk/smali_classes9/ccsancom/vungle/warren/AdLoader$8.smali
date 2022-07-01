.class Lccsancom/vungle/warren/AdLoader$8;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Lccsancom/vungle/warren/persistence/Repository$SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/AdLoader;->unzipFile(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/AdAsset;Ljava/io/File;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/AdLoader;

.field final synthetic val$downloadedFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/AdLoader;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/AdLoader;

    .line 1816
    iput-object p1, p0, Lccsancom/vungle/warren/AdLoader$8;->this$0:Lccsancom/vungle/warren/AdLoader;

    iput-object p2, p0, Lccsancom/vungle/warren/AdLoader$8;->val$downloadedFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "ignored"    # Ljava/lang/Exception;

    .line 1834
    return-void
.end method

.method public onSaved()V
    .locals 2

    .line 1819
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$8;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$2500(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/utility/Executors;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lccsancom/vungle/warren/AdLoader$8$1;

    invoke-direct {v1, p0}, Lccsancom/vungle/warren/AdLoader$8$1;-><init>(Lccsancom/vungle/warren/AdLoader$8;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1830
    return-void
.end method
