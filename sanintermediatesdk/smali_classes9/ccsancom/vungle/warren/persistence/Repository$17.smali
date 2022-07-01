.class Lccsancom/vungle/warren/persistence/Repository$17;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/Repository;->getAdvertisementAssetDirectory(Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/persistence/Repository;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 719
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/Repository$17;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lccsancom/vungle/warren/persistence/Repository$17;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository$17;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    invoke-static {v0}, Lccsancom/vungle/warren/persistence/Repository;->access$1100(Lccsancom/vungle/warren/persistence/Repository;)Lccsancom/vungle/warren/persistence/Designer;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository$17;->val$id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/persistence/Designer;->getAssetDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 719
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/Repository$17;->call()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
