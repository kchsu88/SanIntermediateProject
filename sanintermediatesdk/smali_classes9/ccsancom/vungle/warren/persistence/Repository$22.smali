.class Lccsancom/vungle/warren/persistence/Repository$22;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/Repository;->saveAndApplyState(Lccsancom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
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

.field final synthetic val$advertisement:Lccsancom/vungle/warren/model/Advertisement;

.field final synthetic val$placementId:Ljava/lang/String;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/persistence/Repository;ILccsancom/vungle/warren/model/Advertisement;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 974
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/Repository$22;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iput p2, p0, Lccsancom/vungle/warren/persistence/Repository$22;->val$state:I

    iput-object p3, p0, Lccsancom/vungle/warren/persistence/Repository$22;->val$advertisement:Lccsancom/vungle/warren/model/Advertisement;

    iput-object p4, p0, Lccsancom/vungle/warren/persistence/Repository$22;->val$placementId:Ljava/lang/String;

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

    .line 974
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/Repository$22;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 977
    invoke-static {}, Lccsancom/vungle/warren/persistence/Repository;->access$1300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/vungle/warren/persistence/Repository$22;->val$state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for adv "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/persistence/Repository$22;->val$advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v2}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and pl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/persistence/Repository$22;->val$placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository$22;->val$advertisement:Lccsancom/vungle/warren/model/Advertisement;

    iget v1, p0, Lccsancom/vungle/warren/persistence/Repository$22;->val$state:I

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/model/Advertisement;->setState(I)V

    .line 982
    iget v0, p0, Lccsancom/vungle/warren/persistence/Repository$22;->val$state:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 998
    :pswitch_0
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository$22;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lccsancom/vungle/warren/persistence/Repository$22;->val$advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v2}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsancom/vungle/warren/persistence/Repository;->access$1000(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    goto :goto_0

    .line 992
    :pswitch_1
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository$22;->val$advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/model/Advertisement;->setPlacementId(Ljava/lang/String;)V

    .line 993
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository$22;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lccsancom/vungle/warren/persistence/Repository$22;->val$advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-static {v0, v2}, Lccsancom/vungle/warren/persistence/Repository;->access$200(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V

    .line 994
    goto :goto_0

    .line 986
    :pswitch_2
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository$22;->val$advertisement:Lccsancom/vungle/warren/model/Advertisement;

    iget-object v2, p0, Lccsancom/vungle/warren/persistence/Repository$22;->val$placementId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lccsancom/vungle/warren/model/Advertisement;->setPlacementId(Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository$22;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lccsancom/vungle/warren/persistence/Repository$22;->val$advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-static {v0, v2}, Lccsancom/vungle/warren/persistence/Repository;->access$200(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V

    .line 989
    nop

    .line 1001
    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
