.class Lccsanandroidx/recyclerview/widget/ItemTouchHelper$5;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Lccsanandroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->addChildDrawingOrderCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method constructor <init>(Lccsanandroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    .line 1294
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$5;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetChildDrawingOrder(II)I
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 1297
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$5;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Lccsanandroid/view/View;

    if-nez v0, :cond_0

    .line 1298
    return p2

    .line 1300
    :cond_0
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$5;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iget v0, v0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 1301
    .local v0, "childPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1302
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$5;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v1, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$5;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v2, v2, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Lccsanandroid/view/View;

    invoke-virtual {v1, v2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->indexOfChild(Lccsanandroid/view/View;)I

    move-result v0

    .line 1303
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$5;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iput v0, v1, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 1305
    :cond_1
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_2

    .line 1306
    return v0

    .line 1308
    :cond_2
    if-ge p2, v0, :cond_3

    move v1, p2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, p2, 0x1

    :goto_0
    return v1
.end method
