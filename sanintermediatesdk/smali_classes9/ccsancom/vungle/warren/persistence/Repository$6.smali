.class Lccsancom/vungle/warren/persistence/Repository$6;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lccsancom/vungle/warren/model/Advertisement;",
        ">;"
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

    .line 435
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/Repository$6;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lccsancom/vungle/warren/persistence/Repository$6;->val$placementId:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/vungle/warren/persistence/Repository$6;->val$eventId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lccsancom/vungle/warren/model/Advertisement;
    .locals 3

    .line 438
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository$6;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository$6;->val$placementId:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/vungle/warren/persistence/Repository$6;->val$eventId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsancom/vungle/warren/persistence/Repository;->access$300(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/model/Advertisement;

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

    .line 435
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/Repository$6;->call()Lccsancom/vungle/warren/model/Advertisement;

    move-result-object v0

    return-object v0
.end method
