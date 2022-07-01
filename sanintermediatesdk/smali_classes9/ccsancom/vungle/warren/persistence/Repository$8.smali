.class Lccsancom/vungle/warren/persistence/Repository$8;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/Repository;->findValidAdvertisementsForPlacement(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lccsancom/vungle/warren/model/Advertisement;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/persistence/Repository;

.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 519
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/Repository$8;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lccsancom/vungle/warren/persistence/Repository$8;->val$placementId:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/vungle/warren/persistence/Repository$8;->val$eventId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 519
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/Repository$8;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository$8;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository$8;->val$placementId:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/vungle/warren/persistence/Repository$8;->val$eventId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsancom/vungle/warren/persistence/Repository;->access$500(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
