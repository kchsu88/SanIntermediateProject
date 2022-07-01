.class Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;
.super Lccsanandroid/widget/BaseAdapter;
.source "ListMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mExpandedIndex:I

.field final synthetic this$0:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;


# direct methods
.method public constructor <init>(Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    invoke-direct {p0}, Lccsanandroid/widget/BaseAdapter;-><init>()V

    .line 232
    const/4 p1, -0x1

    iput p1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 235
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    .line 236
    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 5

    .line 277
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->getExpandedItem()Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    .line 278
    .local v0, "expandedItem":Lccsanandroidx/appcompat/view/menu/MenuItemImpl;
    if-eqz v0, :cond_1

    .line 279
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    iget-object v1, v1, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 280
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/appcompat/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 281
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 282
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 283
    .local v4, "item":Lccsanandroidx/appcompat/view/menu/MenuItemImpl;
    if-ne v4, v0, :cond_0

    .line 284
    iput v3, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 285
    return-void

    .line 281
    .end local v4    # "item":Lccsanandroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 289
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/appcompat/view/menu/MenuItemImpl;>;"
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 290
    return-void
.end method

.method public getCount()I
    .locals 3

    .line 240
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 241
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/appcompat/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    iget v2, v2, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    sub-int/2addr v1, v2

    .line 242
    .local v1, "count":I
    iget v2, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-gez v2, :cond_0

    .line 243
    return v1

    .line 245
    :cond_0
    add-int/lit8 v2, v1, -0x1

    return v2
.end method

.method public getItem(I)Lccsanandroidx/appcompat/view/menu/MenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    .line 250
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 251
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/appcompat/view/menu/MenuItemImpl;>;"
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    iget v1, v1, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    add-int/2addr p1, v1

    .line 252
    iget v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    if-lt p1, v1, :cond_0

    .line 253
    add-int/lit8 p1, p1, 0x1

    .line 255
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 231
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 262
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Lccsanandroid/view/View;
    .param p3, "parent"    # Lccsanandroid/view/ViewGroup;

    .line 267
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 268
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    iget-object v1, v1, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mInflater:Lccsanandroid/view/LayoutInflater;

    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;

    iget v2, v2, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    invoke-virtual {v1, v2, p3, v0}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object p2

    .line 271
    :cond_0
    move-object v1, p2

    check-cast v1, Lccsanandroidx/appcompat/view/menu/MenuView$ItemView;

    .line 272
    .local v1, "itemView":Lccsanandroidx/appcompat/view/menu/MenuView$ItemView;
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lccsanandroidx/appcompat/view/menu/MenuView$ItemView;->initialize(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;I)V

    .line 273
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 294
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    .line 295
    invoke-super {p0}, Lccsanandroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 296
    return-void
.end method
