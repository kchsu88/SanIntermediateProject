.class Lccsancom/vungle/warren/persistence/Repository$20;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/Repository;->setValidPlacements(Ljava/util/List;)V
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

.field final synthetic val$placements:Ljava/util/List;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/persistence/Repository;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 799
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/Repository$20;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lccsancom/vungle/warren/persistence/Repository$20;->val$placements:Ljava/util/List;

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

    .line 799
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/Repository$20;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 802
    const-class v0, Lccsancom/vungle/warren/persistence/Repository;

    monitor-enter v0

    .line 803
    :try_start_0
    new-instance v1, Lccsanandroid/content/ContentValues;

    invoke-direct {v1}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 804
    .local v1, "contentValues":Lccsanandroid/content/ContentValues;
    const-string v2, "is_valid"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 806
    iget-object v2, p0, Lccsancom/vungle/warren/persistence/Repository$20;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v2, v2, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    new-instance v4, Lccsancom/vungle/warren/persistence/Query;

    const-string v5, "placement"

    invoke-direct {v4, v5}, Lccsancom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v1}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->update(Lccsancom/vungle/warren/persistence/Query;Lccsanandroid/content/ContentValues;)J

    .line 808
    iget-object v2, p0, Lccsancom/vungle/warren/persistence/Repository$20;->val$placements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/model/Placement;

    .line 809
    .local v4, "placement":Lccsancom/vungle/warren/model/Placement;
    iget-object v5, p0, Lccsancom/vungle/warren/persistence/Repository$20;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lccsancom/vungle/warren/model/Placement;

    invoke-static {v5, v6, v7}, Lccsancom/vungle/warren/persistence/Repository;->access$000(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/vungle/warren/model/Placement;

    .line 811
    .local v5, "disk":Lccsancom/vungle/warren/model/Placement;
    if-eqz v5, :cond_2

    .line 812
    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v6

    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v7

    if-ne v6, v7, :cond_0

    .line 813
    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Placement;->isHeaderBidding()Z

    move-result v6

    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->isHeaderBidding()Z

    move-result v7

    if-eq v6, v7, :cond_2

    .line 817
    :cond_0
    invoke-static {}, Lccsancom/vungle/warren/persistence/Repository;->access$1300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Placements data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is different from disc, deleting old"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v6, p0, Lccsancom/vungle/warren/persistence/Repository$20;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lccsancom/vungle/warren/persistence/Repository;->access$1400(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 821
    .local v6, "adIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 822
    .local v8, "id":Ljava/lang/String;
    iget-object v9, p0, Lccsancom/vungle/warren/persistence/Repository$20;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    invoke-static {v9, v8}, Lccsancom/vungle/warren/persistence/Repository;->access$1000(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    .line 823
    .end local v8    # "id":Ljava/lang/String;
    goto :goto_1

    .line 825
    :cond_1
    iget-object v7, p0, Lccsancom/vungle/warren/persistence/Repository$20;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    const-class v8, Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lccsancom/vungle/warren/persistence/Repository;->access$1500(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Class;Ljava/lang/String;)V

    .line 830
    .end local v6    # "adIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    if-eqz v5, :cond_3

    .line 831
    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Placement;->getWakeupTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lccsancom/vungle/warren/model/Placement;->setWakeupTime(J)V

    .line 832
    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Placement;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v6

    invoke-virtual {v4, v6}, Lccsancom/vungle/warren/model/Placement;->setAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)V

    .line 836
    :cond_3
    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v4, v6}, Lccsancom/vungle/warren/model/Placement;->setValid(Z)V

    .line 838
    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->getMaxHbCache()I

    move-result v6

    const/high16 v7, -0x80000000

    if-ne v6, v7, :cond_5

    .line 839
    invoke-virtual {v4, v3}, Lccsancom/vungle/warren/model/Placement;->setValid(Z)V

    .line 842
    :cond_5
    iget-object v6, p0, Lccsancom/vungle/warren/persistence/Repository$20;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    invoke-static {v6, v4}, Lccsancom/vungle/warren/persistence/Repository;->access$200(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V

    .line 843
    .end local v4    # "placement":Lccsancom/vungle/warren/model/Placement;
    .end local v5    # "disk":Lccsancom/vungle/warren/model/Placement;
    goto/16 :goto_0

    .line 844
    .end local v1    # "contentValues":Lccsanandroid/content/ContentValues;
    :cond_6
    monitor-exit v0

    .line 845
    const/4 v0, 0x0

    return-object v0

    .line 844
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
