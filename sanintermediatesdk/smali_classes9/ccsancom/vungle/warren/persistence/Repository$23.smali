.class Lccsancom/vungle/warren/persistence/Repository$23;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/Repository;->trimVisionData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/persistence/Repository;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/persistence/Repository;I)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 1010
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/Repository$23;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iput p2, p0, Lccsancom/vungle/warren/persistence/Repository$23;->val$size:I

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

    .line 1010
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/Repository$23;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1013
    new-instance v0, Lccsancom/vungle/warren/persistence/Query;

    const-string v1, "vision_data"

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    .line 1014
    .local v0, "query":Lccsancom/vungle/warren/persistence/Query;
    const-string v1, "_id <= ( SELECT MAX( _id ) FROM vision_data ) - ?"

    iput-object v1, v0, Lccsancom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    .line 1017
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget v2, p0, Lccsancom/vungle/warren/persistence/Repository$23;->val$size:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, v0, Lccsancom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 1018
    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository$23;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, v1, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v1, v0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->delete(Lccsancom/vungle/warren/persistence/Query;)V

    .line 1019
    const/4 v1, 0x0

    return-object v1
.end method
