.class Lccsancom/vungle/warren/persistence/Repository$7;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/Repository;->findPotentiallyExpiredAd(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;
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

    .line 457
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/Repository$7;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lccsancom/vungle/warren/persistence/Repository$7;->val$eventId:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/vungle/warren/persistence/Repository$7;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lccsancom/vungle/warren/model/Advertisement;
    .locals 8

    .line 460
    new-instance v0, Lccsancom/vungle/warren/persistence/Query;

    const-string v1, "advertisement"

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    .line 462
    .local v0, "query":Lccsancom/vungle/warren/persistence/Query;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    const-string v2, "placement_id = ? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    const-string v2, "(state = ? OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string v2, "state = ?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 468
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lccsancom/vungle/warren/persistence/Repository$7;->val$eventId:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    .line 469
    const-string v2, " AND item_id = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    iget-object v7, p0, Lccsancom/vungle/warren/persistence/Repository$7;->val$placementId:Ljava/lang/String;

    aput-object v7, v2, v6

    .line 472
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 473
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    iget-object v3, p0, Lccsancom/vungle/warren/persistence/Repository$7;->val$eventId:Ljava/lang/String;

    aput-object v3, v2, v4

    .local v2, "args":[Ljava/lang/String;
    goto :goto_0

    .line 477
    .end local v2    # "args":[Ljava/lang/String;
    :cond_0
    new-array v2, v4, [Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/persistence/Repository$7;->val$placementId:Ljava/lang/String;

    aput-object v4, v2, v6

    .line 479
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 480
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 484
    .restart local v2    # "args":[Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lccsancom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    .line 485
    iput-object v2, v0, Lccsancom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 487
    iget-object v3, p0, Lccsancom/vungle/warren/persistence/Repository$7;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v3, v3, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v3, v0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->query(Lccsancom/vungle/warren/persistence/Query;)Lccsanandroid/database/Cursor;

    move-result-object v3

    .line 489
    .local v3, "cursor":Lccsanandroid/database/Cursor;
    iget-object v4, p0, Lccsancom/vungle/warren/persistence/Repository$7;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    .line 490
    invoke-static {v4}, Lccsancom/vungle/warren/persistence/Repository;->access$400(Lccsancom/vungle/warren/persistence/Repository;)Ljava/util/Map;

    move-result-object v4

    const-class v5, Lccsancom/vungle/warren/model/Advertisement;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;

    .line 492
    .local v4, "adapter":Lccsancom/vungle/warren/model/AdvertisementDBAdapter;
    const/4 v5, 0x0

    .line 494
    .local v5, "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 495
    new-instance v6, Lccsanandroid/content/ContentValues;

    invoke-direct {v6}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 496
    .local v6, "values":Lccsanandroid/content/ContentValues;
    invoke-static {v3, v6}, Lccsanandroid/database/DatabaseUtils;->cursorRowToContentValues(Lccsanandroid/database/Cursor;Lccsanandroid/content/ContentValues;)V

    .line 497
    invoke-virtual {v4, v6}, Lccsancom/vungle/warren/model/AdvertisementDBAdapter;->fromContentValues(Lccsanandroid/content/ContentValues;)Lccsancom/vungle/warren/model/Advertisement;

    move-result-object v5

    .line 500
    .end local v6    # "values":Lccsanandroid/content/ContentValues;
    :cond_1
    if-eqz v3, :cond_2

    .line 501
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 503
    :cond_2
    return-object v5
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 457
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/Repository$7;->call()Lccsancom/vungle/warren/model/Advertisement;

    move-result-object v0

    return-object v0
.end method
