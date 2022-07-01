.class Lccsancom/vungle/warren/persistence/Repository$12;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/Repository;->updateAndSaveReportState(Ljava/lang/String;Ljava/lang/String;II)V
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

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$placementId:Ljava/lang/String;

.field final synthetic val$statusFrom:I

.field final synthetic val$statusTo:I


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/persistence/Repository;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 584
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/Repository$12;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iput p2, p0, Lccsancom/vungle/warren/persistence/Repository$12;->val$statusTo:I

    iput-object p3, p0, Lccsancom/vungle/warren/persistence/Repository$12;->val$placementId:Ljava/lang/String;

    iput p4, p0, Lccsancom/vungle/warren/persistence/Repository$12;->val$statusFrom:I

    iput-object p5, p0, Lccsancom/vungle/warren/persistence/Repository$12;->val$appId:Ljava/lang/String;

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

    .line 584
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/Repository$12;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 587
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 588
    .local v0, "contentValues":Lccsanandroid/content/ContentValues;
    iget v1, p0, Lccsancom/vungle/warren/persistence/Repository$12;->val$statusTo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    new-instance v1, Lccsancom/vungle/warren/persistence/Query;

    const-string v2, "report"

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    .line 591
    .local v1, "query":Lccsancom/vungle/warren/persistence/Query;
    const-string v2, "placementId = ?  AND status = ?  AND appId = ? "

    iput-object v2, v1, Lccsancom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    .line 594
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lccsancom/vungle/warren/persistence/Repository$12;->val$placementId:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lccsancom/vungle/warren/persistence/Repository$12;->val$statusFrom:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lccsancom/vungle/warren/persistence/Repository$12;->val$appId:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iput-object v2, v1, Lccsancom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 596
    iget-object v2, p0, Lccsancom/vungle/warren/persistence/Repository$12;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v2, v2, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v2, v1, v0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->update(Lccsancom/vungle/warren/persistence/Query;Lccsanandroid/content/ContentValues;)J

    .line 597
    const/4 v2, 0x0

    return-object v2
.end method
